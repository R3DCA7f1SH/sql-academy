WITH LaptopTable AS (
	SELECT product_key
	FROM Product
	WHERE name = 'Laptop'
),
MonitorTable AS (
	SELECT product_key
	FROM Product
	WHERE name = 'Monitor'
),
PurchaseDateTable AS (
	SELECT customer_key,
		product_key
	FROM Purchase
	WHERE YEAR(date) = 2024
		AND MONTH(date) = 3
),
LaptopPurchaseTable AS (
	SELECT customer_key
	FROM PurchaseDateTable
		JOIN LaptopTable ON LaptopTable.product_key = PurchaseDateTable.product_key
),
MonitorPurchaseTable AS (
	SELECT customer_key
	FROM PurchaseDateTable
		JOIN MonitorTable ON MonitorTable.product_key = PurchaseDateTable.product_key
)
SELECT name
FROM Customer
JOIN LaptopPurchaseTable ON LaptopPurchaseTable.customer_key=Customer.customer_key
INTERSECT
SELECT name
FROM Customer
JOIN MonitorPurchaseTable ON MonitorPurchaseTable.customer_key=Customer.customer_key