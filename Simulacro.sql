1 
SELECT title FROM film
ORDER BY  title ASC

2
SELECT DISTINCT rating FROM film
ORDER BY rating ASC

3
SELECT title, rental_rate, rating FROM film
WHERE rating LIKE "%PG%" 
ORDER BY rental_rate DESC, title ASC

4
SELECT city, country FROM city t
JOIN country c ON t.country_id = c.country_id 
ORDER BY c.country_id

5
SELECT country,count(ci.city) as cant_ciudad FROM city ci
JOIN country c on ci.country_id = c.country_id
GROUP by c.country_id
ORDER by cant_ciudad DESC

6
SELECT country,count(ci.city) FROM city ci
JOIN country c on ci.country_id = c.country_id
GROUP by c.country_id
HAVING count(ci.city) >= 2
ORDER by count(ci.city) ASC

7 /*falta completar*/
SELECT min(rental_date), max(rental_date) FROM rental

8
SELECT count(fa.actor_id) as cant_Actors, f.title FROM film f
JOIN film_actor fa on f.film_id = fa.film_id
GROUP BY fa.actor_id
ORDER BY cant_Actors ASC
LIMIT 10

9

10

