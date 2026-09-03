-- SQL Academy 111: Население каждого региона
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/111


SELECT DISTINCT r.name AS region_name,
	SUM(population) OVER (PARTITION BY r.name) AS total_population
FROM Regions r
	RIGHT JOIN Cities c ON r.id = c.regionid;
