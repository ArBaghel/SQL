CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below
      select max(m.salary)
      from employee m
      where(
        select count(distinct o.salary) from employee o 
        where o.salary>m.salary
      )=N-1

  );
END