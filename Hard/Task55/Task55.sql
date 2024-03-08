DELETE From Company
Where name in (
    WITH table2 AS (
      SELECT id, name,
        counter
      FROM Company
        JOIN (
          SELECT company,
            COUNT(company) AS counter
          FROM Trip
          GROUP BY company
        ) AS table1 ON table1.company = Company.id
    ),
    table3 AS (SELECT MIN(counter) AS minimum FROM table2),
    table4 AS ( 
    SELECT * FROM table2,table3
    HAVING table2.counter = table3.minimum)
    SELECT name FROM table4)