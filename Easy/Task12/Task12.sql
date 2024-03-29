SELECT trip, Count(passenger) as count
FROM Pass_in_trip
GROUP BY trip