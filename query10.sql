-- Monthly revenue correlation

WITH monthly_revenue AS (
    SELECT EXTRACT(MONTH FROM payment_date) AS month, SUM(amount) AS revenue
    FROM payment
    GROUP BY EXTRACT(MONTH FROM payment_date)
)
SELECT corr(month, revenue) AS revenue_correlation
FROM monthly_revenue;