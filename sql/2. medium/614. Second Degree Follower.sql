-- Create the Follow table
CREATE TABLE Follow (
    followee VARCHAR(255),
    follower VARCHAR(255),
    PRIMARY KEY (followee, follower)
);

-- Populate the Follow table
INSERT INTO Follow (followee, follower) VALUES 
('Alice', 'Bob'), 
('Bob', 'Cena'), 
('Bob', 'Donald'), 
('Donald', 'Edward');

SELECT   f1.followee,
         Count(f1.followee) AS num
FROM     Follow f1
         JOIN Follow f2
         ON f1.followee = f2.follower
GROUP BY f1.followee;