-- Problem number 1045

SELECT customer_id
FROM Customer 
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(product_key) FROM PRODUCT)

-- Need to use distinct in left hand side of the count 
-- More challenging problems 2112, 2142, 2175

