-- Problem number 1204


WITH totalW AS (
    SELECT turn, person_id, person_name, weight, 
        SUM(weight) OVER(ORDER BY turn) AS Total_weight
    FROM Queue 
    ORDER BY turn ASC
)

SELECT person_name
FROM totalW
WHERE Total_weight <= 1000
ORDER BY turn DESC
LIMIT 1


-- More challenging problems 1308, 2004, 2010