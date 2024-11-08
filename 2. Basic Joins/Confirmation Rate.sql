-- Problem number 1934

SELECT S.user_id, 
    ROUND(
        SUM(
            IF(c.action = "confirmed", 1, 0))/COUNT(1),2) AS confirmation_rate
FROM Signups S 
LEFT JOIN  Confirmations C
    ON S.user_id = C.user_id  
GROUP BY S.user_id


-- More Challenging 3338, 2084, 3053