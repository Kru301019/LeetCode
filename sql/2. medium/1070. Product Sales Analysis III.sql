-- Create the Sales table
CREATE TABLE Sales (
    sale_id INT,
    product_id INT,
    year INT,
    quantity INT,
    price INT,
    PRIMARY KEY (sale_id, year)
);

-- Populate the Sales table
INSERT INTO Sales (sale_id, product_id, year, quantity, price) VALUES 
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);

SELECT 
    s.product_id, 
    s.year, 
    s.quantity, 
    s.price
FROM Sales s
join (
    SELECT product_id, MIN(year) as min_year
    FROM Sales
    GROUP BY product_id
)as f_year on f_year.product_id = s.product_id and f_year.min_year = s.year;