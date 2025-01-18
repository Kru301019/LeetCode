CREATE DATABASE leetCode

CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY, 
    low_fats CHAR(1) CHECK (low_fats IN ('Y', 'N')),
    recyclable CHAR(1) CHECK (recyclable IN ('Y', 'N')) 
);

INSERT INTO Products (low_fats, recyclable)
VALUES
('Y', 'N'),
('Y', 'Y'),
('N', 'Y'),
('Y', 'Y'),
('N', 'N');

select product_id
FROM Products
where low_fats ='Y' AND recyclable ='N';