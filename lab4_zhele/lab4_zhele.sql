№1
SELECT UPPER(name) 
FROM cities
LIMIT 5
OFFSET 5;

№2
SELECT name,CHAR_LENGTH(name) AS len_name
FROM cities
WHERE CHAR_LENGTH(name) NOT BETWEEN 8 AND 10;

№3
SELECT SUM(population)
FROM cities
WHERE region IN ('C','S');

№4
SELECT AVG(population)
FROM cities
WHERE region IN ('W');

№5
SELECT COUNT(name)
FROM cities
WHERE region IN ('E');