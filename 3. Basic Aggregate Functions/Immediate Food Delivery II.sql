-- Problem number 1174

SELECT ROUND(AVG(order_date=customer_pref_delivery_date)*100,2) AS immediate_percentage
FROM Delivery 
WHERE (customer_id,order_date ) IN (
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
)

-- Times 100 should be before Round 

-- This did not work 
-- need a another table 
WITH firstOrders AS (
    SELECT customer_id, order_date as FirstOrder 
    FROM Delivery
    WHERE order_date = customer_pref_delivery_date AND
        order_date IN (
            SELECT MIN(order_date)
            FROM Delivery
            GROUP BY customer_id
        )
    GROUP BY customer_id

)

SELECT ROUND(COUNT(F.customer_id)/COUNT(DISTINCT D.customer_id),2) 
FROM Delivery D LEFT JOIN firstOrders F
    ON D.customer_id = F.customer_id
WHERE 


-- to find first date I can use MIN

--