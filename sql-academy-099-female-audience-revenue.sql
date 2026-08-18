-- SQL Academy 99: Доход с женской аудитории
-- Dialect: PostgreSQL
-- Skills:
-- Source: 
-- https://sql-academy.org/ru/trainer/tasks/99

SELECT SUM(price * items) AS income_from_female
FROM Purchases
WHERE user_gender IN ('female', 'f');
