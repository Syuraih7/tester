/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.3.15-MariaDB : Database - dosen
*********************************************************************
Server version : 5.5.5-10.3.15-MariaDB
*/


create database if not exists `dosen`;

USE `dosen`;

/*Table structure for table `dosen` */

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `npp` varchar(14) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `prodi` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`npp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `dosen` */

insert into `dosen` values 
('412 2009 11111','Agus','SI','Jl. KS TUBUN No.1','Agus@gmail.com');
