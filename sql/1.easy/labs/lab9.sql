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

--Q4. The manager would like to send a special thank you email to all customers that have payments greater 
--than twice the average payment amount in January. 
--Return the amount, customer name, last name and email address in an appropriate format to be printed out.   

SELECT 
	C.first_name,
	C.last_name,
	C.email,
	'£ ' ||  SUM(P.amount) AS total_large_payments
FROM  
	payment_p2022_01 AS P
JOIN
	 customer C USING (customer_id)
WHERE 
	P.AMOUNT > ( SELECT AVG(amount) * 2 FROM payment_p2022_01 )
GROUP BY
    C.first_name, C.last_name, C.email
ORDER BY
    SUM(P.amount) DESC;


--The manager knows that in this database there are only two stores but he doesn't know in which city and country  they are. 
--List the city and country of the two stores and the income they had in January  as pounds. 

SELECT 
    c.city,
    cntry.country,
    '£ ' || SUM(p.amount) AS "Income In Jan"
FROM 
    payment_p2022_01 p
JOIN 
	staff S USING(staff_id)
JOIN 
	store St USING(store_id)
JOIN 
	address a ON st.address_id = a.address_id
JOIN 
	city c USING(city_id)
JOIN 
	country cntry USING(country_id)
GROUP BY
	c.city, cntry.country;

--As the pandemic made people watch more movies at home, the manager would like to know how many unique users have rented each genre. 
--The manager would like to know which genres are most popular by the number of unique rentals and not if a customer rentend same movie from a category twice. 

SELECT    
	ctgry.name AS "Category",  
	COUNT(DISTINCT C.customer_id) AS "Most Popular Genre"
FROM 
	customer C
JOIN 
	rental r USING(customer_id)
JOIN  
	inventory i USING(inventory_id)
JOIN  
	movie_category m_c USING(movie_id)
JOIN 
	category ctgry USING(category_id)
GROUP BY 
	ctgry.name
ORDER BY
	COUNT(DISTINCT C.customer_id) DESC




-- Now we have a better view of which genre is more popular however what is the average rate of each genre? 
--List from the most expensive genre to the cheapest.  
WITH all_payments AS (
    SELECT * FROM payment_p2022_01
    UNION ALL
    SELECT * FROM payment_p2022_02
    UNION ALL
    SELECT * FROM payment_p2022_03
    UNION ALL
    SELECT * FROM payment_p2022_04
    UNION ALL
    SELECT * FROM payment_p2022_05
    UNION ALL
    SELECT * FROM payment_p2022_06
    UNION ALL
    SELECT * FROM payment_p2022_07
 )
 
SELECT  
	C.name AS "category", 
	'£ ' || ROUND(AVG(A_P.amount), 2) AS "AVG Rate Of Categories"
FROM 
	all_payments A_P
JOIN 
	rental R using(rental_id)
JOIN 
	inventory I using(inventory_id)
JOIN 
	movie_category M_C using(movie_id)
JOIN 
	category C using(category_id)
GROUP BY  
	C.name
ORDER BY
	avg(A_P.amount) DESC

--Q9.  The new manager wants to offer a free renting to the top 5 customers with the most purchases in July. 
--List their name, email address, address, phone, city, country and the amount for July. 

SELECT 
	   '£ ' || SUM(P_7.amount) AS "Top Customer In July",
	   C.first_name || '' || C.last_name AS "Customer",
	   C.email,
	   a.address,
	   a.phone,
	   CTY.city,
	   CTRY.country
FROM  
	payment_p2022_07 P_7
JOIN 
	customer C USING(customer_id)
JOIN 
	address a USING(address_id)
JOIN 
	city CTY USING(city_id)
JOIN 
	country CTRY USING(country_id)
GROUP BY
	   C.first_name, 
	   C.last_name,
	   C.email,
	   a.address,
	   a.phone,
	   CTY.city,
	   CTRY.country
ORDER BY 
	SUM(P_7.amount) DESC
LIMIT 5

