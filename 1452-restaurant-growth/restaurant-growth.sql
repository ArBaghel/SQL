# Write your MySQL query statement below
with cte as (
    select visited_on, sum(amount) as amt
    from customer
    group by visited_on
)
select visited_on , sum(amt) over(order by visited_on rows between 6 preceding and current row)as amount,
round(avg(amt) over(order by visited_on rows between 6 preceding and current row),2) as average_amount
from cte  
limit 100000 offset 6

