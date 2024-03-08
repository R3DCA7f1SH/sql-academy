SELECT name, Count(Pass_in_trip.passenger) as count 
FROM Passenger
    JOIN Pass_in_trip ON Passenger.id=Pass_in_trip.passenger
GROUP BY name,Pass_in_trip.passenger
ORDER BY count DESC, name ASC