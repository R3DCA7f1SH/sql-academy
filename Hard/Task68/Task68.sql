SELECT DISTINCT room_id, Users.name as name, end_date
FROM Reservations
JOIN Users ON Users.id=Reservations.user_id
WHERE end_date IN (
SELECT MAX(end_date)FROM Reservations GROUP BY room_id)