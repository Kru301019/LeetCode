CREATE TABLE Employee (
    id INTEGER,
    name VARCHAR(30),
    department VARCHAR(30),
    manager_id INTEGER
);

SELECT
    NAME
FROM
    EMPLOYEE
    JOIN (
        SELECT
            MANAGER_ID,
            COUNT(*)
        FROM
            EMPLOYEE
        GROUP BY
            MANAGER_ID
        HAVING
            COUNT(*) >= 5
    ) E ON EMPLOYEE.ID = E.MANAGER_ID

SELECT
    E1.name
FROM
    Employee E1
    INNER JOIN Employee E2 ON E1.id = E2.manager_id
GROUP BY
    E1.name
HAVING
    COUNT(E2.manager_id) >= 5


SELECT
    name
FROM
    Employee
WHERE
    id IN (
        SELECT
            manager_id
        FROM
            Employee
        GROUP BY
            manager_id
        HAVING
            COUNT(manager_id) >= 5
    )

Input: 
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
Output: 
+------+
| name |
+------+
| John |
+------+
