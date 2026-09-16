-- Create table
CREATE TABLE Logs (
    log_id INT PRIMARY KEY
);

-- Populate data
INSERT INTO Logs (log_id) VALUES
(1),
(2),
(3),
(7),
(8),
(10);

SELECT Min(S_Q.log_id) AS start_id,
       Max(S_Q.log_id) AS end_id
FROM   (SELECT log_id,
               log_id - Row_number()
                          OVER(
                            ORDER BY log_id) AS PID
        FROM   logs) AS S_Q
GROUP  BY S_Q.pid;  