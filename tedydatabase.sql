/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.24-MariaDB : Database - 2101020011_tedysugiartaa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`2101020011_tedysugiartaa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `2101020011_tedysugiartaa`;

/*Table structure for table `detailpesanan` */

DROP TABLE IF EXISTS `detailpesanan`;

CREATE TABLE `detailpesanan` (
  `id_detailpesanan` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  PRIMARY KEY (`id_detailpesanan`),
  KEY `id_produk` (`id_produk`),
  KEY `id_pesanan` (`id_pesanan`),
  CONSTRAINT `detailpesanan_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE,
  CONSTRAINT `detailpesanan_ibfk_2` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `detailpesanan` */

insert  into `detailpesanan`(`id_detailpesanan`,`jumlah`,`id_produk`,`id_pesanan`) values 
(1,2,1,1),
(2,5,2,1),
(3,1,3,2),
(4,3,1,3),
(5,4,5,4),
(6,1,6,5),
(7,2,7,6),
(8,1,8,7),
(9,3,9,8),
(10,1,10,9),
(11,30,12,11);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`) values 
(1,'Elektronik'),
(2,'Pakaian'),
(3,'Alat Rumah Tangga'),
(4,'Olahraga'),
(5,'Kesehatan'),
(6,'Mainan'),
(7,'Buku'),
(8,'Makanan'),
(9,'Minuman'),
(10,'Kecantikan'),
(11,'2101020011');

/*Table structure for table `pesanan` */

DROP TABLE IF EXISTS `pesanan`;

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_pesanan` date NOT NULL,
  PRIMARY KEY (`id_pesanan`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pesanan` */

insert  into `pesanan`(`id_pesanan`,`tanggal_pesanan`) values 
(1,'2023-01-01'),
(2,'2023-01-02'),
(3,'2023-01-03'),
(4,'2023-01-04'),
(5,'2023-01-05'),
(6,'2023-01-06'),
(7,'2023-01-07'),
(8,'2023-01-08'),
(9,'2023-01-09'),
(10,'2023-01-10'),
(11,'2023-11-27');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `main_category` varchar(50) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `link` text NOT NULL,
  `ratings` double NOT NULL,
  `no_of_ratings` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL,
  `actual_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  PRIMARY KEY (`id_produk`),
  KEY `id_kategori` (`id_kategori`),
  CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `produk` */

insert  into `produk`(`id_produk`,`nama_produk`,`harga`,`gambar`,`id_kategori`) values 
(1,'Laptop',15000000,'laptop.png',1),
(2,'T-shirt',300000,'t-shirt.png',2),
(3,'Blender',1000000,'blender.png',3),
(4,'Sepatu Lari',500000,'sepatulari.png',4),
(5,'Vitamin C',40000,'vitaminc.png',5),
(6,'Action Figure',700000,'actionfigure.png',6),
(7,'Novel',250000,'novel.png',7),
(8,'Snack',10000,'snack.png',8),
(9,'Mineral Water',4000,'mineralwat.png',9),
(10,'Lipstick',100000,'lipstick.png',10),
(12,'tugas_insert',50000,'gambar1.jpg',11);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
