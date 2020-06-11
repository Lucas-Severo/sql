SELECT life_registry.name, TRUNC(life_registry.omega * 1.618, 3) as "fator N"
FROM dimensions, life_registry
WHERE dimensions.id = life_registry.dimensions_id
AND (dimensions.name = 'C774' OR dimensions.name = 'C875')
AND life_registry.name like 'Richard %'
ORDER BY life_registry.omega;
