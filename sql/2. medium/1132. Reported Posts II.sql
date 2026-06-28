-- Create Actions table
CREATE TABLE Actions (
    user_id INT,
    post_id INT,
    action_date DATE,
    action VARCHAR(20), -- ENUM simulated with VARCHAR
    extra VARCHAR(20)
);

-- Create Removals table
CREATE TABLE Removals (
    post_id INT PRIMARY KEY,
    remove_date DATE
);

-- Populate Actions table
INSERT INTO Actions (user_id, post_id, action_date, action, extra) VALUES 
(1, 1, '2019-07-01', 'view', NULL),
(1, 1, '2019-07-01', 'like', NULL),
(1, 1, '2019-07-01', 'share', NULL),
(2, 2, '2019-07-04', 'view', NULL),
(2, 2, '2019-07-04', 'report', 'spam'),
(3, 4, '2019-07-04', 'view', NULL),
(3, 4, '2019-07-04', 'report', 'spam'),
(4, 3, '2019-07-02', 'view', NULL),
(4, 3, '2019-07-02', 'report', 'spam'),
(5, 2, '2019-07-03', 'view', NULL),
(5, 2, '2019-07-03', 'report', 'racism'),
(5, 5, '2019-07-03', 'view', NULL),
(5, 5, '2019-07-03', 'report', 'racism');

-- Populate Removals table
INSERT INTO Removals (post_id, remove_date) VALUES 
(2, '2019-07-20'),
(3, '2019-07-18');

WITH CTE
     AS ( SELECT   Cast(Count(r.post_id) * 1.0 / Count(action_out.post_id) AS DECIMAL(18, 2)) * 100 AS TOTAL
          FROM     Removals r
                   RIGHT JOIN (SELECT a.post_id,
                                      a.action_date
                               FROM   Actions a
                               WHERE  a.extra = 'spam') AS action_out
                   ON r.post_id = action_out.post_id
          GROUP BY action_out.action_date) 
  SELECT Cast(Avg(CTE.TOTAL) AS DECIMAL(18, 2)) AS TOTAL
  FROM   CTE;