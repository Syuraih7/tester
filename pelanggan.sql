/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.3.15-MariaDB : Database - pelanggan
*********************************************************************
Server version : 5.5.5-10.3.15-MariaDB
*/


create database if not exists `pelanggan`;

USE `pelanggan`;

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `usia` varchar(10) NOT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pelanggan` */

insert into `pelanggan` values 
('3328990012191','Body','18','Jl. Patimura','Bebe@gmail.com'),
('3328990012341','Anugrah Budi','19','Jl. Sadewa No.17','An@gmail.com'),
('3328990012345','Arifin Subandrio','45','Jl. Anu No. 17','Arif@gmail.com');
