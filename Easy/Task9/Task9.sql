SELECT name
FROM Trip 
JOIN Company ON Trip.company=Company.id
WHERE town_from LIKE 'Vladivostok'
GROUP BY name