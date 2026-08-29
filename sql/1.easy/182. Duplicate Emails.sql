CREATE TABLE Person (
	id INT PRIMARY KEY,
	email VARCHAR(255) NOT NULL
);


INSERT INTO Person (id, email) VALUES 
	(1, 'a@b.com'),
    (2, 'c@d.com'),
    (3, 'a@b.com');

SELECT P.email
FROM Person P
GROUP BY email
HAVING count(*) > 1;

SELECT distinct p1.email
FROM person p1
JOIN person p2 ON p1.email = p2.email
where p1.id != p2.id;
