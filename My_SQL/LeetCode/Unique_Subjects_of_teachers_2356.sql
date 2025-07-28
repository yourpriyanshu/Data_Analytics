-- LeetCode 2356 : Number of Unique Subjects Taught by Each Teacher
-- Write a solution to calculate the number of unique subjects each teacher teaches in the university.

SELECT DISTINCT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;