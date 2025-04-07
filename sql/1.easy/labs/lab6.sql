--Connect to the movie_rental database (that you have installed in LAB3 ) and change the phone number from the current one to 02392844444 for address with id 100. 
--Do not alter any other data/attribute.

UPDATE 
    address 
SET 
    phone = '02392844444' 
WHERE 
    address_id = 100;

SELECT
	phone
FROM
	address
WHERE
	address_id = 100;

-- Create a query that will return all the details for the record where the phone number is 02392844444 and use EXPLAIN.  
EXPLAIN ANALYZE
SELECT 
	*
FROM 
	address
WHERE 
	phone = '02392844444';

-- Apply an INDEX on the  phone attribute.
CREATE INDEX idx_phone ON address(phone);

--Create a VIEW (customer_details) that will hold the customers details exactly as below.
CREATE VIEW customer_details AS
SELECT 
    C.first_name || ' ' || C.last_name AS Customer,
    C.email AS Contact_Details,
    A.address AS Customer_Address,
    Cty.city AS Customer_City,
    Cntry.country AS Customer_Country
FROM
    customer C 
JOIN
    address A USING(address_id)
JOIN
    city Cty USING(city_id)
JOIN
    country Cntry USING(country_id);

