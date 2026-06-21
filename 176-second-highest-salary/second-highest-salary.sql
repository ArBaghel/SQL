# Write your MySQL query statement below
select (
    select  distinct salary  from employee  order by salary desc limit 1 offset 1
  ) as SecondHighestSalary  ;

-- import pandas as pd

-- def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
--     s=employee['salary'].drop_duplicates().nlargest(2)
--     if len(s)<2:return pd.DataFrame({'SecondHighestSalary':[None]})
--     return pd.DataFrame({'SecondHighestSalary':[s.iloc[-1]]})
    