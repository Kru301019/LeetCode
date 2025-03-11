SELECT f.title AS film_name, a.actor_surname
FROM FILM f
JOIN FLM_ACTOR fa ON f.film_id = fa.film_id
JOIN ACTOR a ON fa.actor_id = a.actor_id
WHERE a.actor_surname = 'WEST';

INSERT INTO FLM_CATEGORY (film_id, category_id)
VALUES (101, 1);

UPDATE FILM
SET original_language_id = 2
WHERE film_id = 101;

DELETE FROM FLM_ACTOR
WHERE film_id = 101 AND actor_id = 5;

--How much money made each store in April 2022?
SELECT
	S.store_id,
	'£ ' || SUM(P_4.amount) total_revenue
FROM 
	store S
JOIN
	inventory itry using (store_id)
JOIN 
	rental R using(inventory_id)
JOIN
	payment_p2022_04  P_4 using(rental_id)
GROUP by
	S.store_id
ORDER BY
	total_revenue;

--Select top 10 most frequently rented movies in descending order
SELECT 
    m.title, 
    COUNT(r.rental_id) AS rental_count
FROM 
	rental R 
JOIN 
	inventory I  using(inventory_id)
JOIN 
	movie M  using(movie_id)
GROUP BY 
	M.movie_id, M.title
ORDER BY 
	rental_count DESC
LIMIT 
	10;
 


--List all the movies from Sci-Fi category released after 1999, along with their idr;  order them from newest to oldest.

SELECT 
	M.movie_id,
	M.title,
	C.name,
	M.release_year

FROM
	category C
JOIN 
	movie_category MC using(category_id)
JOIN 
	movie M using(movie_id)
WHERE 
	M.release_year >= '1999' and
	C.name = 'Sci-Fi'
ORDER by
	M.release_year DESC;




-- Use subqueries to select name, last name, email address of all customers from the UK. 
SELECT 
	C.first_name,
	C.last_name,
	C.email
FROM 
	customer C 
WHERE 
	C.address_id 
				IN (
					SELECT 
						adr.address_id
					FROM 
						address adr 
					JOIN 
						city cty using(city_id)
					JOIN 
						country ctry using(country_id)
					WHERE 
						ctry.country = 'United Kingdom');

-- Use subqueries to display all actors who appear in the movie Cowboy Doom.
SELECT *
FROM
	movie M 
WHERE M.title = 'Cowboy Doom';


-- Using the January 2022 payment table  and customer, list the total paid by each customer.
-- List the customers alphabetically by last name using one column and limit the output to the first 10 customers. The payments should include a £ symbol.
SELECT
	C.last_name,
	'£ ' || SUM(P.amount) as total_cust_paid
FROM 
	payment_p2022_01 p
JOIN 
	customer C USING(customer_id)
GROUP by 
	C.customer_id,C.last_name
ORDER by 
	C.last_name
limit 10; 



-- List the first 10 movies and the number of actors who are listed 
--for that film. The output should be formatted as Title Case (e.g the movie  DRACULA CRYSTAL should be returned as Dracula Crystal).

SELECT 
	INITCAP(M.title) as movie_title, 
	COUNT(MA.actor_id) as num_actors
FROM 
	movie M 
JOIN 
	movie_actor MA using (movie_id)
GROUP by 
	M.title
limit 
	10;


-- List the first 10  last names of actors, and how many times the similar last names are repeating.
 
SELECT 
	last_name,
	count(last_name) occur_of_last_name
FROM 
	actor
WHERE 
	last_name IN(SELECT last_name FROM actor limit 10)
group by 
	last_name
ORDER by 
	occur_of_last_name DESC;
