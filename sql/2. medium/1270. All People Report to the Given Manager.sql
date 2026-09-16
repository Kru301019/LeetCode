-- Create table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

-- Populate data
INSERT INTO Employees (employee_id, employee_name, manager_id) VALUES
(1, 'Boss', 1),
(3, 'Alice', 3),
(2, 'Bob', 1),
(4, 'Daniel', 2),
(7, 'Luis', 4),
(8, 'Jhon', 3),
(9, 'Angela', 8),
(77, 'Robert', 1);

SELECT e1.employee_id
FROM   employees e1
       JOIN employees e2
         ON e1.manager_id = e2.employee_id
       JOIN employees e3
         ON e2.manager_id = e3.employee_id
WHERE  e3.manager_id = 1
       AND e1.employee_id != 1;  