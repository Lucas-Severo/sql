SELECT 
CONCAT(
  substring(natural_person.cpf, 1, 3), '.',
  substring(natural_person.cpf, 4, 3), '.',
  substring(natural_person.cpf, 7, 3), '-',
  substring(natural_person.cpf, 10, 2)
) 
FROM customers
INNER JOIN natural_person ON customers.id = natural_person.id_customers;
