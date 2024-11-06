-- Problem number 1378

SELECT EU.unique_id, E.name
FROM EmployeeUNI EU LEFT JOIN  Employees E 
    ON EU.id = E.id

------------- Left join -------------

-- should include all the rows from Employee Table  
--The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). 
--The result is 0 records from the right side, if there is no match.

-- More challenging problems 3053, 2987, 1322
