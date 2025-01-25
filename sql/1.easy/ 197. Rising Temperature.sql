CREATE TABLE Weather_table( id serial primary key, recordDate date unique, temperature int );
INSERT INTO Weather_table (recordDate, temperature) values ('2015-01-01' , 10), ('2015-01-02' , 25), ('2015-01-03' , 20), ('2015-01-04' , 30);

SELECT  p.id
FROM Weather_table AS c
JOIN Weather_table AS p
ON c.recordDate = p.recordDate - interval '1 day'
WHERE p.temperature > c.temperature;