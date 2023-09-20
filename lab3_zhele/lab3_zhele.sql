№1
SELECT name
FROM cities
WHERE name LIKE '%ськ';

№2
SELECT name
FROM cities
WHERE name LIKE '%донец%';

№3
SELECT CONCAT(name,"(",region,")")
FROM cities
Where population > 100000
ORDER BY name ASC;

№4
SELECT name,((population*100)/40000000) AS proc_popul 
FROM cities
ORDER BY population DESC
LIMIT 10;

№5
SELECT CONCAT(name," - ",((population*100)/40000000))
FROM cities
WHERE ((population*100)/40000000) >= 0.1
ORDER BY ((population*100)/40000000) DESC;