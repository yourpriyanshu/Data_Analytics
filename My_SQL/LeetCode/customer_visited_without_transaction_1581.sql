-- 1581 - Customer who visited but did not make any transactions

-- Visits-
-- visit_id is the column with unique values for this table.
-- This table contains information about the customers who visited the mall.

-- Transactions-
-- transaction_id is column with unique values for this table.
-- This table contains information about the transactions made during the visit_id.
 
-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

SELECT customer_id,COUNT(customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
on v.visit_id=t.visit_id
WHERE t.transaction_id is NULL
GROUP BY v.customer_id;