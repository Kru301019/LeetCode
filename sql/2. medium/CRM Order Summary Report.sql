-- Create tables
CREATE TABLE crm_customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE crm_products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE crm_orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES crm_customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES crm_products(product_id);


SELECT o.order_id,
       c.first_name + ' ' + c.last_name AS CustomerFullname,
       c.email,
       p.product_name,
       o.order_date
FROM   crm_orders o
       JOIN crm_customers c
         ON o.customer_id = c.customer_id
       JOIN crm_products p
         ON o.product_id = p.product_id
ORDER BY o.order_id ASC;