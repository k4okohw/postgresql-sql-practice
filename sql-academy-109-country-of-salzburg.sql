-- SQL Academy 109: Страна города Зальцбург
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/109


SELECT c.name AS country_name
FROM Countries c
	RIGHT JOIN Regions r ON r.countryid = c.id
	RIGHT JOIN Cities ct ON r.id = ct.regionid
WHERE ct.name = 'Salzburg';
