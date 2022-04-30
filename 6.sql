use coffee_store;
select * from customers
limit 5;

select * from customers
where gender="M";

select * from products
where coffee_origin ="Brazil"
and price > 2;

select * from products
where coffee_origin ="Brazil"
or price > 3;

select * from products
where coffee_origin <>"Brazil";

select * from customers
where phone_number is null;

select * from customers
where phone_number is not null;

-- exercise 1

select first_name,phone_number 
from customers
where gender="F"
and last_name="Bluth";

select product_name 
from products 
where coffee_origin ="Sri Lanka"
or price>3.00;

select count(*)
from customers
where gender="M"
and phone_number is null;

-- end of exercise 1

select * from customers
where last_name in ("Taylor","Armstrong","Nash");

select * from customers
where first_name not in ("Katie","John","George");

select * from orders
where order_time between "2017-01-01" and "2017-01-07";

select * from orders
where customer_id between 5 and 10;

select * from customers
where last_name like "W%"; 

select * from customers
where last_name like "%o%"; 

select * from customers
where first_name like "_o%";

select * from products
order by product_name ;

select * from products
order by product_name desc;

-- Exercise 2

select product_name,price 
from products
where coffee_origin in ("Colombia","Indonesia")
order by product_name;

select * 
from orders
where customer_id in (2,4,6,8)
and order_time like"2017-02-%";

select first_name,phone_number
from customers
where last_name like "%ar%";

-- end of exercise 2


select distinct coffee_origin 
from products;

select * 
from customers
limit 5 offset 5;

select product_name as coffee, coffee_origin as country
from products;

-- Exercise 3

select distinct last_name
from customers
order by last_name asc;

select *
from orders 
where customer_id=1
and order_time like "2017-02-%"
order by order_time
limit 3;

select product_name,price as retail_price,coffee_origin
from products;



-- end of exercise 3
 