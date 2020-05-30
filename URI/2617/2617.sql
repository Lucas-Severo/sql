SELECT products.name, providers.name
FROM providers
INNER JOIN products on providers.id = products.id_providers
WHERE providers.name = 'Ajax SA';
