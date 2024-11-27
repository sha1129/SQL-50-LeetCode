-- Problem number 1321

SELECT visited_on, 
       SUM(SUM(amount)) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
       ROUND(AVG(SUM(amount)) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) AS average_amount
FROM Customer
GROUP BY visited_on
LIMIT 18446744073709551615 OFFSET 6;

-- limit with high number was new 
-- SUM inside sum is also now

-- Calculates a cumulative sum of amount grouped by the specified window (last 6 rows + current row) in visited_on order.
-- Calculates the cumulative average of amount over the same 7-row window, then rounds it to 2 decimal places.

-- More Challenging problems 1435, 3338, 1543