/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.3.15-MariaDB : Database - db_crud
*********************************************************************
Server version : 5.5.5-10.3.15-MariaDB
*/


create database if not exists `db_crud`;

USE `db_crud`;

/*Table structure for table `tblmahasiswa` */

DROP TABLE IF EXISTS `tblmahasiswa`;

CREATE TABLE `tblmahasiswa` (
  `id` int(11) DEFAULT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jk` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tblmahasiswa` */

insert into `tblmahasiswa` values 
(124,'12346','hawa','Laki-Laki','semarang');
