SELECT name
FROM Company
JOIN Trip ON Trip.company=Company.id
WHERE plane LIKE 'Boeing'
GROUP BY name