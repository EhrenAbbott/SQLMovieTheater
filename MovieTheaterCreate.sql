create table movie ( 
	movie_id serial primary key, 
	rating VARCHAR(10),
	box_office_rank Integer,
	runtime VARCHAR(15)
);

create table customer (
	customer_id serial primary key,
	first_name VARCHAR(100),
	last_name  VARCHAR(100),
	address VARCHAR(150), 
	billing_info VARCHAR(150),
	foreign key (last_movie_seen) references movie(movie_id)
); 


create table ticket (
	ticket_id serial primary key,
	foreign key (movie_id) references movie(movie_id),
	foreign key (customer_id) references customer(customer_id)
);


create table employee (
	employee_id serial primary key, 
	first_name VARCHAR(100), 
	last_name VARCHAR(100), 
	foreign key (most_sold_movie) references movie(movie_id)
);


create table concessions (
	item_id serial primary key, 
	price NUMERIC(3,2), 
	foreign key (best_salesperson) references employee(employee_id)
);

