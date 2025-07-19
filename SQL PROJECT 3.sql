-- Use your database (if already created)
USE StudentManagement;
-- Show top 5 students by total score
SELECT name,
       (Mathscore + Sciencescore + Englishscore) AS total_score
FROM Students
ORDER BY total_score DESC
LIMIT 5;
-- Task-2 

--Example 1
SELECT AVG(Mathscore) AS average_math_score
FROM Students
WHERE Mathscore > 70;

--Example 2
SELECT AVG(total_score) AS average_total_score
FROM (
    SELECT (Mathscore + Sciencescore + Englishscore) AS total_score
    FROM Students
) AS subquery
WHERE total_score BETWEEN 200 AND 250;

--Task-3
SELECT MAX(Mathscore) AS second_highest_math_score
FROM Students
WHERE Mathscore < (SELECT MAX(Mathscore) FROM Students);
