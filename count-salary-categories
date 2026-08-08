-- LeetCode 1907: Count Salary Categories
-- Difficulty: Medium
-- Dialect: PostgreSQL
-- Skills: CASE, UNION ALL
-- Source:
-- https://leetcode.com/problems/count-salary-categories/


SELECT 'Low Salary' AS category,
       SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts

UNION ALL

SELECT 'Average Salary',
       SUM(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 ELSE 0 END)
FROM Accounts

UNION ALL

SELECT 'High Salary',
       SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END)
FROM Accounts;
