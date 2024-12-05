-- Problem number 180

-- My code

WITH secCon AS (
    SELECT ID, LEAD(num) OVER (ORDER BY ID) AS numbs
    FROM Logs
),
thirdCon AS (
    SELECT ID, LEAD(num, 2) OVER (ORDER BY ID) AS numbs
    FROM Logs
)
SELECT DISTINCT L.num AS ConsecutiveNums
FROM Logs L
JOIN secCon S ON L.ID = S.ID AND L.num = S.numbs
JOIN thirdCon T ON T.ID = S.ID AND S.numbs = T.numbs;

-- Others 
-- Window function 

SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT num, 
           LEAD(num) OVER (ORDER BY id) AS next_num,
           LEAD(num, 2) OVER (ORDER BY id) AS next_next_num
    FROM Logs
) temp
WHERE num = next_num AND num = next_next_num;

-- More challenging problems 3126, 1076, 1142

-- Notes
--__________________________________________________________________________________________________________________
+------------------+------------------------------------+---------------------------------------------------------+
| --Aspect           | FROM Clause                                 | WHERE Clause                      
+------------------+------------------------------------+---------------------------------------------------------+
|-- Purpose          | Generates a temporary table                 | Filters rows based on conditions 
|-- Result Scope     | Produces intermediate result sets           | Produces TRUE/FALSE for filtering rows
|-- Usage            | Breaks down logic for complex computations  | Applies conditions directly to the dataset
+------------------+------------------------------------+---------------------------------------------------------+

