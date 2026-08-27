# Write your MySQL query statement below
select round(count(a.player_id)/count(*),2) as fraction from(
    select player_id,min(event_date) as min_date
    from activity group by player_id
)f
left join activity a on a.player_id=f.player_id
and datediff(a.event_date,f.min_date)=1;