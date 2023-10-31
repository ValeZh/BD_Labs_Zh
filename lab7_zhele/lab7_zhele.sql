SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `mydb`;

DROP TABLE IF EXISTS `Articles`;
CREATE TABLE `Articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_name` text COLLATE ascii_bin NOT NULL,
  `category_id` int(11) NOT NULL,
  `text` longtext COLLATE ascii_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;


DROP TABLE IF EXISTS `Comments`;
CREATE TABLE `Comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_user` char(1) COLLATE armscii8_bin NOT NULL,
  `comment_text` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_article` (`id_article`),
  CONSTRAINT `Comments_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `Articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;


DROP TABLE IF EXISTS `Star`;
CREATE TABLE `Star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_user` char(1) NOT NULL,
  `star` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_article` (`id_article`),
  CONSTRAINT `Star_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `Articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
