-- Average purchase amount between standard and express shipping
SELECT shipping_type,
ROUND(AVG(purchase_amount), 2)
FROM customer
WHERE shipping_type in ('Standard', 'Express')
GROUP BY shipping_type