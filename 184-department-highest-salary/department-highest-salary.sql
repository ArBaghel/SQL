# Write your MySQL query statement below
with rnk as (
    select d.name as Department,e.name as Employee, e.salary as Salary,
    rank()over(partition by d.name order by e.salary desc) as r
    from employee e join department d on e.departmentId=d.id 
)
select Department, Employee, Salary
from rnk where r=1