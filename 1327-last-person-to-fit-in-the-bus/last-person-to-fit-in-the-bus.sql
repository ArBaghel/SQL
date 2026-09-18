# Write your MySQL query statement below
-- select q1.person_name from queue q1
-- join queue q2 on q1.turn>=q2.turn
-- group by q1.turn
-- having sum(q2.weight)<=1000
-- order by q1.turn desc limit 1

select person_name from(
    select person_name,sum(weight) over (order by turn) as total_weight from queue
) as sub
where total_weight<=1000
order by total_weight desc limit 1