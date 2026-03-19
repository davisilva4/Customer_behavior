-- Are costumers who are repeat buyers more likely to subscbribe?
SELECT subscription_status,
COUNT(customer_id) as repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status