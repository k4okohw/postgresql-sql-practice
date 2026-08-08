-- LeetCode 185: Department Top Three Salaries
-- Difficulty: Hard
-- Dialect: PostgreSQL
-- Skills: LEFT JOIN, SUBQUERY, DISTINCT, LIMIT
-- Source:
-- https://leetcode.com/problems/department-top-three-salaries/


SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e 
LEFT JOIN Department d ON e.departmentId = d.id
WHERE e.salary IN (
    SELECT DISTINCT(salary) 
    FROM Employee em
    WHERE em.departmentId = e.departmentId
    ORDER BY salary DESC 
    LIMIT 3 
)
ORDER BY d.name ASC, e.salary DESC;
