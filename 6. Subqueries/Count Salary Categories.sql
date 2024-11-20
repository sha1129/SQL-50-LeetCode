-- Problem number 1907

-- CTE to create the categories  
WITH Categories AS (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
)

-- Query with case in JOIN
SELECT 
    C.category,
    COUNT(A.income) AS accounts_count
FROM Categories C
LEFT JOIN Accounts A
    ON (C.category = CASE
            WHEN A.income < 20000 THEN 'Low Salary'
            WHEN A.income >= 20000 AND A.income <= 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END)
GROUP BY C.category;


-- More Challenging problems 1435