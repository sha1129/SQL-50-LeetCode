-- Problem number 1211

SELECT query_name,
       ROUND(AVG(rating / position), 2) AS quality,
       ROUND(SUM(rating < 3) / COUNT(*) * 100, 2) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;

-- More challenging problems 1083, 602, 2253
