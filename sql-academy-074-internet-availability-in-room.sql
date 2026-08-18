-- SQL Academy 74: Наличие интернета в помещении
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/74

SELECT id,
	CASE
		WHEN has_internet = TRUE THEN 'YES'
		ELSE 'NO'
	END AS has_internet
FROM Rooms;
