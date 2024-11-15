-- Problem number 1731


WITH ReportsTo AS (
    SELECT employee_id, name, reports_to, age 
    FROM Employees 
    WHERE reports_to IS NOT NULL

)

SELECT E.employee_id,
    E.name, 
    COUNT(R.reports_to) AS reports_count, 
    ROUND(AVG(R.age),0) AS average_age
FROM Employees E  LEFT JOIN ReportsTo R ON R.reports_to  = E.employee_id 
WHERE R.age IS NOT NULL
GROUP BY E.employee_id,E.name
ORDER BY E.employee_id;

-- Can done bit easy and most in cte 
-- also dont have the freedom to break it down so I need to be sure 
-- Can be done even easier 

SELECT 
    E.employee_id,
    E.name, 
    COUNT(R.employee_id) AS reports_count, 
    ROUND(AVG(R.age), 0) AS average_age
FROM Employees E 
LEFT JOIN Employees R ON R.reports_to = E.employee_id 
GROUP BY E.employee_id, E.name
ORDER BY E.employee_id;


-- Adding indexes on reports_to and employee_id improves query performance by:
CREATE INDEX idx_reports_to ON Employees(reports_to);
CREATE INDEX idx_employee_id ON Employees(employee_id);

SELECT 
    E.employee_id,
    E.name, 
    COUNT(R.employee_id) AS reports_count, 
    ROUND(AVG(R.age), 0) AS average_age
FROM Employees E 
LEFT JOIN Employees R 
    ON R.reports_to = E.employee_id 
GROUP BY E.employee_id, E.name
ORDER BY E.employee_id;


-- More challenging problems 626, 1511, 1951