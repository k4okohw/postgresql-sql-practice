-- SQL Academy 45: Самые используемые кабинеты
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/45


WITH Count_tt AS (
	SELECT classroom,
		COUNT(*) AS total_times
	FROM Schedule
	GROUP BY classroom
	ORDER BY total_times DESC
)
SELECT classroom
FROM Count_tt
WHERE total_times = (
		SELECT MAX(total_times)
		FROM Count_tt
	);
