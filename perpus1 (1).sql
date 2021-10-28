/*
SQLyog Ultimate v8.3 
MySQL - 5.5.5-10.4.17-MariaDB : Database - perpus1
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`perpus1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `perpus1`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id_admin`,`nama_admin`,`username`,`password`) values (1,'Elin Panca Saputra','admin','827ccb0eea8a706c4c34a16891f84e7b'),(2,'Imam Nawawi','admin2','200ceb26807d6bf99fd6f4f0d1ca54d4');

/*Table structure for table `anggota` */

DROP TABLE IF EXISTS `anggota`;

CREATE TABLE `anggota` (
  `id_anggota` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nama_anggota` varchar(45) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

insert  into `anggota`(`id_anggota`,`username`,`nama_anggota`,`gender`,`no_telp`,`alamat`,`email`,`password`) values (1,'','Irfan Maulana','Laki-Laki','02144445566','BSD','irfan@gmail.com','123'),(2,'','Nur Kumalasari','Perempuan','02133335555','Ciledug','nur@gmail.com','123'),(3,'','Sanjaya Wijaya','Laki-Laki','02111115555','Cimone','sanjaya@gmail.com','123'),(4,'','Eva Irfianingsih','Perempuan','02166665555','Tangerang','eva@gmail.com','123'),(5,'','Ifqoh Permatasari','Perempuan','02177775555','Cengkareng','ifqoh@gmail.com','123'),(6,'','Indah Riana','Perempuan','02188885555','Fatmawati','indah@gmail.com','123'),(7,'','Tiwie Andrawati','Perempuan','02199995555','Warung Jati','tiwie@gmail.com','123'),(11,'imam','Imam Nawawi','Laki-Laki','087829398630','jl H Isa no 1 Rengas Ciputat Timur','imam.imw@bsi.ac.id','eaccb8ea6090a40a98aa28c071810371'),(9,'','Hisbu Utomo','Laki-Laki','02133336666','Salemba','hisbu@gmail.com','123'),(10,'','Zaenal Abidin','Laki-Laki','02133337777','Bekasi','Zaenal@gmail.com','123'),(12,'maruloh','Maruloh','Laki-Laki','081519940383','Pedongkelan','maruloh.mru@gmail.com','0dc97aed82f234bd20072d33faafd53e');

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `id_buku` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(35) NOT NULL,
  `thn_terbit` date NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('Rak 1','Rak 2','Rak 3') NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl_input` date NOT NULL,
  `status_buku` enum('1','0') NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `buku` */

insert  into `buku`(`id_buku`,`id_kategori`,`judul_buku`,`pengarang`,`thn_terbit`,`penerbit`,`isbn`,`jumlah_buku`,`lokasi`,`gambar`,`tgl_input`,`status_buku`) values (3,2,'Mahir  Berhitung dan Mahir Mewarnai','Akhmad Rahmat','2014-03-03','CV.Indo Kreasi','7623447342',4,'Rak 3','gambar1539746653.jpg','2018-07-25','1'),(4,1,'Dasar Dasar Fisika','Kurnia Sandi','2013-04-04','Wacana Ria','233214414',0,'Rak 2','gambar1539746772.jpg','2018-07-24','1'),(5,8,'Mahir Bahasa Inggris','Aliuddin','2013-05-05','CV.Indo Kreasi','3553234454',7,'Rak 1','gambar1539746902.jpg','2018-10-17','1'),(6,4,'Public Speaking','Pambudi Prasetyo','2015-06-06','Aldi Pustaka','843594759',8,'Rak 2','gambar1539747050.jpg','2019-01-24','0'),(7,3,'Trik SQL','Ahdim Makaren','2014-07-07','Wacana Ria','54234762',5,'Rak 1','gambar1539747068.jpg','2018-03-14','1'),(8,6,'Kemurnian Agama','Pambudi Prasetyo','2014-08-08','Aldi Pustaka','980958607',4,'Rak 3','gambar1539747079.jpg','2018-07-24','1'),(9,1,'Mikrokontroler','Ahdim Makaren','2012-09-09','Wacana Ria','12121314',11,'Rak 2','gambar1539747096.jpg','2018-04-11','1'),(10,1,'24 Jam Belajar FrameWork','Rudi Hartono','2017-03-02','Unjung Pena','12345345',10,'Rak 2','gambar1539747110.jpg','2018-05-08','1'),(11,2,'JavaScript uncover','Andre Pratama','2015-03-12','Duniailkom','9087654',6,'Rak 1','gambar1539747128.jpg','2018-07-24','1'),(12,3,'Pemrograman dan Hack Android untuk pemula dan adva','Edy Winarno ST, M.eng, Ali Zaki, Sm','2016-09-23','Elex Media Komputindo','4234252',5,'Rak 1','gambar1539747149.jpg','2018-07-25','1'),(16,3,'VB .Net','Azka','2018-10-01','Elex Media','12345678',8,'Rak 1','gambar1539747329.png','2018-10-17','1'),(18,2,'ZZZ','XXX','2021-10-12','ZZZZ','sssss',5,'','gambar1634012709.jpg','2021-10-12','1'),(19,1,'zxxxxx','xxxx','2021-10-12','xxxx','xx',99,'','gambar1634018775.jpg','2021-10-12','1');

/*Table structure for table `detail_pinjam` */

DROP TABLE IF EXISTS `detail_pinjam`;

CREATE TABLE `detail_pinjam` (
  `id_pinjam` varchar(5) NOT NULL,
  `id_buku` int(5) NOT NULL,
  `denda` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `detail_pinjam` */

insert  into `detail_pinjam`(`id_pinjam`,`id_buku`,`denda`) values ('PJ001',16,10000),('PJ001',6,10000),('PJ002',1,10000),('PJ003',4,10000),('PJ003',2,10000),('PJ005',4,10000);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(45) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`) values (1,'Sains'),(2,'Hobby'),(3,'Komputer'),(4,'Komunikasi'),(5,'Hukum'),(6,'Agama'),(7,'Populer'),(8,'Bahasa'),(9,'komik');

/*Table structure for table `peminjaman` */

DROP TABLE IF EXISTS `peminjaman`;

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(5) NOT NULL,
  `tanggal_input` datetime NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `totaldenda` double NOT NULL DEFAULT 0,
  `status_peminjaman` enum('Booking','Selesai','Belum Selesai') DEFAULT 'Belum Selesai',
  `status_pengembalian` enum('Kembali','Belum Kembali') NOT NULL,
  PRIMARY KEY (`id_pinjam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `peminjaman` */

insert  into `peminjaman`(`id_pinjam`,`tanggal_input`,`id_anggota`,`tgl_pinjam`,`tgl_kembali`,`tgl_pengembalian`,`totaldenda`,`status_peminjaman`,`status_pengembalian`) values ('PJ001','2019-01-24 12:01:33',11,'2019-01-24','2019-01-30','2019-01-31',0,'Selesai','Kembali'),('PJ002','2019-03-02 13:03:03',11,'2019-03-02','2019-03-08','2019-03-02',0,'Selesai','Kembali'),('PJ005','2019-04-02 16:04:17',12,'2019-04-16','2019-04-22','2019-04-16',0,'Selesai','Kembali'),('PJ003','2019-04-02 16:04:38',12,'2019-04-16','2019-04-22','2019-04-16',0,'Selesai','Kembali');

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id_pinjam` varchar(5) NOT NULL,
  `tgl_pencatatan` datetime NOT NULL,
  `id_anggota` int(4) NOT NULL,
  `id_buku` int(4) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` double NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `total_denda` double NOT NULL,
  `status_pengembalian` varchar(15) NOT NULL,
  `status_peminjaman` varchar(25) NOT NULL,
  KEY `id_pinjam` (`id_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
