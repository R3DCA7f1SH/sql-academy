SELECT AVG(Distinct age) AS average_age
FROM Customer
	JOIN Purchase ON Purchase.customer_key = Customer.customer_key
	JOIN Product ON Product.product_key=Purchase.product_key
WHERE YEAR(Purchase.date) = 2024 && Product.name LIKE 'Smartwatch'