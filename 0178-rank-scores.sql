-- LeetCode 178: Rank Scores
-- Difficulty: Medium
-- Dialect: PostgreSQL
-- Skills: DENSE_RANK(), WINDOW FUNCTION 
-- Source:
-- https://leetcode.com/problems/rank-scores/


SELECT 
    score, 
    DENSE_RANK() OVER (ORDER BY score DESC) AS rank
FROM Scores;
