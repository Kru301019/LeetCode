-- Create the Person table using the Prefixed Approach
CREATE TABLE Person (
    id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL
);

-- Populate the Person table with the example data
INSERT INTO Person (id, email) VALUES 
    (1, 'john@example.com'),
    (2, 'bob@example.com'),
    (3, 'john@example.com');


select id
from Person
where id not in(select min(id)
from Person
group by email);

