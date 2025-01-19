create table Employees(
    id int primary key,
    name varchar(255)
);

create table EmployeeUNI(
    id INT,
    unique_id INT,
    PRIMARY KEY (id, unique_id)
);

insert into Employees(id, name) VALUES 
(1, 'Alice '),
(7,'Bob'),
(11,'Meir'),
(90,'Winston'),
(3,'Jonathan');

INSERT INTO EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);

select EU.unique_id, E.name
from EmployeeUNI as EU
right join Employees as E ON E.id = Eu.id;
