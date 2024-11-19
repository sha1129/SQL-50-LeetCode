-- Problem number 185

WITH empRanking AS
    (
        SELECT 
            D.name AS Department, 
            E.name AS Employee, 
            E.salary AS Salary,
            DENSE_RANK() OVER (PARTITION BY E.departmentId ORDER BY E.salary DESC) AS rankings 
        FROM Employee E JOIN Department D ON E.departmentId = D.id);

SELECT Department, Employee, Salary 
FROM empRanking
WHERE rankings < 4
    
-- left join wont work here (not sure why)
-- Optimized code: windows function in 

SELECT D.name AS Department, 
       E.name AS Employee, 
       E.salary AS Salary
FROM Employee E
JOIN Department D ON E.departmentId = D.id
WHERE DENSE_RANK() OVER (PARTITION BY E.departmentId ORDER BY E.salary DESC) < 4;

-- More challenging problems 1445, 1571, 1892
