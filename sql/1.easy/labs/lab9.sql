--Create a stored procedure (sp_add_new_actor) that will automatically insert a new actor. 
--Insert your own name through stored procedure CALL e.g.  CALL sp_add_new_actor('Val', 'Adamescu'); 
--You don’t need to allocate any ID as is automatically added by SERIAL PK and the last_update is automatically updated by another function. 
--The procedure should take only two parameters (First Name & Last Name). 

create PROCEDURE sp_add_new_actor (
	first_name VARCHAR(30),
	last_name VARCHAR(30)
)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO  actor (first_name, last_name)
	VALUES (first_name, last_name);
	RAISE NOTICE 'Actor % % added successfully', first_name, last_name;
END;
$$;

CALL sp_add_new_actor('Krutarth', 'Joshi');

select * from actor where first_name = 'Krutarth' and last_name = 'Joshi';

--A new manager was appointed to the Movie Rental. 
--He would like to see the top 5 categories total gross  revenue for January per category. 
SELECT 
	C.name AS "MOVIE CATEGORY",
	'£ ' || SUM(P.AMOUNT) AS "REVENUE FOR JAN"
FROM  
	payment_p2022_01 AS P
JOIN 
	rental R USING (rental_id)
JOIN 
	inventory I USING (inventory_id)
JOIN 
	movie M USING (movie_id)
JOIN  
	movie_category M_C USING (movie_id)
JOIN
	category C USING (category_id)
GROUP BY
	C.name
ORDER BY
	SUM(P.AMOUNT) DESC
LIMIT 5;

