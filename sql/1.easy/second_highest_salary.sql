-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT NULL
);

-- Populate Data
INSERT INTO Employees (employee_id, employee_name, department, salary, manager_id) VALUES
(101, 'Aarav', 'Engineering', 95000, 105),
(102, 'Meera', 'Engineering', 72000, 105),
(103, 'Kabir', 'Sales', 65000, 106),
(104, 'Isha', 'Sales', 92000, 106),
(105, 'Rohan', 'Engineering', 90000, NULL),
(106, 'Neha', 'Sales', 88000, NULL);

WITH Cte AS (
    SELECT 
        salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) AS Ranked_salary
    FROM employees
) 
SELECT DISTINCT salary
FROM Cte
WHERE Ranked_salary = 2;


select  *
from employees e
order by e.salary desc
offset 2 rows
fetch next 10 rows only;