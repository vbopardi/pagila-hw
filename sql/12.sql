/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
SELECT payment.customer_id, customer.first_name, customer.last_name, sum(payment.amount) as sum
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id 
GROUP BY payment.customer_id, first_name, last_name
ORDER BY last_name ASC 
