-- 🤖 1

able: Orders

+------------+------------+---------+
| order_id   | customer_id| amount  |
+------------+------------+---------+
|    1       |    101     |   200   |
|    2       |    102     |  (NULL) |
|    3       |   (NULL)   |   150   |
|    4       |    104     |   300   |
|    5       |    105     |  (NULL) |
+------------+------------+---------+

Task:

Write a query to:

    Display the order_id, customer_id, and amount.
    Use COALESCE() to:
        Replace NULL values in the amount column with 0.
        Replace NULL values in the customer_id column with 'Unknown'.

Expected Output:

+------------+--------------+--------+
| order_id   | customer_id  | amount |
+------------+--------------+--------+
|    1       |    101       |   200  |
|    2       |    102       |    0   |
|    3       |   Unknown    |   150  |
|    4       |    104       |   300  |
|    5       |    105       |    0   |
+------------+--------------+--------+

SELECT order_id, 
    COALESCE(customer_id, 'Unknown') AS customer_id, 
    COALESCE(amount, 0) AS amount
FROM Orders
ORDER BY order_id