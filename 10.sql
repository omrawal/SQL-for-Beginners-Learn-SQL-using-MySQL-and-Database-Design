use cinema_booking_system;
show tables;

select count(*) from customers;
select  count(distinct last_name) from customers;  -- count doesnot include null values

select sum(no_seats) from rooms
where id>1;

select * from films;
select min(length_min) from films;
select max(length(name)) from films;

select avg(length_min) from films
where length_min > 120;

-- exercise 1
select count(*) from bookings
where customer_id=10; -- 6

select count(*) 
from screenings 
where (select id from films where name ="Blade Runner 2049") =film_id; -- 24

select  count(distinct customer_id) 
from bookings; -- 105

-- end of exercise

-- returns the count of bookings per customer_id 
select customer_id,count(id) 
from bookings
group by customer_id
order by customer_id;

-- returns count of bookings the customer made per screening id

select customer_id ,screening_id,count(id) 
from bookings
group by customer_id,screening_id
order by customer_id;

select f.name, s.start_time,c.first_name,c.last_name,count(b.id)
from films f
join screenings s on f.id=s.film_id
join bookings b on s.id=b.screening_id
join customers c on b.customer_id=c.id
group by f.name, c.last_name,c.first_name,s.start_time
order by s.start_time;


-- "group by" cannot be followed by "where" 
-- we have to use "having" along with "group by"

select customer_id,screening_id, count(id)
from bookings 
group by customer_id,screening_id
having customer_id=10;



-- exercise 2

select b.customer_id,count(s.id)
from customers c 
join bookings b on b.customer_id=c.id
join reserved_seat s on b.id=s.booking_id
group by b.customer_id;

-- or

 select b.customer_id,count(rs.id)
 from bookings b
 join reserved_seat rs on b.id=rs.booking_id
 group by b.customer_id;




select f.name,f.length_min,count(s.id)
from films f
join screenings s on s.film_id=f.id
group by f.name,f.length_min
having f.length_min > 120;






-- end of exercise 2
















