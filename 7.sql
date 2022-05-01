-- joins
use coffee_store;
 select * from products;
 select * from orders;
 
 select products.product_name,orders.order_time from orders
 inner join products on orders.product_id=products.id

