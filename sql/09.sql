/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name, last_name,Sum(amount) as sum
FROM staff
INNER JOIN payment ON staff.staff_id = payment.staff_id
AND payment.payment_date between '2020-01-01 00:00:00' AND '2020-02-01 00:00:00' 
GROUP BY first_name, last_name;
