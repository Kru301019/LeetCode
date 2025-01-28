CREATE TABLE cinema (
    id int PRIMARY key,
    movie varchar(245),
    description varchar(255),
    rating float
);

INSERT INTO Cinema (id, movie, description, rating) VALUES
(1, 'War', 'great 3D', 8.9),
(2, 'Science', 'fiction', 8.5),
(3, 'irish', 'boring', 6.2),
(4, 'Ice song', 'Fantacy', 8.6),
(5, 'House card', 'Interesting', 9.1);

select C.id,C.movie, C.description, C.rating
from cinema C 
where C.description != 'boring' and
C.id % 2 != 0
order by C.id desc;