-- Create the Customer table
CREATE TABLE Customer (
    customer_id INT,
    product_key INT
);

-- Create the Product table
CREATE TABLE Product (
    product_key INT PRIMARY KEY
);

-- Populate the Customer table
INSERT INTO Customer (customer_id, product_key) VALUES 
(1, 5),
(2, 6),
(3, 5),
(3, 6),
(1, 6);

-- Populate the Product table
INSERT INTO Product (product_key) VALUES 
(5),
(6);

select  c.customer_id
from Customer c
group by c.customer_id
having count(DISTINCT c.product_key) = (select count(*) from Product)



