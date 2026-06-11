-- Create the RequestAccepted table
CREATE TABLE RequestAccepted (
    requester_id INT,
    accepter_id INT,
    accept_date DATE,
    PRIMARY KEY (requester_id, accepter_id)
);

-- Populate the RequestAccepted table
INSERT INTO RequestAccepted (requester_id, accepter_id, accept_date) VALUES 
(1, 2, '2016-06-03'),
(1, 3, '2016-06-08'),
(2, 3, '2016-06-08'),
(3, 4, '2016-06-09');

with cte_one as (
select r1.requester_id from RequestAccepted r1
union all
select r2.accepter_id from RequestAccepted r2)

select top 1 cte_one.requester_id, count(*) as friends
from cte_one
group by cte_one.requester_id
order by friends desc;