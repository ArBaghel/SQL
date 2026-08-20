# Write your MySQL query statement below
select r.contest_id,round(count(distinct r.user_id)*100.0/count(distinct u.user_id),2) as percentage
from users u, register r
group by r.contest_id
order by percentage desc,r.contest_id asc;
