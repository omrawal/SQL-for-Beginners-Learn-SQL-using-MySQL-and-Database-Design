use cinema_booking_system;
show tables;


-- uncorelated sub query -> inner query can run independently
select id,start_time
from screenings
where film_id in (select id from films where length_min>120);

-- corelated subquery -> innder query depends on outer query for some data
select screening_id, customer_id,
(select count(seat_id)
from reserved_seat 
where booking_id=b.id)
from bookings b;




-- exercise 1
select name,length_min
from films 
where length_min>(
select avg(length_min) from films 
);

select max(id), min(id)
from (
	select film_id,count(id) as id
from screenings
group by film_id
)a;



select name,(select count(id)
from screenings
where film_id=f.id)
from films f
group by name;











-- end of exercise

