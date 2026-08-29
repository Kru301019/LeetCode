-- Create the Employee table
CREATE TABLE Employee (
    empId INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    supervisor INT,
    salary INT
);

-- Create the Bonus table
CREATE TABLE Bonus (
    empId INT PRIMARY KEY,
    bonus INT,
    FOREIGN KEY (empId) REFERENCES Employee(empId)
);

-- Populate the Employee table with the example data
INSERT INTO Employee (empId, name, supervisor, salary) VALUES 
    (3, 'Brad', NULL, 4000),
    (1, 'John', 3, 1000),
    (2, 'Dan', 3, 2000),
    (4, 'Thomas', 3, 4000);

-- Populate the Bonus table with the example data
INSERT INTO Bonus (empId, bonus) VALUES 
    (2, 500),
    (4, 2000);


select name, bonus
from Employee
left join Bonus on Employee.empId = bonus.empId
where bonus is null or bonus < 1000;