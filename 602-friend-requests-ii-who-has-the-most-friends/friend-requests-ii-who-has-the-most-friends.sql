# Write your MySQL query statement below
SELECT ID , COUNT(ID) AS NUM FROM
(SELECT requester_id AS ID from RequestAccepted
UNION ALL
SELECT accepter_id AS ID FROM RequestAccepted) TEMP
GROUP BY ID ORDER BY COUNT(ID) DESC LIMIT 1 