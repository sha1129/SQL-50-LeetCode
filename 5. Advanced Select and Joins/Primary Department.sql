-- Problem number 1789

WITH PrimeDept AS
(
    SELECT employee_id, department_id ,primary_flag 
    FROM Employee 
    WHERE primary_flag = "Y"
    )

SELECT  E.employee_id, E.department_id 
fROM Employee E LEFT JOIN PrimeDept P ON E.employee_id = P.employee_id
WHERE P.primary_flag IS NULL OR P.department_id = E.department_id 
GROUP BY E.employee_id;

----------------------
---Optimized code-----

SELECT E.employee_id, E.department_id
FROM Employee E
LEFT JOIN Employee P
    ON E.employee_id = P.employee_id AND P.primary_flag = "Y"
WHERE P.primary_flag IS NULL OR P.department_id = E.department_id
GROUP BY E.employee_id;


-- More challenging problem 1132, 1098, 1212