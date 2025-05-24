--Q1.  Find the all time most popular movie along with the number of rentings.
SELECT 
	M.title,
	COUNT(R.rental_id) AS "Most Popular Movie"
FROM
	rental R
JOIN
	inventory I USING(inventory_id)
JOIN
	movie M USING(movie_id)
GROUP BY 
	I.movie_id, M.title
ORDER BY 
	COUNT(R.rental_id) DESC
LIMIT
	1



WITH CTE_ONE AS (
	SELECT 
		COUNT(R.rental_id) AS "Total Rentals",
		M.title AS "Movie Title",
		DENSE_RANK() OVER (ORDER BY COUNT(R.rental_id) DESC) AS Rank
	FROM
		rental R
	JOIN
		inventory I USING(inventory_id)
	JOIN
		movie M USING(movie_id)
	GROUP BY 
		I.movie_id, M.title
	ORDER BY 
		COUNT(R.rental_id) DESC)
SELECT 
	* 
FROM 
	CTE_ONE
WHERE 
	rank <= 10
