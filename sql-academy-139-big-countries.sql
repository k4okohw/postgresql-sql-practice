-- SQL Academy 139: Большие страны
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/139


SELECT name,
	population,
	area
FROM World
WHERE area >= 3000000
	OR population >= 25000000;
