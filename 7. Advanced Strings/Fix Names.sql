-- Problem number 1667

SELECT user_id, 
    CONCAT(UPPER(SUBSTRING(name,1,1)),LOWER(SUBSTRING(name,2))) AS name 
FROM Users
ORDER BY user_id

-- More challenging problems 3278, 2687, 1303
