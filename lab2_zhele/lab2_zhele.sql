№1
SELECT name
FROM cities
Where population >= 1000000;

№2
SELECT name
FROM cities
WHERE region IN ('E','W')
ORDER BY population DESC;

№3
SELECT name
FROM cities
WHERE region IN ('S','C','N') AND population > 50000;

№4
SELECT name
FROM cities
WHERE region IN ('E','W','N') AND population > 150000 AND population < 350000
LIMIT 20;


№5
SELECT name, region, population
FROM cities
WHERE region NOT IN ('E','W')
ORDER BY population DESC
LIMIT 10
OFFSET 20;