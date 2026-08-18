-- SQL Academy 101: Первый заказ пользователя
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/101

WITH First_tr AS (
	SELECT user_id,
		item,
		ROW_NUMBER() OVER (
			PARTITION BY user_id
			ORDER BY transaction_ts
		) AS counter
	FROM Transactions
)
SELECT user_id,
	item
FROM First_tr
WHERE counter = 1;
