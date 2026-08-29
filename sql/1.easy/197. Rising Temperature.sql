-- Create the Weather table
CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE NOT NULL,
    temperature INT NOT NULL
);

-- Populate the Weather table with the example data
INSERT INTO Weather (id, recordDate, temperature) VALUES 
    (1, '2015-01-01', 10),
    (2, '2015-01-02', 25),
    (3, '2015-01-03', 20),
    (4, '2015-01-04', 30);

select w1.id
from Weather w1
join Weather w2 on w1.recordDate = DATEADD(day, 1,w2.recordDate)
where w1.temperature > w2.temperature;


