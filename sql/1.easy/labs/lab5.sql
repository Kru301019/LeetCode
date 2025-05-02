--6 Using movie_rental database, calculate what is the average movie length of all movies in minutes.

SELECT 
    round(avg(M.length), 2) || ' minutes' AS avg_movieLen_in_mintues
FROM 
    movie M;

--7 Now that you have the average of all movies,  
--what is the average movie length per category? Round it to the nearest two decimal places  in descending order. 

SELECT 
    C.name,
    round(avg(M.length), 2) || ' minutes' AS avg_movieLen_in_mintues
FROM 
    movie M
JOIN 
    movie_category M_C USING(movie_id)
JOIN 
    category C Using(category_id)
GROUP by 
    C.name
ORDER BY
    round(avg(M.length), 2) DESC;

-- Which of the movie categories are above average?

SELECT 
    C.name,
    round(avg(M.length), 2) || ' minutes' AS avg_len
FROM 
    movie M
JOIN 
    movie_category M_C USING(movie_id)
JOIN 
    category C Using(category_id)
GROUP BY 
    C.name
HAVING 
    round(avg(M.length), 2) > (SELECT avg(M.length) FROM movie M)
ORDER BY
    round(avg(M.length), 2) DESC;

--Which actor appeared in the most movies? List the actor ID,
-- first and last name along with the total number of movies (not the movies but the number of them.)

SELECT 
    A.actor_id,
    A. first_name,
    A.last_name,
    COUNT(M_A.movie_id) actor_appearence
FROM
    actor A 
JOIN
    movie_actor M_A USING(actor_id)
GROUP BY
    A.actor_id
ORDER BY
    actor_appearence DESC;

-- List the last names that are unique for all actors in alphabetical order (the last name is not repeated more than once in the database - 
--list the actual last name and not just COUNT them). 

SELECT 
    A.last_name
FROM    
    actor A 
GROUP by    
    A.last_name
HAVING 
    COUNT(*) = 1
ORDER by 
    A.last_name;

CREATE VIEW ACTIVE_CUSTOMER_VW AS
SELECT
	CUSTOMER_ID AS "CUSTOMER ID",
	FIRST_NAME || ' ' || LAST_NAME AS "CUSTOMER NAME",
	'******' || SUBSTRING(
		EMAIL
		FROM
			6
	) AS "CUSTOMER EMAIL"
FROM
	CUSTOMER
WHERE
	ACTIVE = 1;
----------------------------------
WITH
-- Get all movies for Cuba
CUBA_MOVIES AS (
    SELECT
        M_A.MOVIE_ID
    FROM
        MOVIE_ACTOR M_A
        JOIN ACTOR A USING (ACTOR_ID)
    WHERE
        A.FIRST_NAME = 'CUBA'
),

-- Get all movies for Cate
CATE_MOVIES AS (
    SELECT
        M_A.MOVIE_ID
    FROM
        MOVIE_ACTOR M_A
        JOIN ACTOR A USING (ACTOR_ID)
    WHERE
        A.FIRST_NAME = 'CATE'
),

-- Find movies that appear in both lists
COMMON_MOVIES AS (
    SELECT MOVIE_ID FROM CUBA_MOVIES
    INTERSECT
    SELECT MOVIE_ID FROM CATE_MOVIES
)

-- Get the movie titles
SELECT
    M.TITLE
FROM
    MOVIE M
JOIN
    COMMON_MOVIES CM ON M.MOVIE_ID = CM.MOVIE_ID
ORDER BY
    M.TITLE;
--------------------







