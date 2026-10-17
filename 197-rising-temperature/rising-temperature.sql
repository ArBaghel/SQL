# Write your MySQL query statement below
with rising as (
    select id,temperature,recordDate,
    lag(temperature)over(order by recordDate) as r,
    lag(recordDate)over(order by recordDate) as d
    from weather
)
select id as Id from rising 
where temperature>r and datediff(recordDate,d)=1