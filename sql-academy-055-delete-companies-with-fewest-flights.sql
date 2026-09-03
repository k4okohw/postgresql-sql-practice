-- SQL Academy 55: Удалить компании с наименьшим числом рейсов
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/55


DELETE FROM Company
WHERE id IN (
		SELECT company
		FROM (
				SELECT DISTINCT company,
					COUNT(*) OVER (PARTITION BY company) AS total_trips
				FROM Trip
			)
		WHERE total_trips = (
				SELECT MIN(total_trips)
				FROM (
						SELECT DISTINCT company,
							COUNT(*) OVER (PARTITION BY company) AS total_trips
						FROM Trip
					)
			)
	);
