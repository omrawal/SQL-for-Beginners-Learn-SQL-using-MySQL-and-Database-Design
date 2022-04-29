-- section 4 exercise
show tables;

alter table pets
add primary key (id);

describe pets;

describe people;

alter table people
add primary key (id);

describe people;

alter table pets
add foreign key (owner_id) references people(id);

describe pets;


alter table people 
add column email varchar(20);

describe people;

alter table people 
add constraint unique (email);

describe people;

describe pets;
alter table pets
change `pet_name` `first_name` varchar(20);
describe pets;

describe addresses;

alter table addresses
modify postcode char(7);

describe addresses;




