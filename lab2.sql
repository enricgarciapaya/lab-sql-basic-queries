
#####Challenge####

# 1 Display all available tables in the Sakila database.
USE sakila;


SHOW TABLES;
# 2 Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

#3 Retrieve the following columns from their respective tables:
	#3.1 Titles of all films from the film table
SELECT * FROM film;
#3.2 3.2 List of languages used in films, with the column aliased as language from the language table
 SELECT * FROM language;
 SELECT * FROM film;
SELECT *, language.name
FROM film
INNER JOIN language
ON film.language_id = language.language_id;
 # 3.3 3.3 List of first names of all employees from the staff table
 SELECT first_name FROM staff;
 
# 4 Retrieve unique release years.
SELECT DISTINCT (release_year) FROM film;

#5 Counting records for database insights:
##5.1 Determine the number of stores that the company has.
SELECT COUNT(DISTINCT store_id) FROM store;
##5.2 Determine the number of employees that the company has.
SELECT  COUNT(DISTINCT staff_id) FROM staff;

# 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT( * )FROM inventory;
SELECT COUNT(*) FROM rental ;
#5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) FROM actor;

#6 Retrieve the 10 longest films.
SELECT title FROM film
ORDER BY  LENGTH DESC
LIMIT 10;

# 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT first_name, last_name FROM actor
WHERE first_name = "SCARLETT";

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT title FROM film 
WHERE title LIKE '%ARMAGEDDON%' and length>100;

# 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) FROM film
WHERE special_features LIKE '%Behind the Scenes'
