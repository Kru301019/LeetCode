SELECT
    c1.visited_on,
    SUM(c2.amount) AS amount,
    CAST(ROUND(SUM(c2.amount) * 1.00 / 7, 2) AS DECIMAL(10,2)) AS average_amount
FROM (SELECT DISTINCT visited_on FROM Customer) c1
JOIN Customer c2
    ON c2.visited_on BETWEEN DATEADD(DAY, -6, c1.visited_on) AND c1.visited_on
WHERE c1.visited_on >= (SELECT DATEADD(DAY, 6, MIN(visited_on)) FROM Customer)
GROUP BY c1.visited_on
ORDER BY c1.visited_on ASC;

