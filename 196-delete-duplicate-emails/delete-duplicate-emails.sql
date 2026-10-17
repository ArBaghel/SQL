# Write your MySQL query statement below
with dup as(
    select id, email,
    row_number()over(partition by email order by id) as rn
    from person
)
delete from person
where id in(select id from dup where rn>1)