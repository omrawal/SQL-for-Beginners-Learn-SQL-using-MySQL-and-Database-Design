
select f.name,count(s.id)
from films f
join screenings s
on f.id=s.film_id and s.room_id=(
	select r.id 
	from rooms r
	where r.name ="Chaplin"
)
group by f.name
order by count(s.id) desc 
limit 1;


-- geostorm 13
