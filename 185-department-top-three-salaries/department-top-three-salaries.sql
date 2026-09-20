# Write your MySQL query statement below
select Department ,Employee , Salary from(
    select d.name as department, e.name as employee,e.salary,
dense_rank()over(partition by d.name order by e.salary desc) as ranks
from employee e join department d 
on e.departmentid=d.id
) temo 
where ranks <=3
