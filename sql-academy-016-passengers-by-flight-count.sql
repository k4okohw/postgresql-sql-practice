-- SQL Academy 16: Сортировка пассажиров по количеству полетов
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/16


SELECT p.id,
	p.name,
	COUNT(*) AS count
FROM Passenger p
	RIGHT JOIN Pass_in_trip pit ON pit.passenger = p.id
GROUP BY p.id,
	p.name
HAVING COUNT(*) > 0
ORDER BY count DESC,
	p.name ASC;
