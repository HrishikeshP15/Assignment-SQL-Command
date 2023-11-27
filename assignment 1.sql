-- question 1: Identify the primary keys and foreign keys in maven movies db. Discuss the differences.
-- A Primary key is a unique identifier for each record in a table. A table can have only one primary key. A primary key value cannot be deleted from the parent table
-- A Foreign key establishes a relationship between tables by referencing the primary key of another table. Ensures uniqueness and data integrity within a single table a foreign key can be deleted from the child's table.
-- Primary key is a combination of UNIQUE and Not Null constraints.
-- Foreign contain duplicate values and a table in a relational database.

-- question 2: List all details of actors.
select * from actor;

-- question 3: List all customer information from DB.
select * from customer;

-- question 4: list different countries. 
select distinct(country) from country;

-- question 5: Display all active customers.
select customer_id, first_name, last_name, active from customer
where active = 1;

-- question 6: List of all rental IDs for customer with ID 1. 
select rental_id, customer_id from rental
where customer_id = 1 ;

-- question 7: Display all the films whose rental duration is greater than 5 . 
select * from film
where rental_duration > 5; 

-- question 8: List the total number of films whose replacement cost is greater than $15 and less than $20. 
select count(title) as total_number from film
where replacement_cost between 15 and 20;

-- question 9: Find the number of films whose rental rate is less than $1.
select count(*) as Num_film from film
where rental_rate < 1;

-- question 10: Display the count of unique first names of actors.
select count(distinct first_name) from actor;

-- question 11: Display the first 10 records from the customer table.
select * from customer
limit 10 ;

-- question 12: Display the first 3 records from the customer table whose first name starts with ‘b’. 
select * from customer 
where first_name like 'b%'
limit 3;

-- question 13: Display the names of the first 5 movies which are rated as ‘G’. 
select title, rating from film
where rating = 'G'
limit 5;

-- question 14: Find all customers whose first name starts with "a". 
select first_name from customer
where first_name like 'a%';

-- question 15: Find all customers whose first name ends with "a". 
select first_name from customer
where first_name like '%a';

-- question 16: Display the list of first 4 cities which start and end with ‘a’ . 
select city from city
where city like 'a%a'
limit 4;

-- question 17: Find all customers whose first name have "NI" in any position.
select first_name from customer
where first_name like '%NI%';

-- question 18: Find all customers whose first name have "r" in the second position .
select first_name from customer
where first_name like '_r';

-- question 19: Find all customers whose first name starts with "a" and are at least 5 characters in length. 
select first_name from customer
where first_name like 'a_____%';

-- question 20: Find all customers whose first name starts with "a" and ends with "o". 
select first_name from customer
where first_name like 'a%o';

-- question 21: Get the films with pg and pg-13 rating using IN operator. 
select * from film
where rating in ( 'pg', 'pg-13');

-- question 22: Get the films with length between 50 to 100 using between operator. 
select * from film
where length between 50 and 100;

-- question 23: Get the top 50 actors using limit operator. 
select * from actor
limit 50;

-- question 24: Get the distinct film ids from inventory table. 
select distinct(film_id) from inventory;










































































