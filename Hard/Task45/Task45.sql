SELECT classroom
FROM Schedule
GROUP BY classroom
HAVING Count(classroom) = (
        SELECT Max(counter)
        FROM 
        (
        SELECT Count(classroom) AS counter
        FROM Schedule
        GROUP BY classroom
        ORDER BY counter DESC
      ) as t1
) 