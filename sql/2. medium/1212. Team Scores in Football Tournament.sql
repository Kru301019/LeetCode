-- Creating Tables
CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(50)
);

CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    host_team INT,
    guest_team INT,
    host_goals INT,
    guest_goals INT
);

-- Populating Teams
INSERT INTO Teams VALUES 
(10, 'Leetcode FC'), (20, 'NewYork FC'), (30, 'Atlanta FC'), 
(40, 'Chicago FC'), (50, 'Toronto FC');

-- Populating Matches
INSERT INTO Matches VALUES 
(1, 10, 20, 3, 0),
(2, 30, 10, 2, 2),
(3, 10, 50, 5, 1),
(4, 20, 30, 1, 0),
(5, 50, 30, 1, 0);

SELECT   t.team_id,
         t.team_name,
         Isnull(Sum(mergedDates.point), 0) AS num_points
FROM     (SELECT m.host_team,
                 m.host_goals,
                 m.guest_goals,
                 CASE
                   WHEN m.host_goals > m.guest_goals
                   THEN 3
                   WHEN m.host_goals = m.guest_goals
                   THEN 1
                   ELSE 0
                 END AS point
          FROM   Matches m
          UNION
          SELECT m1.guest_team,
                 m1.host_goals,
                 m1.guest_goals,
                 CASE
                   WHEN m1.host_goals < m1.guest_goals
                   THEN 3
                   WHEN m1.host_goals = m1.guest_goals
                   THEN 1
                   ELSE 0
                 END AS point
          FROM   Matches m1) AS mergedDates
         RIGHT JOIN Teams t
         ON t.team_id = mergedDates.host_team
GROUP BY t.team_id,
         t.team_name
ORDER BY num_points DESC;