SELECT customers.name, rentals.rentals_date
FROM customers, rentals
WHERE customers.id = rentals.id_customers
AND EXTRACT(MONTH FROM rentals.rentals_date) = 9
AND EXTRACT(YEAR FROM rentals.rentals_date) = 2016;
