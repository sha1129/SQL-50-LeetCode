-- Problem number 596
-- Write a solution to find all the classes that have at least five students.

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(class) >= 5

-- More challenging problems 2362, 1549, 2474