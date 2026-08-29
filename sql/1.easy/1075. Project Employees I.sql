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
    experience_years INT NOT NULL
);

-- Insert data into Project table
INSERT INTO Project (project_id, employee_id) VALUES (1, 1);
INSERT INTO Project (project_id, employee_id) VALUES (1, 2);
INSERT INTO Project (project_id, employee_id) VALUES (1, 3);
INSERT INTO Project (project_id, employee_id) VALUES (2, 1);
INSERT INTO Project (project_id, employee_id) VALUES (2, 4);

-- Insert data into Employee table
INSERT INTO Employee (employee_id, name, experience_years) VALUES (1, 'Khaled', 3);
INSERT INTO Employee (employee_id, name, experience_years) VALUES (2, 'Ali', 2);
INSERT INTO Employee (employee_id, name, experience_years) VALUES (3, 'John', 1);
INSERT INTO Employee (employee_id, name, experience_years) VALUES (4, 'Doe', 2);

SELECT 
    p.project_id, 
    CAST(ROUND(AVG(CAST(e.experience_years AS FLOAT)), 2) AS DECIMAL(10, 2)) AS average_years
FROM 
    Project p
JOIN 
    Employee e ON p.employee_id = e.employee_id
GROUP BY 
    p.project_id;