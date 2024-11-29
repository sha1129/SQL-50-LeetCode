-- Problem number 1327

WITH ordersName AS (

    SELECT O.product_id , 
        P.product_name, 
        MONTH(O.order_date) AS OrderMonth, 
        YEAR(O.order_date) AS OrderYear, 
        O.unit
    FROM Orders O JOIN Products P 
        ON O.product_id = P.product_id
    ORDER BY O.order_date
)

SELECT product_name, SUM(unit) AS unit 
FROM ordersName 
WHERE OrderMonth = 2 AND OrderYear = 2020
GROUP BY product_name
HAVING SUM(unit) >= 100
ORDER BY unit DESC

-- This is not an optimized solution
-- Better approach 

SELECT P.product_name,
    SUM(O.unit) AS unit 
FROM Orders O JOIN Products P 
    ON P.product_id = O.product_id
WHERE 
    O.order_date > '2020-01-31' 
    AND O.order_date < '2020-03-01'
GROUP BY P.product_name 
HAVING unit >= 100
