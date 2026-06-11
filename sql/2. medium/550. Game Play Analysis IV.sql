-- Create the Activity table
CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date)
);

-- Populate the Activity table with sample data
INSERT INTO Activity (player_id, device_id, event_date, games_played) VALUES 
(1, 2, '2016-03-01', 5),
(1, 2, '2016-03-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5);

with 
	ct1_1 as (
select 
	a1.player_id
from 
	Activity a1
join
	Activity a2 on a1.event_date = DATEADD(DAY, 1, a2.event_date)
	and a1.player_id = a2.player_id)
select 
	ROUND(CAST(ct1_1.player_id as float)/(select top 1 max(player_id) 
from Activity 
group by player_id
order by player_id desc),2) as franction
from 
	ct1_1;

