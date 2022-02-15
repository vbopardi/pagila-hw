/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT title, SUM(amount) as profit
FROM film
INNER JOIN inventory 
ON inventory.film_id = film.film_id
INNER JOIN rental 
ON rental.inventory_id = inventory.inventory_id
INNER JOIN payment 
ON payment.rental_id = rental.rental_id

GROUP BY title
ORDER BY profit DESC;
