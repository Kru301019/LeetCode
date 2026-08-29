-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Populate the Customers table
INSERT INTO Customers (customer_id, name) VALUES 
    (1, 'Joe'),
    (2, 'Henry'),
    (3, 'Sam'),
    (4, 'Max');

-- Populate the Orders table
INSERT INTO Orders (order_id, customer_id) VALUES 
    (1, 3),
    (2, 1);

select * from Customers;
select * from Orders;

select c.name
from Customers C
left join Orders o on c.customer_id = o.customer_id
where o.customer_id is null;