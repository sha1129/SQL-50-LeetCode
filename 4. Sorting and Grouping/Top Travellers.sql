-- Problem number 1407

SELECT U.name, 
    COALESCE(SUM(R.distance), 0) AS travelled_distance
FROM USERS U 
LEFT JOIN RIDES R ON U.id = R.user_id
GROUP BY U.id
ORDER BY 2 DESC, 1 ASC;

-- Coalesce handles null and provide alternate 
-- left join to show nulls

-- More challenging problems 2669, 2474, 3220 
