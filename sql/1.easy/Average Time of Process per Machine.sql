create Type activity_type as ENUM('start', 'end');

create table Activity (
    machine_id int,
    process_id int,
    activity_type activity_type,
    timestamp FLOAT,
    primary key (machine_id, process_id, activity_type)
);

INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.520),
(0, 1, 'start', 3.140),
(0, 1, 'end', 4.120),
(1, 0, 'start', 0.550),
(1, 0, 'end', 1.550),
(1, 1, 'start', 0.430),
(1, 1, 'end', 1.420),
(2, 0, 'start', 4.100),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.500),
(2, 1, 'end', 5.000);

SELECT 
    a1.machine_id,a2.machine_id
  
FROM 
    activity a1
JOIN 
    activity a2 ON a1.machine_id = a2.machine_id 
                AND a1.process_id = a2.process_id
                AND a1.activity_type = 'start'
                AND a2.activity_type = 'end'
GROUP BY 
    a1.machine_id, a2.machine_id;


WITH ProcessTimes AS (
    SELECT 
        machine_id,
        process_id,
        MAX(timestamp) FILTER (WHERE activity_type = 'end') - 
        MAX(timestamp) FILTER (WHERE activity_type = 'start') AS processing_time
    FROM 
        Activity
    GROUP BY 
        machine_id, process_id
)
SELECT 
    machine_id,
    ROUND(AVG(processing_time)::numeric, 3) AS processing_time
FROM 
    ProcessTimes
GROUP BY 
    machine_id;

