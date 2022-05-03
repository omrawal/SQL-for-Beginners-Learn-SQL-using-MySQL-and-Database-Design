-- joins

use coffee_store;
 select * from products;
 select * from orders;
 
 select products.product_name,orders.order_time 
 from orders
 inner join products on orders.product_id=products.id;

select p.product_name,o.order_time
from orders o
join products p on o.product_id=p.id;

update orders
set customer_id =null
where id=1;

select * from orders;

select o.id,c.phone_number,c.last_name,o.order_time
from orders o 
left join customers c on c.id=o.customer_id
order by o.order_time;

select o.id,c.phone_number,c.last_name,o.order_time
from orders o 
right join customers c on c.id=o.customer_id
order by o.order_time;

select p.product_name,p.price,c.first_name,c.last_name,o.order_time
from products p 
join orders o on p.id=o.product_id
join customers c on c.id=o.customer_id;



-- exercise 1

select o.id,c.phone_number
from orders o
join customers c on  o.customer_id=c.id
where o.product_id=4;

select * 
from orders
limit 5;

select p.product_name,o.order_time
from products p
join orders o on o.product_id=p.id
where p.product_name="Filter" 
and o.order_time between "2017-01-15" and "2017-02-14";

select p.product_name,p.price,o.order_time
from products p 
left join orders o on o.product_id=p.id
left join customers c on o.customer_id=c.id
where c.gender="F" and o.order_time like "2017-01-%";


-- end exercise 1

