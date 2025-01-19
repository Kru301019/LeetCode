create table Weather_table(
    id serial primary key,
    recordDate date unique,
    temperature int 
);

insert into Weather_table (recordDate, temperature) values
('2015-01-01' , 10),
('2015-01-02' , 25),
('2015-01-03' , 20),
('2015-01-04' , 30);

select p.id
from Weather_table as c
join Weather_table as p on c.recordDate = p.recordDate - interval '1 day'
where p.temperature > c.temperature;

