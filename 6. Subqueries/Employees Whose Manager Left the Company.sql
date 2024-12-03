-- Problem number 1978 

SELECT employee_id
FROM Employees 
WHERE 
    salary < 30000 AND 
    manager_id NOT IN (
        SELECT employee_id 
        FROM Employees )
ORDER BY employee_id ASC

-- First win 
-- More Challenging problems 2082(check first), 3188, 3050 



