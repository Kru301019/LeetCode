-- Create the Department table
CREATE TABLE Department (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary INT,
    departmentId INT,
    FOREIGN KEY (departmentId) REFERENCES Department(id)
);

-- Populate the Department table
INSERT INTO Department (id, name) VALUES 
(1, 'IT'), 
(2, 'Sales');

-- Populate the Employee table
INSERT INTO Employee (id, name, salary, departmentId) VALUES 
(1, 'Joe', 70000, 1),
(2, 'Jim', 90000, 1),
(3, 'Henry', 80000, 2),
(4, 'Sam', 60000, 2),
(5, 'Max', 90000, 1);



select
	d.name,
	s_q.name,
	s_q.salary
from 
	 (select
	id,
	name,
	salary,
	departmentId,
	DENSE_RANK() over(PARTITION BY departmentId order by salary desc) as salary_rank
from 
	Employee e) as s_q 
join
	Department d on d.id = s_q.departmentId
where
	salary_rank = 1 ;





