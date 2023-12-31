SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `mydb`;

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `files_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `file_locate`;
CREATE TABLE `file_locate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`),
  KEY `project_id` (`project_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `file_locate_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  CONSTRAINT `file_locate_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  CONSTRAINT `file_locate_ibfk_3` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `project_user`;
CREATE TABLE `project_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `project_user_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `creator` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`creator`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`),
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`creator`) REFERENCES `users` (`id`),
  CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `task_user`;
CREATE TABLE `task_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `task_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `task_user_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
