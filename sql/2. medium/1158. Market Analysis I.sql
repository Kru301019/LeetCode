-- 1. Create Parent Tables (referenced by Orders)
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    join_date DATE,
    favorite_brand VARCHAR(255)
);

CREATE TABLE Items (
    item_id INT PRIMARY KEY,
    item_brand VARCHAR(255)
);

-- 2. Create Child Table (with Foreign Key constraints)
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    item_id INT,
    buyer_id INT,
    seller_id INT,
    CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES Items(item_id),
    CONSTRAINT fk_buyer FOREIGN KEY (buyer_id) REFERENCES Users(user_id),
    CONSTRAINT fk_seller FOREIGN KEY (seller_id) REFERENCES Users(user_id)
);

-- 1. Populate Parents
INSERT INTO Users VALUES (1, '2018-01-01', 'Lenovo'), (2, '2018-02-09', 'Samsung'), (3, '2018-01-19', 'LG'), (4, '2018-05-21', 'HP');
INSERT INTO Items VALUES (1, 'Samsung'), (2, 'Lenovo'), (3, 'LG'), (4, 'HP');

-- 2. Populate Child (Orders now refer to valid IDs from Users and Items)
INSERT INTO Orders VALUES 
(1, '2019-08-01', 4, 1, 2),
(2, '2018-08-02', 2, 1, 3),
(3, '2019-08-03', 3, 2, 3),
(4, '2018-08-04', 1, 4, 2),
(5, '2018-08-04', 1, 3, 4),
(6, '2019-08-05', 2, 2, 4);


select o.buyer_id, count(o.buyer_id) as order_count
from Orders o
where o.order_date >= '2019-01-01'
group by o.buyer_id;

SELECT u.user_id,
       u.join_date,
       CASE
         WHEN order_filterd.order_count IS NULL
         THEN 1
         ELSE order_filterd.order_count
       END AS order_count
FROM   Users u
       LEFT JOIN (SELECT   o.buyer_id,
                           Count(o.buyer_id) AS order_count
                  FROM     Orders o
                  WHERE    o.order_date >= '2019-01-01'
                  GROUP BY o.buyer_id) AS order_filterd
       ON u.user_id = order_filterd.buyer_id;


SELECT   u.user_id,
         u.join_date,
         Count(o.buyer_id) AS orders_in_2019
FROM     Orders o
         RIGHT JOIN Users u
         ON o.buyer_id = u.user_id
            AND o.order_date >= '2019-01-01'
GROUP BY u.user_id,
         u.join_date;