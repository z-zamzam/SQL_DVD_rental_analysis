-- Staff members who have handled the most payments.

SELECT s.staff_id, s.first_name, s.last_name, COUNT(p.payment_id) AS total_payments
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name
ORDER BY total_payments DESC;