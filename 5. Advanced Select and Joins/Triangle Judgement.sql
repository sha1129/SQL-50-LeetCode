-- Problem number 610

SELECT x,y,z,
    IF((x+y > z AND y+z > x AND z+x > y),"Yes", "No") AS triangle
FROM Triangle  



-- Case can be used too
-- More challenging 2308, 2987, 1127
