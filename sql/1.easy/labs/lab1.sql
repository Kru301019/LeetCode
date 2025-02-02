
--LAB 1 DB
-- Customers Table
CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_first_name VARCHAR(50) NOT NULL,
    cust_last_name VARCHAR(50) NOT NULL,
    cust_addr_1 VARCHAR(60) NOT NULL,
    cust_addr_2 VARCHAR(60),
    cust_city VARCHAR(30) NOT NULL,
    cust_postcode CHAR(8) NOT NULL,
    cust_phone VARCHAR(15) UNIQUE NOT NULL,
    cust_email VARCHAR(100) UNIQUE NOT NULL
);

-- Products Table
CREATE TABLE products (
    prod_id SERIAL PRIMARY KEY,
    prod_name VARCHAR(50) NOT NULL,
    prod_price DECIMAL(10, 2) NOT NULL CHECK (prod_price > 0)
);

-- Orders Table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    cust_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers (cust_id)
);

-- OrderDetails Table
CREATE TABLE order_details (
    order_detail_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL,
    prod_id INT NOT NULL,
    order_qty INT NOT NULL CHECK (order_qty > 0),
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (prod_id) REFERENCES products (prod_id)
);

-- Reviews Table
CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    prod_id INT NOT NULL,
    cust_id INT NOT NULL,
    review_date DATE NOT NULL,
    review_text VARCHAR(500),
    review_rating INT CHECK (review_rating BETWEEN 1 AND 5),
    FOREIGN KEY (prod_id) REFERENCES products (prod_id),
    FOREIGN KEY (cust_id) REFERENCES customers (cust_id)
);

-- Insert Data
-- Customers
INSERT INTO customers (cust_first_name, cust_last_name, cust_addr_1, cust_addr_2, cust_city, cust_postcode, cust_phone, cust_email)
VALUES 
('Alice', 'Smith', '123 Maple Street', NULL, 'Springfield', 'SP1 2AB', '555-123-4567', 'alice.smith@example.com'),
('Bob', 'Jones', '456 Oak Avenue', 'Apt 12', 'Riverdale', 'RV2 3CD', '555-234-5678', 'bob.jones@example.com'),
('Charlie', 'Brown', '789 Birch Lane', NULL, 'Greendale', 'GR3 4EF', '555-345-6789', 'charlie.brown@example.com'),
('Diana', 'Prince', '101 Pine Crescent', 'Unit 5', 'Metropolis', 'MT4 5GH', '555-456-7890', 'diana.prince@example.com'),
('Edward', 'Teach', '202 Cedar Road', NULL, 'Blackbeard Bay', 'BB6 7IJ', '555-567-8901', 'edward.teach@example.com');

-- Products
INSERT INTO products (prod_name, prod_price)
VALUES 
('Laptop', 1200.00),
('Mouse', 25.00),
('Keyboard', 45.00),
('Monitor', 300.00),
('Webcam', 80.00),
('Smartwatch', 250.00);

-- Orders
INSERT INTO orders (cust_id, order_date)
VALUES 
(1, '2025-01-01'),
(2, '2025-01-02'),
(3, '2025-01-03'),
(4, '2025-01-04');

-- OrderDetails
INSERT INTO order_details (order_id, prod_id, order_qty)
VALUES 
(1, 1, 1), -- Laptop for Alice
(1, 2, 2), -- Mouse for Alice
(2, 3, 1), -- Keyboard for Bob
(2, 4, 1), -- Monitor for Bob
(3, 5, 1), -- Webcam for Charlie
(4, 1, 2); -- Laptop for Diana

-- Reviews
INSERT INTO reviews (prod_id, cust_id, review_date, review_text, review_rating)
VALUES 
(1, 1, '2025-01-05', 'Amazing laptop, very fast!', 5),
(2, 1, '2025-01-06', 'Great mouse, fits well in hand.', 4),
(3, 2, '2025-01-07', 'Keyboard is decent for the price.', 3),
(5, 3, '2025-01-08', 'Webcam works well in low light.', 4),
(4, 4, '2025-01-09', 'Monitor resolution is fantastic.', 5);

cust_id | cust_first_name | cust_last_name |    cust_addr_1    | cust_addr_2 |   cust_city    | cust_postcode |  cust_phone  |        cust_email         
---------+-----------------+----------------+-------------------+-------------+----------------+---------------+--------------+---------------------------
       1 | Alice           | Smith          | 123 Maple Street  |             | Springfield    | SP1 2AB       | 555-123-4567 | alice.smith@example.com
       2 | Bob             | Jones          | 456 Oak Avenue    | Apt 12      | Riverdale      | RV2 3CD       | 555-234-5678 | bob.jones@example.com
       3 | Charlie         | Brown          | 789 Birch Lane    |             | Greendale      | GR3 4EF       | 555-345-6789 | charlie.brown@example.com
       4 | Diana           | Prince         | 101 Pine Crescent | Unit 5      | Metropolis     | MT4 5GH       | 555-456-7890 | diana.prince@example.com
       5 | Edward          | Teach          | 202 Cedar Road    |             | Blackbeard Bay | BB6 7IJ       | 555-567-8901 | edward.teach@example.com

 order_id | cust_id | order_date 
----------+---------+------------
        1 |       1 | 2025-01-01
        2 |       2 | 2025-01-02
        3 |       3 | 2025-01-03
        4 |       4 | 2025-01-04
(4 rows)

 order_detail_id | order_id | prod_id | order_qty 
-----------------+----------+---------+-----------
               1 |        1 |       1 |         1
               2 |        1 |       2 |         2
               3 |        2 |       3 |         1
               4 |        2 |       4 |         1
               5 |        3 |       5 |         1
               6 |        4 |       1 |         2
(6 rows)

 prod_id | prod_name  | prod_price 
---------+------------+------------
       1 | Laptop     |    1200.00
       2 | Mouse      |      25.00
       3 | Keyboard   |      45.00
       4 | Monitor    |     300.00
       5 | Webcam     |      80.00
       6 | Smartwatch |     250.00
(6 rows)

 review_id | prod_id | cust_id | review_date |            review_text            | review_rating 
-----------+---------+---------+-------------+-----------------------------------+---------------
         1 |       1 |       1 | 2025-01-05  | Amazing laptop, very fast!        |             5
         2 |       2 |       1 | 2025-01-06  | Great mouse, fits well in hand.   |             4
         3 |       3 |       2 | 2025-01-07  | Keyboard is decent for the price. |             3
         4 |       5 |       3 | 2025-01-08  | Webcam works well in low light.   |             4
         5 |       4 |       4 | 2025-01-09  | Monitor resolution is fantastic.  |             5
(5 rows)

SELECT r.cust_id, 
       CONCAT(c.cust_first_name, ' ', c.cust_last_name) AS full_name,
       p.prod_name
FROM reviews r
JOIN customers c ON r.cust_id = c.cust_id
JOIN products p ON r.prod_id = p.prod_id
LEFT JOIN (
    SELECT DISTINCT o.cust_id, od.prod_id
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
) AS purchased ON r.cust_id = purchased.cust_id AND r.prod_id = purchased.prod_id
WHERE purchased.cust_id IS NULL;




SELECT
    P.prod_name,
    COALESCE(TO_CHAR(AVG(R.review_rating), 'FM99.0'), 'N/A') AS product_average
FROM
    products P
    LEFT JOIN reviews R USING(prod_id)
GROUP BY
    P.prod_name
ORDER BY
    product_average DESC;




WITH customers_review AS (
    SELECT
        C.cust_id,
        C.cust_first_name,
        P.prod_name
    FROM
        customers C
        JOIN Orders O USING(cust_id)
        JOIN order_details OD USING(order_id)
        JOIN products P USING(prod_id)
    WHERE
        P.prod_name = 'Laptop'
)
SELECT
    CR.cust_id,
    CR.cust_first_name,
    R.review_text
FROM
    customers_review AS CR
    JOIN reviews R USING(cust_id);

   




SELECT
    O.order_id,
    C.cust_first_name,
    O.order_date
FROM
    orders O
    JOIN customers C USING(cust_id)
WHERE
    O.order_date > '2025-01-01';

SELECT
    C.cust_first_name || ' ' || C.cust_last_name AS cust_with_no_review
FROM
    customers C
    LEFT JOIN reviews AS R USING(cust_id)
WHERE
    R.cust_id IS NULL;


SELECT
    C.cust_first_name ||' '|| C.cust_last_name AS customer_full_name,
    P.prod_name
FROM
    orders O
    RIGHT JOIN customers C ON O.cust_id = C.cust_id
    LEFT JOIN order_details AS OD ON O.order_id = OD.order_id
    LEFT JOIN products AS P ON P.prod_id = OD.prod_id;


SELECT
    C.cust_first_name,
    '£' || COALESCE(Sum(P.prod_price), 0) AS total_spent
FROM
    orders O
    RIGHT JOIN customers C ON O.cust_id = C.cust_id
    LEFT JOIN order_details AS OD ON O.order_id = OD.order_id
    LEFT JOIN products AS P ON P.prod_id = OD.prod_id
group by C.cust_first_name
order by C.cust_first_name;

SELECT
    P.prod_id,
    P.prod_name,
    COALESCE(SUM(O.order_qty), 0) AS total_quantity_sold
FROM
    order_details AS O
    RIGHT JOIN products P USING(prod_id)
GROUP BY
    P.prod_id, P.prod_name
order by prod_id;
