-- Write your PostgreSQL query statement below
select distinct(c.customer_id) from customer c 
left join product p using(product_key)
group by c.customer_id
having count(distinct p.product_key)=(select count(*) from product)