-- SQL Academy 43: Преподаватели физкультуры
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/43


SELECT DISTINCT t.last_name
FROM Teacher t
	RIGHT JOIN Schedule sch ON t.id = sch.teacher
WHERE sch.subject = (
		SELECT id
		FROM Subject
		WHERE name = 'Physical Culture'
	)
ORDER BY t.last_name;
