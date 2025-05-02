CREATE ROLE junior_analyst_two WITH LOGIN PASSWORD 'Mypassword123';
GRANT SELECT ON staff TO junior_analyst_two;

CREATE ROLE cashier_two WITH LOGIN PASSWORD 'Mypassword123';
GRANT INSERT ON payment_p2022_01 TO junior_analyst_two;

psql -h localhost -p 5432 -U cashier_two -d movie_rental
GRANT INSERT ON rental TO cashier_two;
GRANT SELECT ON rental TO cashier_two;
GRANT delete ON rental TO cashier_two;

\conninfo

CREATE ROLE manager_two WITH LOGIN PASSWORD 'Mypassword123';
GRANT UPDATE ON country TO manager_two WITH GRANT OPTION;

CREATE ROLE sales_two WITH LOGIN PASSWORD 'SalesPass123';
psql -h localhost -p 5432 -U manager_two -d movie_rental
GRANT UPDATE ON country TO sales_two;

psql -h localhost -p 5432 -U sales_two -d movie_rental
GRANT USAGE ON SCHEMA public TO manager_two;
GRANT USAGE ON SCHEMA public TO sales_two;
GRANT SELECT ON country TO sales_two;

psql -h localhost -p 5432 -U senior_analyst -d movie_rental