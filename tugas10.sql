/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.3.15-MariaDB : Database - tugas10
*********************************************************************
Server version : 5.5.5-10.3.15-MariaDB
*/


create database if not exists `tugas10`;

USE `tugas10`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_pengirim` varchar(25) NOT NULL,
  `id_paket` varchar(25) DEFAULT NULL,
  `id_pengguna` varchar(25) DEFAULT NULL,
  `status_pengiriman` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`admin_pengirim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` values 
('adin','12346','11124','terkirim'),
('edin','12345','11123','berlum terkirirm'),
('udin','12347','11126','terkirim');

/*Table structure for table `paket` */

DROP TABLE IF EXISTS `paket`;

CREATE TABLE `paket` (
  `id_pengguna` varchar(25) DEFAULT NULL,
  `id_paket` varchar(25) NOT NULL,
  `status_pembayaran` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paket` */

insert into `paket` values 
('11123','12345','terbayar'),
('11124','12346','terbayar'),
('11126','12347','terbayar');

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `id_pengguna` varchar(25) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengguna` */

insert into `pengguna` values 
('11123','aji','tegal'),
('11124','uji','brebes'),
('11126','eji','pemalang');
