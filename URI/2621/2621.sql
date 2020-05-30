SELECT products.name
FROM products, providers
WHERE products.id_providers = providers.id
AND products.amount BETWEEN 10 AND 20
AND providers.name like 'P%';
