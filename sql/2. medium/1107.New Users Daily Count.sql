-- Create the Traffic table
CREATE TABLE Traffic (
    user_id INT,
    activity VARCHAR(20),
    activity_date DATE
);

-- Populate the Traffic table
INSERT INTO Traffic (user_id, activity, activity_date) VALUES 
(1, 'login', '2019-05-01'),
(1, 'homepage', '2019-05-01'),
(1, 'logout', '2019-05-01'),
(2, 'login', '2019-06-21'),
(2, 'logout', '2019-06-21'),
(3, 'login', '2019-01-01'),
(3, 'jobs', '2019-01-01'),
(3, 'logout', '2019-01-01'),
(4, 'login', '2019-06-21'),
(4, 'groups', '2019-06-21'),
(4, 'logout', '2019-06-21'),
(5, 'login', '2019-03-01'),
(5, 'logout', '2019-03-01'),
(5, 'login', '2019-06-21'),
(5, 'logout', '2019-06-21');


SELECT   first_login_date AS login_date,
         Count(user_id)   AS user_count
FROM     (SELECT   user_id,
                   Min(activity_date) AS first_login_date
          FROM     Traffic
          WHERE    activity = 'login'
          GROUP BY user_id) AS first_logins 
WHERE    first_login_date >= Dateadd(day,-90, '2019-06-30')
GROUP BY first_login_date
ORDER BY first_login_date;