-- 🤖 2

--Table: Products

+----------------+---------+
-- | Column Name | Type |
+----------------+---------+
-- | product_id | int |
-- | low_fats | enum |
-- | recyclable | enum |
-- | organic | enum |
-- | eco_friendly | enum |
+----------------+---------+

--   product_id is the primary key (column with unique values) for this table.
--   low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means the product is low fat and 'N' means it is not.
--   recyclable is an ENUM (category) of type ('Y', 'N') where 'Y' means the product is recyclable and 'N' means it is not.
--   organic is an ENUM (category) of type ('Y', 'N') where 'Y' means the product is organic and 'N' means it is not.
--   eco_friendly is an ENUM (category) of type ('Y', 'N') where 'Y' means the product is environmentally friendly and 'N' means it is not.

-- Write a Solution:

-- Find the product_id of products that meet one of the following conditions:

--    The product is both low fat and recyclable.
--    The product is either organic or eco-friendly but not both.

-- Return the result table in any order.
-- Example 1:

-- Input:
-- Products table:

-- | product_id | low_fats | recyclable | organic | eco_friendly |
+--------------+-----------+-------------+----------+--------------+
-- |     1      |    Y      |     N       |    Y     |      N       |
-- |     2      |    Y      |     Y       |    N     |      N       |
-- |     3      |    N      |     Y       |    Y     |      Y       |
-- |     4      |    N      |     N       |    Y     |      N       |
-- |     5      |    Y      |     Y       |    Y     |      Y       |
-- |     6      |    N      |     Y       |    Y     |      N       |
-- |     7      |    Y      |     N       |    N     |      Y       |
-- |     8      |    N      |     N       |    N     |      N       |
+--------------+-----------+-------------+----------+--------------+


-- Output:
+-------------+
-- | product_id |
+-------------+
-- | 2 |
-- | 4 |
-- | 6 |
-- | 7 |
+-------------+

SELECT product_id
FROM Products
WHERE 
    (low_fats = 'Y' AND recyclable = 'Y') 
    OR (organic = 'Y' XOR eco_friendly = 'Y')

-- XOR is new
