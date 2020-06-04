SELECT name, customers_number FROM lawyers WHERE customers_number = 
  (
    SELECT MAX(customers_number)
    FROM lawyers
  )

UNION ALL

SELECT name, customers_number FROM lawyers WHERE customers_number = 
  (
    SELECT MIN(customers_number)
    FROM lawyers
  )

UNION ALL

SELECT 'Average' as name, TRUNC(AVG(customers_number))
FROM lawyers

