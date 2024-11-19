-- Problem number 196

DELETE p2
FROM Person p1, Person p2
WHERE p1.email = p2.email AND p1.id < p2.id

-- More challenging problems 3358, 2324, 1939