-- Create tables
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100)
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE,
    PRIMARY KEY (movie_id, user_id)
);

-- Populate Movies
INSERT INTO Movies (movie_id, title) VALUES
(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');

-- Populate Users
INSERT INTO Users (user_id, name) VALUES
(1, 'Daniel'),
(2, 'Monica'),
(3, 'Maria'),
(4, 'James');

-- Populate MovieRating
INSERT INTO MovieRating (movie_id, user_id, rating, created_at) VALUES
(1, 1, 3, '2020-01-12'),
(1, 2, 4, '2020-02-11'),
(1, 3, 2, '2020-02-12'),
(1, 4, 1, '2020-01-01'),
(2, 1, 5, '2020-02-17'),
(2, 2, 2, '2020-02-01'),
(2, 3, 2, '2020-03-01'),
(3, 1, 3, '2020-02-22'),
(3, 2, 4, '2020-02-25');

(	SELECT top 1 u2.NAME
	FROM   users u2
		   JOIN (SELECT TOP 1 WITH ties mr.user_id
				 FROM   movierating mr
				 GROUP  BY mr.user_id
				 ORDER  BY Count(*) DESC) u1
			 ON u1.user_id = u2.user_id  )

union 

(	select top 1 m1.title
	from Movies m1
	join (
		select TOP 1 WITH ties  mr.movie_id,  CAST(AVG(mr.rating * 1.0) AS DECIMAL(10,2)) AS rating
		from MovieRating mr
		WHERE mr.created_at LIKE '2020-02%'
		group by mr.movie_id
		order by rating desc ) m2 on m1.movie_id = m2.movie_id	);
