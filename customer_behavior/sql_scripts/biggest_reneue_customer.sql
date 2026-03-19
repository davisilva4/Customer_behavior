-- Which customers used discount, but still spent more than the average?
SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied == 'Yes' and 
purchase_amount >= (SELECT AVG(purchase_amount) FROM customer)