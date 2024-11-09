-- Problem number 620

SELECT id, movie, description, rating
FROM Cinema
WHERE  description != "boring"
HAVING id MOD 2 != 0
ORDER BY rating DESC

-- More Challenging Problems 2324, 2084, 1693 