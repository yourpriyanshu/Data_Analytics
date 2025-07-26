-- LeetCode 1193 - Monthly Transactions 1
-- Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

SELECT
    DATE_FORMAT(trans_date,'%Y-%m') AS month,
    country,
    COUNT(id) AS trans_count,
    SUM(state="approved") AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(IF(state="approved",amount,0)) AS approved_total_amount
FROM Transactions
GROUP BY month,country;