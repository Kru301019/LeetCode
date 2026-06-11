-- Create the Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    salary INT
);

-- Populate the Employee table with example data
INSERT INTO Employee (id, salary) VALUES 
(1, 100),
(2, 200),
(3, 300);

select 
	(select DISTINCT salary 
	from Employee 
	order by salary desc
	OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY) secondHighest;

