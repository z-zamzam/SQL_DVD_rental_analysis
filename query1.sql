-- Customers with highest amount of rentals and their contact information

SELECT c.customer_id, c.first_name, c.last_name, c.email, COUNT(r.rental_id) AS num_rentals
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
ORDER BY num_rentals DESC;