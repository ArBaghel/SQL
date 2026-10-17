# Write your MySQL query statement below
select distinct l.num as ConsecutiveNums 
from (select num,
    lead(num)over(order by id)as nxt,
    lag(num) over (order by id) as pr
    from logs) l
where l.num=l.nxt  and l.num=l.pr

