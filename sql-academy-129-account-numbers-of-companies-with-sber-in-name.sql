-- SQL Academy 129: Номера счетов компаний с SBER в названии
-- Dialect: PostgreSQL
-- Skills:
-- Source:
-- https://sql-academy.org/ru/trainer/tasks/129


SELECT con.contract_number
FROM Contract con
	RIGHT JOIN Company_contract cc ON con.contract_id = cc.contract_id
	LEFT JOIN Company com ON com.company_id = cc.company_id
WHERE com.company_name LIKE '%SBER%';
