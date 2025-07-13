-- Leetcode 1378 - Replace Employee ID with the Uniquw Identifier

-- Table 1 -Employees - id is the primary key (column with unique values) for this table.Each row of this table contains the id and the name of an employee in a company.

-- Table 2 - EmployeeUNI - (id, unique_id) is the primary key (combination of columns with unique values) for this table.
-- Each row of this table contains the id and the corresponding unique id of an employee in the company.


-- Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

SELECT eu.unique_id AS unique_id, e.name AS name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
ON e.id=eu.id;