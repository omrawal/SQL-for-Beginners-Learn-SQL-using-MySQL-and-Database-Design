
select concat(c.first_name," ",c.last_name) as fullname, count(b.id) as no_booking
from bookings b
join customers c on c.id=b.customer_id
group by c.first_name,c.last_name
order by no_booking desc
limit 5;


-- David May	16
-- John Smith	13
-- Steve Shoogan	12
-- Ray Wilkinson	12
-- David Paul	12