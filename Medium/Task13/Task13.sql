SELECT name
FROM Passenger
GROUP BY name
Having Count(name) > 1