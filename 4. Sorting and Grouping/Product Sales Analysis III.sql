-- Problem number 1070

SELECT 
    product_id,
    year AS first_year,
    quantity ,
    price
FROM sales 
WHERE (product_id, year) IN (
        SELECT 
            product_id,
            MIN(year) AS first_year
        FROM sales
        GROUP BY product_id
);

-- do not need a second group by 
-- More challenging problem 1069, 2324, 2329 
-- The query can be made more efficient. Using a JOIN instead of the WHERE ... 
-- IN subquery will generally perform better in MySQL, especially on large tables. 
-- Can use CTE 