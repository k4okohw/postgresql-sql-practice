-- LeetCode 175: Combine Two Tables
-- Difficulty: Easy
-- Dialect: PostgreSQL
-- Skills: LEFT JOIN 
-- Source:
-- https://leetcode.com/problems/combine-two-tables/


SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a ON p.personId = a.personId;
