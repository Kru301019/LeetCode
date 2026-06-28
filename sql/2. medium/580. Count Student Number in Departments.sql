-- Create Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(255)
);

-- Create Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    gender VARCHAR(1),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Populate Department table
INSERT INTO Department VALUES 
(1, 'Engineering'), (2, 'Science'), (3, 'Law');

-- Populate Student table
INSERT INTO Student VALUES 
(1, 'Jack', 'M', 1), (2, 'Jane', 'F', 1), (3, 'Mark', 'M', 2);


SELECT   d.dept_name,
         Count(s.dept_id) AS student_number
FROM     Student s
         RIGHT JOIN Department d
         ON s.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY student_number DESC;