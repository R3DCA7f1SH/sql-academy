WITH nameFindTable AS (
	SELECT id
	FROM Passenger
	WHERE name LIKE 'Bruce Willis'
),
passinttriptable AS (
    SELECT trip
    FROM Pass_in_trip JOIN nameFindTable ON nameFindTable.id=Pass_in_trip.passenger
)
SELECT town_to
FROM Trip
JOIN passinttriptable ON Trip.id=passinttriptable.trip