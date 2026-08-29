CREATE TABLE employee_salary_components (
    emp_id INT,
    salary_component_type VARCHAR(50),
    val DECIMAL(18, 2)
);

INSERT INTO employee_salary_components (emp_id, salary_component_type, val) VALUES
(1, 'salary', 10000),
(1, 'bonus', 5000),
(1, 'hike_percent', 10),
(2, 'salary', 15000),
(2, 'bonus', 7000),
(2, 'hike_percent', 8),
(3, 'salary', 12000),
(3, 'bonus', 6000),
(3, 'hike_percent', 7);

SELECT 
    emp_id,
    SUM(CASE WHEN salary_component_type = 'salary' THEN val END) AS salary,
    SUM(CASE WHEN salary_component_type = 'bonus' THEN val END) AS bonus,
    SUM(CASE WHEN salary_component_type = 'hike_percent' THEN val END) AS hike_percent
INTO employee_salary_summary
FROM employee_salary_components
GROUP BY emp_id;

SELECT emp_id, salary_component_type, val
FROM employee_salary_summary
UNPIVOT (
    val FOR salary_component_type IN (salary, bonus, hike_percent)
) AS unpvt;
