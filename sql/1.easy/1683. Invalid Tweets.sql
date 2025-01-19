CREATE TABLE Tweets (
    tweet_id INT PRIMARY KEY,
    content VARCHAR
);

INSERT INTO Tweets (tweet_id, content) VALUES
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');

select t.tweet_id
from Tweets as t
where length(t.content) > 15;