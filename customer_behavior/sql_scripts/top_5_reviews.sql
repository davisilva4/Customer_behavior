-- Top five average review ratings
SELECT item_purchased, ROUND(AVG(review_rating), 2) as average_product_rating
FROM customer
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC
LIMIT 5