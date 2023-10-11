№1
SELECT cities.name, cities.population, regions.name
FROM cities, regions
WHERE cities.population > 350000;

№2
SELECT cities.name
FROM cities, regions
WHERE cities.region = regions.uuid AND regions.name = "Nord";

№3
ALTER TABLE `Kharkiv_tube`
CHANGE `name` `name` varchar(30) NOT NULL FIRST,
CHANGE `branch` `branch` char(3) NOT NULL AFTER `name`,
CHANGE `connect` `connect` char(3) NULL AFTER `branch`;

INSERT INTO `Kharkiv_tube` (`name`, `branch`, `connect`)
VALUES ('Geroyiv parci', 'S', NULL);