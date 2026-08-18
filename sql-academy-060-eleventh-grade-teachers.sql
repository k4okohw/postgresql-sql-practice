-- SQL Academy 60: Преподаватели в 11-х классах
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/60


WITH Total_11s AS (
	SELECT teacher,
		COUNT(*) OVER (PARTITION BY teacher) AS cnt_classes
	FROM (
			SELECT DISTINCT teacher,
				class
			FROM (
					SELECT s.teacher,
						s.class
					FROM Schedule s
						LEFT JOIN Class c ON c.id = s.class
					WHERE c.name like '11%'
					ORDER BY s.teacher
				)
		)
)
SELECT DISTINCT teacher
FROM Total_11s
WHERE cnt_classes = (
		SELECT COUNT(*)
		FROM Class
		WHERE name like '11%'
	);  
