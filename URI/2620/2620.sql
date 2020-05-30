SELECT customers.name, orders.id
FROM customers
INNER JOIN orders ON orders.id_customers = customers.id
AND EXTRACT(month FROM orders.orders_date) <= 6
AND EXTRACT(year FROM orders.orders_date) = 2016;
