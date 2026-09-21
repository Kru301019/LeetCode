-- Databricks notebook source
CREATE OR REPLACE TEMP VIEW orders_raw_test
USING json
OPTIONS (path "s3://dalhussein-courses/datasets/bookstore/v1/orders-json-raw/");

CREATE OR REPLACE TEMP VIEW customers_test
USING json
OPTIONS (path "s3://dalhussein-courses/datasets/bookstore/v1/customers-json/");



-- COMMAND ----------

SELECT * FROM orders_raw_test LIMIT 20;

-- COMMAND ----------

SELECT * FROM customers_test LIMIT 20;

-- COMMAND ----------

SELECT order_id, quantity, o.customer_id,
       c.profile:first_name AS f_name,
       c.profile:last_name AS l_name,
       cast(from_unixtime(order_timestamp, 'yyyy-MM-dd HH:mm:ss') AS timestamp) AS order_timestamp,
       o.books,
       c.profile:address:country AS country
FROM orders_raw_test o
LEFT JOIN customers_test c
  ON o.customer_id = c.customer_id;