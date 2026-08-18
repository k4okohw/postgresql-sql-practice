-- SQL Academy 133: Проекты, которые никогда не брались в работу
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/133


SELECT name
FROM Projects
WHERE name NOT IN (
		SELECT DISTINCT(p.name)
		FROM Projects p
			JOIN ProjectHistory ph ON p.id = ph.project_id
);
