-- Create the Activity table
CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date)
);

-- Populate the Activity table
INSERT INTO Activity (player_id, device_id, event_date, games_played) VALUES 
(1, 2, '2016-03-01', 5),
(1, 2, '2016-05-02', 6),
(1, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5);

select 
	player_id,
	device_id,
	event_date,
	sum(games_played) over(PARTITION by player_id order by event_date) as running_total
from Activity; 


select 
	a1.player_id,a1.event_date, sum(a1.games_played)
from 
	Activity a1
join
	Activity a2 on a1.player_id = a2.player_id
where 
	a1.event_date >= a2.event_date
group by
	a1.player_id,a1.event_date
order by
	a1.player_id;