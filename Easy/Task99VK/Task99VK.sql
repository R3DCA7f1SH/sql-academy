SELECT SUM(price*items) as income_from_female
FROM Purchases
WHERE user_gender LIKE 'f%'