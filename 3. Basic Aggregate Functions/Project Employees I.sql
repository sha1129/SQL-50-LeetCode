-- Problem number 1075

SELECT P.project_id , 
ROUND(SUM(E.experience_years)/ count(project_id),2) AS average_years 
FROM Project P JOIN Employee E 
    ON P.employee_id = E.employee_id
GROUP BY P.project_id 

-- Could have just use AVG function which is easier to understand 
-- More Challenging Problems 1076