-- Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

SELECT p.project_id, 
ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;