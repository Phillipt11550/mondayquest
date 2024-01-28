-- 1.How many actors are there with the last name ‘Wahlberg’? Nick and Daryl

select * from actor
where last_name = 'Wahlberg';

-- 2.How many payments were made between $3.99 and $5.99?  5,602 Payments
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
ORDER BY amount DESC;


-- 3.What film does the store have the most of? (search in inventory) 350 Garden Island

SELECT film_id, COUNT(*) AS count
FROM inventory
GROUP BY film_id
ORDER BY count DESC
LIMIT 1;

-- 4.How many customers have the last name ‘William’

SELECT last_name,first_name 
FROM customer
WHERE last_name = 'William';

-- 5.What store employee (get the id) sold the most rentals? Mike 8,040 rental count

SELECT staff_id, COUNT(*) AS rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;
-- 6.How many different district names are there? 378

SELECT COUNT(DISTINCT district) AS district_count
FROM address;


--7. What film has the most actors in it? (use film_actor table and get film_id) Lambs Cincinatti film_id 508

SELECT film_id, COUNT(*) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 13

SELECT COUNT(*) AS count
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250)
-- No Answer
SELECT customer_id , COUNT(*) AS rental_count
FROM rental
WHERE customer_id BETWEEN 380 AND 430
GROUP BY payment_id
HAVING COUNT(*) > 250;


--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
-- 5 Rating category and PG-13 has the most movies 223

SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;
