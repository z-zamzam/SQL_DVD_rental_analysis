-- Average rental duration of films for each rating category.

SELECT f.rating, AVG(f.rental_duration) AS avg_rental_duration
FROM film f
GROUP BY f.rating
ORDER BY avg_rental_duration desc;