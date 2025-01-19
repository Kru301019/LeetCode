create table product(
    product_id int primary key,
    product_name varchar(255)
);

create table sales(
    sale_id int,
    product_id int,
    year int,
    quantity int,
    price int,
    primary key(sale_id, year),
    foreign key(product_id) references product(product_id)
);
INSERT INTO Product (product_id, product_name) VALUES
    (100, 'Nokia'),
    (200, 'Apple'),
    (300, 'Samsung');

-- Insert data into the Sales table
INSERT INTO Sales (sale_id, product_id, year, quantity, price) VALUES
    (1, 100, 2008, 10, 5000),
    (2, 100, 2009, 12, 5000),
    (7, 200, 2011, 15, 9000);

select p.product_name, s.year, s.price
from sales as s
join product as p on s.product_id = p.product_id;
 
Sales table:
+---------+------------+------+----------+-------+
| sale_id | product_id | year | quantity | price |
+---------+------------+------+----------+-------+ 
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |
+---------+------------+------+----------+-------+
Product table:
+------------+--------------+
| product_id | product_name |
+------------+--------------+
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |
+------------+--------------+
Output: 
+--------------+-------+-------+
| product_name | year  | price |
+--------------+-------+-------+
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |
+--------------+-------+-------+
Explanation: 
From sale_id = 1, we can conclude that Nokia was sold for 5000 in the year 2008.
From sale_id = 2, we can conclude that Nokia was sold for 5000 in the year 2009.
From sale_id = 7, we can conclude that Apple was sold for 9000 in the year 2011.