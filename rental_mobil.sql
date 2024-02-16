/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.5-10.3.15-MariaDB : Database - rental_mobil
*********************************************************************
Server version : 5.5.5-10.3.15-MariaDB
*/


create database if not exists `rental_mobil`;

USE `rental_mobil`;

/*Table structure for table `jenis` */

DROP TABLE IF EXISTS `jenis`;

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(25) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `jenis` */

insert into `jenis` values 
(1,'Manual'),
(2,'Matic'),
(3,'Triptonic');

/*Table structure for table `mobil` */

DROP TABLE IF EXISTS `mobil`;

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL AUTO_INCREMENT,
  `foto_mobil` varchar(25) NOT NULL,
  `id_jenis` int(6) NOT NULL,
  `type_mobil` varchar(30) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `no_polisi` varchar(11) NOT NULL,
  `warna` varchar(11) NOT NULL,
  `harga` int(20) NOT NULL,
  `status` int(6) NOT NULL,
  PRIMARY KEY (`id_mobil`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `mobil` */

insert into `mobil` values 
(1,'inova-kijang.png',3,'Avanza 2020','Toyota','B 1111 BBB','Red',20000,1),
(2,'avz.jpg',1,'Mobilio 2017','Toyota','B 4 BI','Orange',9000000,1),
(3,'mobil.jpg',1,'ertiga 2017','Toyota','B 111 BB','Red',11111,1),
(4,'sigra.webp',1,'avanza MT','Toyoya','G 4 B','REd',11111111,1),
(5,'sentuh.png',2,'Sigra','Honda','H 4 B','Red',1111111,1);

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `no_ktp` int(25) NOT NULL,
  `foto_pelanggan` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `no_telepon` varchar(16) NOT NULL,
  `status_peminjaman` int(11) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=12347 DEFAULT CHARSET=latin1;

/*Data for the table `pelanggan` */

insert into `pelanggan` values 
(12345,111222,'index.jpg','Udin Gambut','12-12-2000','jakarta','0987',1),
(12346,111333,'index.jpg','Ali Nurdin','12-12-2001','bandung','0898',0);

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id_transaksi` int(5) NOT NULL,
  `id_mobil` int(5) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_pelanggan` int(5) NOT NULL,
  `tgl_sewa` datetime NOT NULL,
  `tgl_selesaisewa` datetime NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `denda` int(11) DEFAULT NULL,
  `status_pembayaran` int(5) NOT NULL,
  `status_pengembalian` int(5) NOT NULL,
  `lama_sewa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

insert into `transaksi` values 
(0,1,20000,12345,'2021-06-16 00:00:00','2021-06-17 00:00:00',40000,0,0,0,2),
(1,2,9000000,12345,'2021-06-23 00:00:00','2021-06-24 00:00:00',18000000,0,0,0,2);
