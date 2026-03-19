-- Do subscribed customers spend more?
SELECT subscription_status,
COUNT(customer_id) AS total_customers,
ROUND(AVG(purchase_amount), 2) AS average_spent,
ROUND(SUM(purchase_amount), 2) AS total_spent
FROM customer
GROUP BY subscription_status
ORDER BY average_spent, total_spent DESC