-- Problem number 619

SELECT MAX(NUM) AS NUM
FROM (
    SELECT NUM
    FROM MyNumbers
    GROUP BY NUM
    HAVING COUNT(NUM) = 1
) AS UNIQUENUMS

-- need to have subquery in from 