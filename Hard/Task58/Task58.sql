Insert Into Reviews
WITH userTable AS (
    SELECT id as userId
    From Users
    Where name Like 'George Clooney'
),
roomTable AS (
    SELECT id as roomId
    From Rooms
    Where address like '11218, Friel Place, New York'
),
reservTable AS (
    SELECT id as reservId
    From Reservations,userTable,roomTable
    Where user_id = userTable.userId AND room_id = roomTable.roomId
),
countTable AS (
    SELECT Count(*) as counter
    From Reviews
),
insertTab AS (
    SELECT countTable.counter+1, reservTable.reservId, 5
    From countTable,reservTable
)
SELECT * from insertTab