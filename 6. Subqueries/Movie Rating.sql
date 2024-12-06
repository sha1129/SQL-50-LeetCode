-- Problem number 1341

WITH mostRated AS(
  
    SELECT U.name AS name 
    FROM Users U JOIN MovieRating M ON U.user_id = M.user_id
    GROUP BY 1
    ORDER BY count(rating) DESC, 1 ASC
    LIMIT 1

),

highestAvg AS (

    SELECT Mo.title AS title
    FROM Movies Mo JOIN MovieRating M ON Mo.movie_id = M.movie_id
    WHERE M.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY 1
    ORDER BY AVG(rating) DESC, 1 ASC
    LIMIT 1

)

SELECT name AS results FROM mostRated
UNION ALL
SELECT title AS results FROM highestAvg;


-- More challenging 1532, 2687, 3262