-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- Populate Customers Data
INSERT INTO Customers (customer_id, customer_name, city) VALUES
(1, 'Aditi Sharma', 'Delhi'),
(2, 'Rahul Verma', 'Mumbai'),
(3, 'Simran Kaur', 'Chandigarh'),
(4, 'Arjun Nair', 'Bengaluru');

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Populate Orders Data
INSERT INTO Orders (order_id, customer_id, amount, status) VALUES
(501, 1, 2400, 'Delivered'),
(502, 1, 3200, 'Delivered'),
(503, 2, 1800, 'Delivered'),
(504, 2, 4100, 'Pending'),
(505, 3, 950, 'Cancelled');

SELECT o.*,
       c.customer_name
FROM   Orders o
       JOIN Customers c
       ON o.customer_id = c.customer_id;

select C.customer_id, c.customer_name
from Orders o
right join Customers c on o.customer_id = c.customer_id
where o.customer_id is NULL;

SELECT *
FROM   (SELECT *,
               Row_number() OVER(PARTITION BY o.customer_id ORDER BY o.customer_id) AS rank_column
        FROM   Orders o) AS sub_query
WHERE  sub_query.rank_column != 1;