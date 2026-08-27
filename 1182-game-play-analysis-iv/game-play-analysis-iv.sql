-- Write your PostgreSQL query statement below
select round(count(a.player_id)::decimal/count(*),2) as fraction from
(
    select player_id,min(event_date) as min_date from activity group by player_id
)f
left join activity a on f.player_id=a.player_id
and a.event_date-f.min_date=1;