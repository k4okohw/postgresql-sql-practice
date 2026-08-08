-- LeetCode 602: Friend Requests II: Who Has the Most Friends
-- Difficulty: Medium
-- Dialect: PostgreSQL
-- Skills: UNION ALL, SUBQUERY 
-- Source:
-- https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/


SELECT id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
) AS all_ids
GROUP BY id
