SELECT people.name, LENGTH(people.name) as length
FROM people
ORDER BY length DESC;
