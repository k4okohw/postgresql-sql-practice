-- SQL Academy 44: Максимальный возраст в 10 классах
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/44


WITH Stud_in_10th AS (
	SELECT sic.student,
		st.birthday
	FROM Student_in_class sic
		RIGHT JOIN Class c ON sic.class = c.id
		LEFT JOIN Student st ON st.id = sic.student
	WHERE c.name LIKE '10%'
)
SELECT EXTRACT(
		YEAR
		FROM AGE(NOW(), birthday)
	) AS max_year
FROM Stud_in_10th
ORDER BY max_year DESC
LIMIT 1;
