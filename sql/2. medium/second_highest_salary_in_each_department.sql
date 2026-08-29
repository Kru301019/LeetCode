create table emp( emp_id int, emp_name varchar(20), department_id int, salary int, manager_id int, emp_age int); INSERT INTO emp ( emp_id, emp_name, department_id, salary, manager_id, emp_age ) VALUES (1, 'Ankit', 100, 10000, 4, 39), (2, 'Mohit', 100, 15000, 5, 48), (3, 'Vikas', 100, 10000, 4, 37), (4, 'Rohit', 100, 5000, 2, 16), (5, 'Mudit', 200, 12000, 6, 55), (6, 'Agam', 200, 12000, 2, 14), (7, 'Sanjay', 200, 9000, 2, 13), (8, 'Ashish', 200, 5000, 2, 12), (9, 'Mukesh', 300, 6000, 6, 51), (10, 'Rakesh', 300, 7000, 6, 50);

-- Create the department table
CREATE TABLE dept (
    department_id INT,
    department_name VARCHAR(50)
);

-- Insert sample data
INSERT INTO dept (department_id, department_name) VALUES
(100, 'HR'),
(200, 'Finance'),
(300, 'IT'),
(400, 'Marketing'); -- No employees belong to this department yet

SELECT *
FROM   (SELECT *,
               Dense_rank() OVER(PARTITION BY e.department_id ORDER BY e.salary DESC) AS salary_rank
        FROM   emp e) outer_q
WHERE  outer_q.salary_rank = 2;


