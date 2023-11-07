SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `mydb`;

DROP TABLE IF EXISTS `files_project`;
CREATE TABLE `files_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `files_project_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `File_table` (`id`),
  CONSTRAINT `files_project_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `Project_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `files_task`;
CREATE TABLE `files_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `files_task_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `File_table` (`id`),
  CONSTRAINT `files_task_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `Task_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `File_table`;
CREATE TABLE `File_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` char(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `File_table_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `Project_table`;
CREATE TABLE `Project_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `Task_table`;
CREATE TABLE `Task_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` char(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `Task_table_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `User_table` (`id`),
  CONSTRAINT `Task_table_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `Project_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `task_user`;
CREATE TABLE `task_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `task_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User_table` (`id`),
  CONSTRAINT `task_user_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `Task_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `user_project`;
CREATE TABLE `user_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `user_project_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User_table` (`id`),
  CONSTRAINT `user_project_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `Project_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `User_table`;
CREATE TABLE `User_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

