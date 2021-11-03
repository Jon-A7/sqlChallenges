USE sakila;
SHOW TABLES;
SELECT * FROM film;
SELECT * FROM inventory;

-- QUESTION 1
SELECT * FROM actor;

-- QUESTION 2
SELECT * FROM actor WHERE first_name = "John";

-- QUESTION 3
SELECT * FROM actor WHERE last_name = "Neeson";

-- QUESTION 4
SELECT* FROM actor WHERE (actor_id % 10) = 0;

-- QUESTION 5
SELECT film_id, description FROM film WHERE film_id = 100; 

-- QUESTION 6
SELECT film_id, title, rating FROM film WHERE rating = "R";

-- QUESTION 7
SELECT film_id, title, rating FROM film WHERE rating != "R";

-- QUESTION 8
SELECT film_id, title, length FROM film WHERE length >=1 ORDER BY length asc LIMIT 10;

-- QUESTION 9
SELECT film_id, title, length
FROM film
WHERE length=(
SELECT MAX(length) FROM film
);

-- QUESTION 10
SELECT film_id, title,special_features FROM film WHERE special_features LIKE "%Deleted Scenes";

-- QUESTION 11
SELECT last_name, COUNT(last_name) FROM actor group by last_name HAVING COUNT(last_name) =1 ORDER BY last_name desc;
SELECT DISTINCT last_name FROM actor ORDER BY last_name desc;

 -- QUESTION 12
 SELECT last_name, COUNT(last_name) FROM actor group by last_name HAVING COUNT(last_name) >1 
 ORDER BY COUNT(last_name) desc;
 
  -- QUESTION 13
  CREATE VIEW actorID_most_appearances
  AS
  SELECT actor_id FROM film_actor WHERE actor_id =(SELECT COUNT(actor_id))
  ;
--   SELECT * FROM actorID_most_appearances;
SELECT actor_id, first_name, last_name FROM actor WHERE actor_id=(SELECT actor_id FROM actorID_most_appearances LIMIT 1);

-- QUESTION 14 INCOMPLETE
 SELECT * FROM film WHERE title ="Academy Dinosaur";
 -- DATE_ADD RENTAL, INVENTORY
  
-- QUESTION 15
  SELECT AVG(length) FROM film;
  
-- QUESTION 16
 CREATE VIEW film_categories_lengths
 AS
  SELECT fc.category_id,f.film_id, f.title, f.length
  FROM film f
  JOIN film_category fc ON f.film_id=fc.film_id;
  
SELECT category_id, AVG(length) FROM film_categories_lengths GROUP BY category_id;

-- QUESTION 17
SELECT film_id, title, description FROM film WHERE description LIKE "%Robot" OR description LIKE "%Robots";

-- QUESTION 18 
SELECT COUNT(release_year);
SELECT film_id, title, description, release_year, COUNT(title) FROM film WHERE release_year=2010;

-- QUESTION 19
SELECT * FROM film_category;
SELECT * FROM category;
 
  SELECT fc.category_id,f.film_id, f.title, f.description
  FROM film f
  JOIN film_category fc ON f.film_id=fc.film_id;
  
--   cg.name,
--   JOIN category cg ON fc.catgeory_id=cg.category_id