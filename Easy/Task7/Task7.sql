SELECT plane
FROM Trip
WHERE town_to LIKE 'Moscow'
GROUP BY plane