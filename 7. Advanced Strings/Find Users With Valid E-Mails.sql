-- Problem number 1517

SELECT user_id, name, mail
FROM Users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$';

-- Maybe easy to read

SELECT user_id, name, mail
FROM Users
WHERE 
    mail LIKE '%@leetcode.com' 
    AND LEFT(mail, 1) BETWEEN 'a' AND 'z' 
    AND mail NOT LIKE '%[^a-zA-Z0-9._-]%' 
    AND INSTR(mail, '@leetcode.com') > 1;


-- More challenging problems 1693, 1225, 1350 
