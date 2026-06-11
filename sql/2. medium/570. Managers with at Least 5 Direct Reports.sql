-- Create the Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    managerId INT
);

-- Populate the Employee table
INSERT INTO Employee (id, name, department, managerId) VALUES 
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);

select e.managerId
from Employee e
group by e.managerId
having count(e.managerId) >= 5;

select 
	e.name
from 
	Employee e
join 
	(select e.managerId
	from Employee e
	group by e.managerId
	having count(e.managerId) >= 5) m on e.id = m.managerId ;