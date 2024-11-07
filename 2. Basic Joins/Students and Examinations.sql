-- Problem number 1280

SELECT S.student_id, S.student_name, Sb.subject_name, COUNT(Ex.student_id) AS attended_exams
FROM Students S
CROSS JOIN Subjects Sb 
LEFT JOIN Examinations Ex
    ON S.student_id = Ex.student_id AND Sb.subject_name = Ex.subject_name
GROUP BY S.student_id, S.student_name, Sb.subject_name
ORDER BY S.student_id, Sb.subject_name ASC

-- CROSS JOIN with Subjects to show all the subjects 
-- LEFT JOIN to show the nulls 0
-- My submission was slow need to look at window function or CTE

-- More challenging problem 3150, 512, 2010 