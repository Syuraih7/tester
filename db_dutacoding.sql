/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.3.15-MariaDB : Database - db_dutacoding
*********************************************************************
Server version : 5.5.5-10.3.15-MariaDB
*/


create database if not exists `db_dutacoding`;

USE `db_dutacoding`;

/*Table structure for table `tbl_pendaftaran` */

DROP TABLE IF EXISTS `tbl_pendaftaran`;

CREATE TABLE `tbl_pendaftaran` (
  `id` int(200) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `nik` int(200) DEFAULT NULL,
  `jk` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `usia` int(200) DEFAULT NULL,
  `alasan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pendaftaran` */

insert into `tbl_pendaftaran` values 
(12231,'Lim',12222,'Laki-Laki','Tegal',29,'Pengen punya istri');
