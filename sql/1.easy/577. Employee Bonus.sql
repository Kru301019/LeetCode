create table Employee(
    empId int primary key,
    name varchar(255),
    supervisor int,
    salary int
);

create table bonus (
    empId int,
    bonus int,
    foreign key(empId) references Employee(empId)
);

INSERT INTO Employee (empId, name, supervisor, salary) VALUES
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);

INSERT INTO Bonus (empId, bonus) VALUES
(2, 500),
(4, 2000);

SELECT e.name, b.bonus
from Employee e
left join bonus b on e.empId = b.empId
where b.bonus < 1000 or b.bonus is null;


+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |
+-------------+---------+

+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| bonus       | int  |
+-------------+------+