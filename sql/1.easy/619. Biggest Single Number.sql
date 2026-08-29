-- Create the MyNumbers table
CREATE TABLE MyNumbers (
    num INT
);

-- Populate the MyNumbers table with the example data
INSERT INTO MyNumbers (num) VALUES 
(8), (8), (3), (3), (1), (4), (5), (6);

select *
from (
select num, count(*) over (PARTITION by num) as cnt
from MyNumbers ) as t
where t.cnt = 1
order by t.num desc;