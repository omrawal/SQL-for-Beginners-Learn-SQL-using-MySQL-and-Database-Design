-- concatenation
-- select concat(col1,col2) as new_col_name from table;
use cinema_booking_system;

select concat(first_name," ",last_name)
as full_name
from customers;

select substring("Example",3,3) -- start , length
as sub;
select substring(name,5,4)as shortName from films;
select substring(name,-4,3)as shortName from films;

select upper(name)as upper_name from films;
select lower(name)as lower_name from films;


-- exercise 1
select concat(name,": ",length_min)as k
from films;

select substring(email,5) as five_email
from customers;

select lower(first_name),upper(last_name)
from customers
where last_name="Smith";

select substring(name,-3) as last_three
from films;

select concat(substring(first_name,1,3)," ",substring(last_name,1,3))
from customers;
-- end of exercise

select date("2018-06-05");
select date(start_time) from screenings;
select time(start_time) from screenings;
select * from screenings 
where date (start_time) ='2017-10-03';
select * from screenings 
where date (start_time) between '2017-10-03' and '2017-10-05';

select month("2018-06-05");
select month(start_time) from screenings;
select * from screenings 
where month (start_time) ='10';

select year("2018-06-05");
select year(start_time) from screenings;
select * from screenings 
where year (start_time) ='2017';


-- Exercise 2
select film_id,start_time
from screenings
where date(start_time)="2017-10-20"; 

select *
from screenings
where date(start_time) between '2017-10-06' and "2017-10-13";

select * 
from screenings
where month(start_time) ="10" 
and year(start_time)='2017';

-- end of exercise


