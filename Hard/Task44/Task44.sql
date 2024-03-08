SELECT Max(FLOOR(DATEDIFF(CURDATE(),Student.birthday)/365)) AS max_year
FROM Student
  JOIN Student_in_class ON Student.id = Student_in_class.student
WHERE Student_in_class.class IN (
    SELECT Id
    FROM Class
    WHERE name LIKE '10 %'
  )