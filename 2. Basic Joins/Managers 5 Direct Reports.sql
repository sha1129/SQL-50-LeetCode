-- Problem Number 570

SELECT E.name
FROM Employee E JOIN Employee M
    ON E.id = M.managerId 
GROUP BY E.id
HAVING COUNT(*) >= 5


-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
-- It is used after group by and where used before 

-- More challenging 1205, 1565, 2752

