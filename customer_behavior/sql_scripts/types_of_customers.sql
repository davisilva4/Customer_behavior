-- Number of previous purchases and show the count of each segment
WITH customer_type AS (
    SELECT 
        customer_id, 
        previous_purchases,
        CASE
            WHEN previous_purchases = 1 THEN 'New'
            WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS customer_segment
    FROM customer
)
SELECT 
    customer_segment, 
    COUNT(*) AS "Number of customers"
FROM customer_type
GROUP BY customer_segment;