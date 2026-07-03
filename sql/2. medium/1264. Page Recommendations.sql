-- Creating Tables
CREATE TABLE Friendship (
    user1_id INT,
    user2_id INT,
    PRIMARY KEY (user1_id, user2_id)
);

CREATE TABLE Likes (
    user_id INT,
    page_id INT,
    PRIMARY KEY (user_id, page_id)
);

-- Populating Friendship
INSERT INTO Friendship VALUES (1, 2), (1, 3), (1, 4), (2, 3), (2, 4), (2, 5), (6, 1);

-- Populating Likes
INSERT INTO Likes VALUES (1, 88), (2, 23), (3, 24), (4, 56), (5, 11), (6, 33), (2, 77), (3, 77), (6, 88);

SELECT DISTINCT l.page_id
FROM   Likes l
       RIGHT JOIN (SELECT user1_id,
                          user2_id
                   FROM   Friendship
                   WHERE  user1_id = 1
                   UNION ALL
                   SELECT user2_id,
                          user1_id
                   FROM   Friendship
                   WHERE  user2_id = 1) AS mergedData
       ON mergedData.user2_id = l.user_id
WHERE  l.page_id NOT IN (SELECT page_id
                         FROM   Likes
                         WHERE  user_id = 1);