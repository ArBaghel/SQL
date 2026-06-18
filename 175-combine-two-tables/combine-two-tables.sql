# Write your MySQL query statement below
select p.firstname, p.lastname,a.city,a.state
from person p left join  address a on p.personId=a.personId;

-- import pandas as pd

-- def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
--     result=pd.merge(person,address,on= 'personId',how='left')
--     result=result[[ 'firstName','lastName','city','state' ]]
--     return result
    