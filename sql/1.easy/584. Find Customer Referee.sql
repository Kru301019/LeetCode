-- Create the Customer table
CREATE TABLE Customer (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    referee_id INT
);

-- Populate the Customer table with the example data
INSERT INTO Customer (id, name, referee_id) VALUES 
    (1, 'Will', NULL),
    (2, 'Jane', NULL),
    (3, 'Alex', 2),
    (4, 'Bill', NULL),
    (5, 'Zack', 1),
    (6, 'Mark', 2);

select c.name
from Customer c
where c.referee_id != 2 or c.referee_id  is null;