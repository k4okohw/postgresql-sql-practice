-- SQL Academy 65: Рейтинг арендованных комнат
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/65


SELECT res.room_id,
	FLOOR(AVG(rev.rating)) AS rating
FROM Reservations res
	LEFT JOIN Reviews rev ON res.id = rev.reservation_id
GROUP BY res.room_id
HAVING FLOOR(AVG(rev.rating)) IS NOT NULL;
