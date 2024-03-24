SELECT city, COUNT(city) as warehouse_count
FROM Warehouses
WHERE ISNULL(date_close)=1
GROUP BY city
HAVING COUNT(city)>80