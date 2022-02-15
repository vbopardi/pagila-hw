/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT category.name, COUNT(language.name) as sum
FROM category
INNER JOIN film_category
ON film_category.category_id = category.category_id
INNER JOIN film 
ON film_category.film_id = film.film_id
INNER JOIN language
ON language.language_id = film.language_id
GROUP BY category.name
ORDER BY name ASC;
