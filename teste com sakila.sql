use sakila;

show tables;
select * from actor;
select * from actor_info;
select * from address;
select * from category;
select * from city;
select * from customer;
select * from customer_list;
select * from film;
select * from film_actor;
select * from film_list;
select * from film_text;
select * from inventory;
select * from language;
select * from nicer_but_slower_film_list;
select * from payment;
select * from rental;
select * from sales_by_film_category;
select * from sales_by_store;
select * from staff;
select * from staff_list;
select * from store;

-- Select
select first_name, last_name from customer;
select * from film where length > 120;
select * from film where release_year = 2006;
select * from customer where active = 1;

-- Join
select rental.rental_id, customer.first_name, customer.last_name
from rental
inner join customer
on rental.customer_id = customer.customer_id;

select payment.amount, customer.first_name, customer.last_name
from payment
inner join customer
on payment.customer_id = customer.customer_id;

select film.title, rental.customer_id, customer.first_name, customer.last_name, inventory.film_id
from customer
inner join rental on customer.customer_id = rental.customer_id
inner join inventory on rental.inventory_id = inventory.inventory_id
inner join film on inventory.film_id = film.film_id;

select staff_list.name, store.store_id, address.address, address.district
from staff_list
inner join staff on staff_list.ID = staff.staff_id
inner join store on staff.store_id =store.store_id
inner join address on store.address_id = address.address_id;


