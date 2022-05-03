

select count(id) as bookings_for_Jigsaw
from bookings 
where screening_id in (
	select id 
	from screenings 
	where film_id=(
		select id
		from films 
		where name="Jigsaw"
	)
);

-- 59 bookings




