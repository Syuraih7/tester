/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.3.15-MariaDB : Database - pboung
*********************************************************************
Server version : 5.5.5-10.3.15-MariaDB
*/


create database if not exists `pboung`;

USE `pboung`;

/*Table structure for table `mhasiswa` */

DROP TABLE IF EXISTS `mhasiswa`;

CREATE TABLE `mhasiswa` (
  `nim` varchar(20) DEFAULT NULL,
  `nama` varchar(70) DEFAULT NULL,
  `umur` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mhasiswa` */
