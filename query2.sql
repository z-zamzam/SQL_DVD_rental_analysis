-- Total revenue for each store

SELECT s.store_id, s.manager_staff_id, SUM(p.amount) AS total_revenue
FROM store s
JOIN staff st ON s.manager_staff_id = st.staff_id
JOIN payment p ON st.staff_id = p.staff_id
GROUP BY s.store_id, s.manager_staff_id;