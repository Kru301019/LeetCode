-- Create the Salary table
CREATE TABLE Salary (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    sex CHAR(1), -- Using CHAR(1) to represent the ENUM('m', 'f')
    salary INT
);

-- Populate the Salary table with the example data
INSERT INTO Salary (id, name, sex, salary) VALUES 
(1, 'A', 'm', 2500),
(2, 'B', 'f', 1500),
(3, 'C', 'm', 5500),
(4, 'D', 'f', 500);


update Salary
		set sex = case 
			when sex = 'm' then 'f'
			else 'm'
		end 
from Salary;