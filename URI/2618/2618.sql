SELECT products.name, providers.name, categories.name
FROM products
INNER JOIN providers on providers.id = products.id_providers
INNER JOIN categories on categories.id = products.id_categories
WHERE providers.name = 'Sansul SA'
AND categories.name = 'Imported';
