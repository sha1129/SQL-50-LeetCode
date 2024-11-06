-- Problem number 1068

SELECT  V.customer_id, COUNT(V.customer_id) AS count_no_trans
FROM Visits V LEFT JOIN Transactions T 
    ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id

-- In the beginning I chose the amount is null; however the transaction amount can be null even if there was one.
-- What if they returned it or some shi 

-- More challenging problems 1607