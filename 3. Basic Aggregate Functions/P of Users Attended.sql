-- Problem number 1633

SELECT R.contest_id,  
       ROUND(COUNT(DISTINCT R.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage 
FROM Register R 
GROUP BY R.contest_id 
ORDER BY percentage DESC, R.contest_id ASC;


-- Find the number of distinct users in each contest
-- Count total number of users participating in contests
-- With CTE would be better or even temp tables

-- Step 1: Create a Temporary or Materialized View for Total Users Count

CREATE TEMPORARY TABLE TotalUserCount AS 
SELECT COUNT(*) AS total_users FROM Users;

-- Step 2: Use the Temporary Table in the Main Query

SELECT R.contest_id,  
       ROUND(COUNT(DISTINCT R.user_id) * 100.0 / T.total_users, 2) AS percentage 
FROM Register R
CROSS JOIN TotalUserCount T
GROUP BY R.contest_id 
ORDER BY percentage DESC, R.contest_id ASC;

-- More challenging problems 1211
