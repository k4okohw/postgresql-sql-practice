-- SQL Academy 68: Последний арендатор комнаты
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/68


WITH Last_res AS (
	SELECT room_id,
		user_id,
		end_date,
		RANK() OVER (
			PARTITION BY room_id
			ORDER BY end_date DESC
		) AS rank
	FROM Reservations
	WHERE room_id IN (
			SELECT r.id
			FROM Rooms r
				RIGHT JOIN Reservations res ON res.room_id = r.id
			GROUP BY r.id
			HAVING COUNT(*) > 0
		)
)
SELECT lr.room_id,
	u.name,
	lr.end_date
FROM Last_res lr
	LEFT JOIN Users u ON lr.user_id = u.id
WHERE lr.rank = 1;
