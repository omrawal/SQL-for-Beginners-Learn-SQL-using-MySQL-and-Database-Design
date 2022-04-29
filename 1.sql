SHOW DATABASES;
CREATE database coffee_store;
use coffee_store;
show tables;
-- drop database test;
create table products(
id int auto_increment primary key,
product_name varchar (30),
price decimal(3,2)
);

-- decimal(Total Number of digits, number of digits after decimal)

create table customers(
id int auto_increment primary key,
first_name varchar (30),
last_name varchar (30),
gender enum("M","F"),
phone_number varchar(11)
);


create table orders(
id int auto_increment primary key,
product_id int,
customer_id int,
order_time datetime,
foreign key(product_id) references products(id),
foreign key(customer_id) references customers(id)
);

show tables;