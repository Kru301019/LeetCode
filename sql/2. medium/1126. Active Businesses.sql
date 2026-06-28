-- Create Events table
CREATE TABLE Events (
    business_id INT,
    event_type VARCHAR(20),
    occurrences INT,
    PRIMARY KEY (business_id, event_type)
);

-- Populate Events table
INSERT INTO Events VALUES 
(1, 'reviews', 7), (3, 'reviews', 3), 
(1, 'ads', 11), (2, 'ads', 7), (3, 'ads', 6), 
(1, 'page views', 3), (2, 'page views', 12);



SELECT   e0.business_id
FROM     Events e0
         JOIN (SELECT   e.event_type,
                        Cast(Round(Sum(e.occurrences) * 1.0 / Count(e.occurrences), 1, 1) AS DECIMAL(18,1)) AS total_occurrences
               FROM     Events e
               GROUP BY e.event_type) e1
         ON e0.event_type = e1.event_type
            AND e0.occurrences > e1.total_occurrences
GROUP BY e0.business_id
HAVING   Count(e0.business_id) > 1;

SELECT   e_outside.business_id
FROM     (SELECT e.business_id,
                 e.event_type,
                 e.occurrences,
                 Avg(e.occurrences) OVER(PARTITION BY e.event_type) AS avg_occurrences
          FROM   Events e) AS e_outside
WHERE    e_outside.occurrences > e_outside.avg_occurrences
GROUP BY e_outside.business_id
HAVING   Count(e_outside.business_id) > 1;

