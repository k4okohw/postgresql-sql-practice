-- SQL Academy 79: Цена со скидкой 10%
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/79

SELECT id,
	home_type,
	CASE
		WHEN has_tv = true
		AND has_internet = true THEN price * 0.9
		ELSE price
	END AS price
FROM Rooms;
