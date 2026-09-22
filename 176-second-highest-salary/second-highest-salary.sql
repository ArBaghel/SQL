# Write your MySQL query statement below
SELECT max(salary) as SecondHighestSalary
from employee where salary<(select max(salary) from employee)