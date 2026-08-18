-- SQL Academy 123: Количество задач у сотрудника
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/123

SELECT emp_name,
	task_count
FROM (
		SELECT e.id,
			emp_name,
			COUNT(*) AS task_count
		FROM Employee e
			RIGHT JOIN Tasks t ON e.id = t.assignee_id
		GROUP BY e.id
		HAVING COUNT(*) < 3
	);
