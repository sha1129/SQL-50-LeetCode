-- Problem number 1251

SELECT P.product_id,
       COALESCE(ROUND(SUM(U.units * P.price) / NULLIF(SUM(U.units), 0), 2), 0) AS average_price
FROM Prices P
LEFT JOIN UnitsSold U
    ON P.product_id = U.product_id 
   AND U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id;

-- COALESCE -- The COALESCE() function returns the first non-null value in a list.
-- Using SUM with multiplication in this query allows for calculating the weighted average price per unit, based on both price and quantity. 
-- This approach is especially useful when different transactions involve different quantities, ensuring that the result reflects the overall average price per unit accurately.