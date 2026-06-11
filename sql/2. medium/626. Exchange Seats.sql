-- Create the Seat table
CREATE TABLE Seat (
    id INT PRIMARY KEY,
    student VARCHAR(255)
);

-- Populate the Seat table with example data
INSERT INTO Seat (id, student) VALUES 
(1, 'Abbot'),
(2, 'Doris'),
(3, 'Emerson'),
(4, 'Green'),
(5, 'Jeames');

select 
	case
		when id % 2 = 0 then id - 1
		when id % 2 != 0 and id < (select count(*) from seat) then id + 1
		else id
	end as id,
	student
from Seat
order by id;

