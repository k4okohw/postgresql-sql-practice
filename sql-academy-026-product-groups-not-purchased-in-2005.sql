-- SQL Academy 26: Группы товаров, не купленные в 2005 году
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/26


SELECT good_type_name
FROM GoodTypes
WHERE good_type_name NOT IN (
		SELECT DISTINCT gt.good_type_name
		FROM GoodTypes gt
			RIGHT JOIN Goods g ON gt.good_type_id = g.type
			RIGHT JOIN Payments p ON g.good_id = p.good
		WHERE p.date BETWEEN '2004-12-31' AND '2006-01-01'
	);
