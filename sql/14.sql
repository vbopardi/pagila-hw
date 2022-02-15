/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT film.title
FROM film
INNER JOIN film_category
ON film_category.film_id = film.film_id
INNER JOIN category 
ON category.category_id = film_category.category_id
WHERE category.name = 'Family'

