№1
SELECT region, SUM(population) 
FROM cities 
GROUP BY region;

№2
SELECT region, SUM(population) 
FROM cities W
WHERE region IN( SELECT region 
				FROM cities 
				GROUP BY region 
				HAVING COUNT(*)>=10)
GROUP BY region;

№3
SELECT name, population 
FROM cities 
WHERE region IN(SELECT region 
				FROM regions 
				GROUP BY region 
				HAVING COUNT(area_quantity) >= 5)
ORDER BY population LIMIT 5 OFFSET 10;

№4
SELECT region, SUM(population) 
FROM cities 
WHERE name IN ( SELECT name 
				FROM cities 
				WHERE population > 300000)
GROUP BY region;

№5
SELECT name, population 
FROM cities 
WHERE region IN(SELECT uuid 
				FROM regions 
				WHERE area_quantity <= 5)
AND population NOT BETWEEN 150000 AND 500000;
