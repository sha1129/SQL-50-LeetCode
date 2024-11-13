-- Problem number 1193

SELECT  
    CONCAT(YEAR(trans_date), "-", DATE_FORMAT(trans_date, "%m")) AS month, 
    country, 
    count(state) AS trans_count, 
    SUM(state="approved") AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(IF(state = "approved", amount, 0)) AS approved_total_amount 
FROM Transactions
GROUP BY country, month

-- Learned to use = and if in Select statements 

-- More challenging problem 1205 

