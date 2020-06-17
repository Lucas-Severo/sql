SELECT
  (
    SELECT records.temperature
    FROM records
    WHERE records.mark = contador.mark
    LIMIT 1
  ),
  
  (
    SELECT COUNT(records.mark) AS number_of_records 
    FROM records
    WHERE records.mark = contador.mark
  )
FROM 
  (
    SELECT DISTINCT records.mark AS mark
    FROM records
  ) AS contador
ORDER BY contador.mark;
