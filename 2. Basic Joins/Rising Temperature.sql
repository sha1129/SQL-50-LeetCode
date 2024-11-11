-- Problem number 197
SELECT W1.id
FROM Weather W1 CROSS JOIN Weather W2
WHERE DATEDIFF (W1.recordDate,W2.recordDate) = 1
    AND W1.temperature > W2.temperature 

-- Cross JOIN did not use an ON
-- DATEDIFF mySQL treats the first date as end date MS SQL is diff so 1 was used

