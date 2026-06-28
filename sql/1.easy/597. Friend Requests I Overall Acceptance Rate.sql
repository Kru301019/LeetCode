-- Create FriendRequest table
CREATE TABLE FriendRequest (
    sender_id INT,
    send_to_id INT,
    request_date DATE
);

-- Create RequestAccepted table
CREATE TABLE RequestAccepted (
    requester_id INT,
    accepter_id INT,
    accept_date DATE
);

INSERT INTO FriendRequest (sender_id, send_to_id, request_date) VALUES 
(1, 2, '2016-06-01'),
(1, 3, '2016-06-01'),
(1, 4, '2016-06-01'),
(2, 3, '2016-06-02'),
(3, 4, '2016-06-09');

INSERT INTO RequestAccepted (requester_id, accepter_id, accept_date) VALUES 
(1, 2, '2016-06-03'),
(1, 3, '2016-06-08'),
(2, 3, '2016-06-08'),
(3, 4, '2016-06-09'),
(3, 4, '2016-06-10');


SELECT 
    CAST(
        ISNULL(
            (SELECT COUNT(*) FROM (SELECT DISTINCT requester_id, accepter_id FROM RequestAccepted) AS A) * 1.0 
            / 
            NULLIF((SELECT COUNT(*) FROM (SELECT DISTINCT sender_id, send_to_id FROM FriendRequest) AS B), 0)
        , 0) 
    AS DECIMAL(18, 2)) AS accept_rate;