select * from products;

alter table products
add column coffee_origin varchar(30);


alter table products 
drop column coffee_origin;
-- truncate table table_name  -> deletes all rows from the table
