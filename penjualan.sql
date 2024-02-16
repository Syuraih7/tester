/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.3.15-MariaDB : Database - penjualan
*********************************************************************
Server version : 5.5.5-10.3.15-MariaDB
*/


create database if not exists `penjualan`;

USE `penjualan`;

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `IDProduk` int(11) NOT NULL AUTO_INCREMENT,
  `KodeProduk` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NamaProduk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`IDProduk`),
  UNIQUE KEY `KodeProduk` (`KodeProduk`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `produk` */

insert into `produk` values 
(3,'1111','apem','Kg',1200,100,'2021-06-04 10:55:31');
