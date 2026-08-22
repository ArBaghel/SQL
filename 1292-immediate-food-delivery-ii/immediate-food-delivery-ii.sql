# Write your MySQL query statement below
with immediate as(
     select
        delivery_id,customer_id ,min(order_date) as mo_d, min(customer_pref_delivery_date) as mcd
    from delivery 
    group by customer_id
)
select round(sum(if(datediff(mo_d,mcd)=0,1,0)*100)/count(mo_d),2) as immediate_percentage from immediate;
