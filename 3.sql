create database test;
use test;
create table addresses(
id int,
house_number int,
city varchar(20),
postcode varchar(7)
);

create table people(
id int,
first_name varchar(20),
last_name varchar(20),
address_id int
);

create table pets(
id int,
pet_name varchar(20),
species varchar(20),
owner_id int
);

-- alter table (table_name)
-- add primary key (column-name)

-- alter table (table_name)
-- drop primary key (column-name)

describe addresses;

alter table addresses 
add primary key (id);

alter table addresses 
drop primary key;

describe people;

alter table people
add primary key(id);


-- alter table (Table name)
-- add constraint (constraint name)
-- foreign key (column name) references (Column name)

-- alter table (Table name)
-- drop foreign key (constraint name);

describe people;
describe addresses;


alter table people 
add constraint fk_peopleaddress
foreign key (address_id) references addresses(id);

alter table people 
drop index fk_peopleaddress;

select * from pets;

alter table pets
add constraint u_species unique (species);

describe pets;

alter table pets
drop index u_species;

alter table pets 
change  `animal_type` `species` varchar(20); 
select * from pets;


alter table pets modify pet_name varchar(30);
describe pets




