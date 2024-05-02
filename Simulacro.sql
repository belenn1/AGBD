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

5

6

7

8

9

10

