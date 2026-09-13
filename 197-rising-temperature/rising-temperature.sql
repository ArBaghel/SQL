# Write your MySQL query statement below
select a.id from weather a 
join weather b on datediff(a.recorddate,b.recorddate)=1
where a.temperature>b.temperature 
