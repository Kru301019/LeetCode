create table Person (
	personId  int primary key,
	firstName  varchar(20),
	lastName varchar(20)
);

create table address (
	addressId  int primary key,
	personId int,
	city varchar(20),
	state varchar(20),
	foreign key(personId) REFERENCES Person(personId)
);

INSERT INTO Person (personId, lastName, firstName)
VALUES 
(1, 'Wang', 'Allen'),
(2, 'Alice', 'Bob');

INSERT INTO Address (addressId, personId, city, state)
VALUES
(1, 2, 'New York City', 'New York'),
(2, 1, 'Leetcode', 'California');

select 
	P.firstName,
	P.lastName,
	A.city,
	A.state
	
from 
	Person P
join 
	address A on P.personId = A.addressId;
