-- Create the Logs table
CREATE TABLE Logs (
    id INT IDENTITY(1,1) PRIMARY KEY,
    num INT
);

-- Populate the Logs table with example data
INSERT INTO Logs (num) VALUES 
(1), (1), (1), (2), (1), (2), (2);

select 
	l1.num
from 
	Logs l1
join logs l2 
	on l1.id + 1 = l2.id 
join 
	logs l3 on l2.id +1 = l3.id
where l1.num = l2.num 
	and l1.num =l3.num;
