SELECT good_name
FROM Payments
JOIN Goods ON Goods.good_id=Payments.good
GROUP BY Payments.good
HAVING COUNT(Payments.good)>1