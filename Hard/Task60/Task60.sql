SELECT teacher
FROM Schedule
JOIN Class ON Class.id=Schedule.class
WHERE name LIKE '11%'
GROUP BY teacher
HAVING COUNT(DISTINCT name)=2