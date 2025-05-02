--Q1. List the name and the last name in alphabetical order (on surname) of all actors that have acted in the movie named ‘Agent Truman’. 
--The names should appear in a single column just the name of the actors, not the movie.

SELECT
	A.first_name || ' ' || A.last_name AS actor_name
FROM
	 actor A
JOIN
	movie_actor M_A USING(actor_id)
JOIN
	movie M USING(movie_id)
WHERE 
	M.TITLE LIKE 'AGENT TRUMAN'
ORDER BY
	A.last_name ASC;
	