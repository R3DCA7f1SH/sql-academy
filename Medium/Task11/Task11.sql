SELECT name
FROM Passenger
GROUP BY name
HAVING LENGTH(name) = (
		SELECT LENGTH(name) AS Length
		FROM Passenger
		GROUP BY Length
		ORDER BY Length DESC
		LIMIT 1
	)