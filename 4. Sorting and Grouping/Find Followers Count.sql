-- Problem number 1729

SELECT user_id, COUNT(follower_id) AS followers_count 
FROM Followers 
GROUP BY user_id
ORDER BY user_id ASC 

-- More challenging problems 1511, 1045, 2480 