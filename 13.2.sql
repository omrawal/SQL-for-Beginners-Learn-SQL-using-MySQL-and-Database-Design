
select f.name,s.film_id,count(s.id) as showCount
from screenings s
join films f on s.film_id= f.id
group by s.film_id
order by showCount desc
limit 1;

-- jigsaw 26