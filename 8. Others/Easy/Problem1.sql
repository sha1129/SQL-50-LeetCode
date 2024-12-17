-- Number 3198

SELECT state, 
    GROUP_CONCAT( city ORDER BY city, SEPARATOR ', ') AS cities 
from cities
GROUP BY 1
ORDER BY 1 

-- Group Concat is new 