-- SQL Academy 97: Работающие склады по городам
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/97

SELECT city,
	COUNT(*) AS warehouse_count
FROM Warehouses
WHERE CURRENT_DATE BETWEEN date_open AND COALESCE(date_close, CURRENT_DATE)
GROUP BY city
HAVING COUNT(*) > 80;
