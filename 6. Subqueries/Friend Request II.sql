-- Problem number 602

WITH JoinTwo as (
    
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL 

    SELECT accepter_id AS id 
    FROM RequestAccepted
)

SELECT id, COUNT(*) AS num
FROM JoinTwo
GROUP BY id
ORDER BY num DESC
LIMIT 1

-- Union all 
-- More challenging problems 1132, 1596, 1398

