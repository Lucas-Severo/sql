SELECT 
  frequency.most_frequent_value 
FROM
  (
    SELECT amount AS most_frequent_value, COUNT(amount) AS frequency
    FROM value_table
    GROUP BY amount
    ORDER BY frequency DESC
    LIMIT 1
  ) AS frequency;
