-- SQL Academy 198: Считается вся численность отдела вместо нужной части
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/198


SELECT DISTINCT e.department_id,
	COUNT(*) OVER (PARTITION BY e.department_id) AS employees_with_manager
FROM employees e
WHERE manager_id IS NOT NULL;
