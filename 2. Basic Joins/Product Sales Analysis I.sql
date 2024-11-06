-- Problem number 1068

SELECT P.product_name, S.year, S.price
FROM Product P JOIN Sales S
    ON P.product_id = S.product_id

-- More challenging problems 1069, 2324, 2329