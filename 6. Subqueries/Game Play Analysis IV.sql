-- Problem number 550 

WITH firstPlayDate AS (
    SELECT player_id, MIN(event_date) AS firstDate
    FROM Activity
    GROUP BY player_id
),
-- Need second CTE
loggedBack AS (
    SELECT f.player_id
    FROM firstPlayDate f
    JOIN Activity a
    ON f.player_id = a.player_id
    WHERE a.event_date = DATE_ADD(f.firstDate, INTERVAL 1 DAY)
)
SELECT ROUND(
    (SELECT COUNT(*) FROM loggedBack) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2
) AS fraction;

-- More challenging problems 534, 1097




