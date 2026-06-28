-- Create the Point2D table
CREATE TABLE Point2D (
    x INT,
    y INT,
    PRIMARY KEY (x, y)
);

-- Populate the Point2D table
INSERT INTO Point2D (x, y) VALUES (-1, -1), (0, 0), (-1, -2);


select ROUND(MIN(SQRT(POWER(p1.x - p2.x, 2) + POWER(p1.y - p2.y, 2))), 2) AS shortest
from Point2D p1
join Point2D p2 on (p1.x != p2.x OR p1.y != p2.y); 