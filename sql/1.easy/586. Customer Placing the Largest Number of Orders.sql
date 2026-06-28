-- Create the Orders table
CREATE TABLE Orders (
    order_number INT PRIMARY KEY,
    customer_number INT
);

-- Insert the example records
INSERT INTO Orders (order_number, customer_number) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 3);

select top 1 o.customer_number
from Orders o
group by o.customer_number
order by o.customer_number desc