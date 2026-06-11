-- Create the Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    salary INT
);

-- Populate the table with sample data
-- Including duplicates to test the 'DISTINCT' requirement
INSERT INTO Employee (id, salary) VALUES 
(1, 100),
(2, 200),
(3, 300),
(4, 300), -- Duplicate salary to ensure logic handles distinct values
(5, 400);

-- Replace 2 with whatever N you are testing
DECLARE @n INT = 2;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
OFFSET @n - 1 ROWS FETCH NEXT @n ROWS ONLY;