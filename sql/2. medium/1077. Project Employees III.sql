-- Create the Project table
CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id)
);

-- Create the Employee table
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    experience_years INT
);

-- Populate the Project table
INSERT INTO Project (project_id, employee_id) VALUES 
(1, 1), (1, 2), (1, 3), (2, 1), (2, 4);

-- Populate the Employee table
INSERT INTO Employee (employee_id, name, experience_years) VALUES 
(1, 'Khaled', 3), (2, 'Ali', 2), (3, 'John', 3), (4, 'Doe', 2);

SELECT sub.project_id,
       sub.employee_id
FROM   (SELECT p.project_id,
               p.employee_id,
               e.experience_years,
               Dense_rank() OVER(PARTITION BY p.project_id ORDER BY e.experience_years DESC) AS ranking
        FROM   Project p
               JOIN Employee e
               ON p.employee_id = e.employee_id) AS sub
WHERE  sub.ranking = 1;

