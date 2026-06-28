-- Create the Queue table
CREATE TABLE Queue (
    person_id INT PRIMARY KEY,
    person_name VARCHAR(100),
    weight INT,
    turn INT
);

-- Populate the table with the provided data
INSERT INTO Queue (person_id, person_name, weight, turn) VALUES 
(5, 'Alice', 250, 1),
(4, 'Bob', 175, 5),
(3, 'Alex', 350, 2),
(6, 'John Cena', 400, 3),
(1, 'Winston', 500, 6),
(2, 'Marie', 200, 4)

SELECT top 1 outer_q.person_name
FROM   (SELECT q.person_name,
               q.person_id,
               q.turn,
               Sum(q.weight) OVER(ORDER BY q.turn) AS running_total
        FROM   Queue q) AS outer_q
WHERE  outer_q.running_total <= 1000
order by outer_q.running_total desc;