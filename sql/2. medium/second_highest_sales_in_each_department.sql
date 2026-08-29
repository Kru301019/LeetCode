create table emp(
emp_id int,
emp_name varchar(20),
department_id int,
salary int,
manager_id int,
emp_age int);

insert into emp
values
(1, 'Ankit', 100,10000, 4, 39);
insert into emp
values (2, 'Mohit', 100, 15000, 5, 48);
insert into emp
values (3, 'Vikas', 100, 10000,4,37);
insert into emp
values (4, 'Rohit', 100, 5000, 2, 16);
insert into emp
values (5, 'Mudit', 200, 12000, 6,55);
insert into emp
values (6, 'Agam', 200, 12000,2, 14);
insert into emp
values (7, 'Sanjay', 200, 9000, 2,13);
insert into emp
values (8, 'Ashish', 200,5000,2,12);
insert into emp
values (9, 'Mukesh',300,6000,6,51);
insert into emp
values (10, 'Rakesh',300,7000,6,50);

SELECT *
FROM   (SELECT e.emp_id,
               e.emp_name,
               Row_number() OVER(PARTITION BY e.department_id ORDER BY e.salary DESC) AS salary_rank
        FROM   emp e) AS sub_query
WHERE  sub_query.salary_rank = 1;

CREATE TABLE superstore_sales (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sales DECIMAL(18, 3)
);

INSERT INTO superstore_sales (order_id, product_id, category, sales) VALUES
('CA-2021-152436', 'OFF-ST-10000036', 'Office Supplies', 592.740),
('CA-2020-169334', 'OFF-ST-10004950', 'Office Supplies', 111.672),
('US-2018-115413', 'OFF-AR-10003770', 'Office Supplies', 8.640),
('US-2018-115413', 'TEC-AC-10002800', 'Technology', 149.970),
('CA-2018-125150', 'FUR-CH-10002439', 'Furniture', 232.880),
('CA-2019-127327', 'FUR-CH-10004218', 'Furniture', 90.882),
('CA-2021-117114', 'TEC-PH-10004042', 'Technology', 508.768),
('CA-2021-117114', 'OFF-EN-10001137', 'Office Supplies', 9.912),
('CA-2019-137302', 'FUR-CH-10002017', 'Furniture', 63.936),
('CA-2019-137302', 'OFF-AR-10000588', 'Office Supplies', 59.520),
('CA-2019-137302', 'TEC-PH-10003174', 'Technology', 311.976),
('CA-2019-137302', 'OFF-BI-10001524', 'Office Supplies', 50.352);

WITH cte_one
     AS ( SELECT   s.product_id,
                   s.category,
                   Sum(s.sales) AS agg_sales
          FROM     superstore_sales s
          GROUP BY s.product_id,
                   s.category ), 
     cte_two
     AS ( SELECT cte_one.product_id,
                 cte_one.category,
                 cte_one.agg_sales,
                 Row_number() OVER(PARTITION BY category ORDER BY agg_sales DESC) AS rank_sales
          FROM   cte_one ) 
  SELECT *
  FROM   cte_two
  WHERE  cte_two.rank_sales = 1;