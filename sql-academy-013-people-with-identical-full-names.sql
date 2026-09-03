-- SQL Academy 13: Полные тёзки
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/13


SELECT name
FROM (
		SELECT DISTINCT name,
			COUNT(*) OVER (PARTITION BY name) AS rep_name
		FROM Passenger
	)
WHERE rep_name > 1;
