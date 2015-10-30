-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.10 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for store
DROP DATABASE IF EXISTS `store`;
CREATE DATABASE IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `store`;


-- Dumping structure for table store.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table store.categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `version`, `name`) VALUES
	(1, 0, 'Speakers');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for table store.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `comments` varchar(150) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `district_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ehwciw0irqg8apaqvvmhl4lx9` (`district_id`),
  CONSTRAINT `FK_ehwciw0irqg8apaqvvmhl4lx9` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table store.customers: ~7 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `version`, `comments`, `country`, `date_created`, `district_id`, `email`, `firstname`, `last_updated`, `lastname`, `phone_number`, `street`, `zip`) VALUES
	(1, 1, NULL, 'Uganda', '2015-03-31 13:19:51', 1, NULL, 'Jack', '2015-04-12 00:46:27', 'Smith', '256 884 556 556', 'jacksmith', '256'),
	(2, 1, 'good bad don\'t really know', 'Uganda', '2015-04-11 02:11:51', 56, NULL, 'Jeremy', '2015-04-12 00:47:25', 'Smith', '256 633 622 611', 'jsmith', '256'),
	(3, 0, NULL, 'Uganda', '2015-04-12 00:37:22', 14, NULL, 'Alex', '2015-04-12 00:37:22', 'White', '256 256 256 257', 'Street Lights', '256'),
	(4, 0, NULL, 'Uganda', '2015-04-12 00:39:27', 140, NULL, 'Jim', '2015-04-12 00:39:27', 'Brown', '256 885 885 885', 'Southern Street', '256'),
	(5, 0, 'Hasn\'t come back in a while', 'Uganda', '2015-04-12 00:41:04', 14, NULL, 'Milan', '2015-04-12 00:41:04', 'Black', '256 455 455 455', 'Northern Street', '256'),
	(6, 0, NULL, 'Uganda', '2015-04-12 00:42:00', 1, NULL, 'James', '2015-04-12 00:42:00', 'Green', '256 665 665 665', 'High Street', '256'),
	(7, 0, 'No comments', 'Uganda', '2015-04-12 00:43:37', 44, NULL, 'Ken', '2015-04-12 00:43:37', 'Blue', '256 884 887 887', 'East High Street', '256');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


-- Dumping structure for table store.districts
DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shortcut` varchar(255) NOT NULL,
  `subregion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8s8mer5s13g8g04f933u8n9di` (`subregion_id`),
  CONSTRAINT `FK_8s8mer5s13g8g04f933u8n9di` FOREIGN KEY (`subregion_id`) REFERENCES `sub_regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

-- Dumping data for table store.districts: ~143 rows (approximately)
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
REPLACE INTO `districts` (`id`, `version`, `name`, `shortcut`, `subregion_id`) VALUES
	(1, 0, 'Mbarara', 'MBR', 1),
	(2, 0, 'Adjumani', 'ADJ', 3),
	(3, 0, 'Agago', 'AGG', 9),
	(4, 0, 'Alebtong', 'ALB', 8),
	(5, 0, 'Amolatar', 'AML', 8),
	(6, 0, 'Amudat', 'ADT', 15),
	(7, 0, 'Amuria', 'AMR', 5),
	(8, 0, 'Amuru', 'AMU', 9),
	(9, 0, 'Apac', 'APC', 8),
	(10, 0, 'Arua', 'ARU', 3),
	(11, 0, 'Luwero', 'BBO', 10),
	(12, 0, 'Budaka', 'BDK', 4),
	(13, 0, 'Bududa', 'BDD', 6),
	(14, 0, 'Jinja', 'BGB', 4),
	(15, 0, 'Bugiri', 'BGR', 4),
	(16, 0, 'Buhweju', 'BHJ', 1),
	(17, 0, 'Buikwe', 'BKW', 10),
	(18, 0, 'Bukedea', 'BKD', 5),
	(19, 0, 'Bukomansimbi', 'BMB', 10),
	(20, 0, 'Bukwo', 'BKW', 4),
	(21, 0, 'Bulambuli', 'BLI', 6),
	(22, 0, 'Buliisa', 'BLS', 12),
	(23, 0, 'Bundibugyo', 'BDY', 7),
	(24, 0, 'Iganga', 'BTY', 4),
	(25, 0, 'Bushenyi', 'BUS', 1),
	(26, 0, 'Busia', 'BSI', 4),
	(27, 0, 'Butaleja', 'BLW', 4),
	(28, 0, 'Butaleja', 'BTL', 10),
	(29, 0, 'Butambala', 'BLA', 10),
	(30, 0, 'Buvuma', 'BVM', 10),
	(31, 0, 'Jinja', 'BWG', 4),
	(32, 0, 'Buyende', 'BYD', 4),
	(33, 0, 'Dokolo', 'DKL', 8),
	(34, 0, 'Wakiso', 'EBB', 10),
	(35, 0, 'Gomba', 'GMB', 10),
	(36, 0, 'Gulu', 'GUL', 9),
	(37, 0, '', 'HIM', 11),
	(38, 0, 'Hoima', 'HOI', 12),
	(39, 0, 'Ibanda', 'IBN', 1),
	(40, 0, 'Iganga', 'IGG', 4),
	(41, 0, 'Isingiro', 'ISG', 1),
	(42, 0, 'Jinja', 'JJA', 4),
	(43, 0, 'Kaabong', 'KBG', 15),
	(44, 0, 'Kabale', 'KLE', 13),
	(45, 0, 'Kabarole', 'KBR', 7),
	(46, 0, 'Kaberamaido', 'KDO', 5),
	(47, 0, 'Sheema', 'KBH', 1),
	(48, 0, 'Kibaale', 'KGD', 12),
	(49, 0, 'Jinja', 'KKR', 4),
	(50, 0, 'Wakiso', 'KRI', 10),
	(51, 0, 'Kalangala', 'KAL', 10),
	(52, 0, 'Kaliro', 'KRO', 4),
	(53, 0, '', 'KZO', 10),
	(54, 0, '', 'KLG', 9),
	(55, 0, 'Kalungu', 'KGU', 10),
	(56, 0, 'Kampala', 'KLA', 10),
	(57, 0, 'Kamuli', 'KLI', 4),
	(58, 0, 'Kamwenge', 'KMW', 7),
	(59, 0, 'Gomba', 'KNN', 10),
	(60, 0, 'Kanungu', 'KNG', 13),
	(61, 0, 'Kapchorwa', 'KPH', 14),
	(62, 0, 'Kasese', 'KSE', 7),
	(63, 0, 'Katakwi', 'KWI', 5),
	(64, 0, 'Kayunga', 'KYG', 10),
	(65, 0, 'Kibaale', 'KBL', 12),
	(66, 0, 'Sheema', 'KBG', 1),
	(67, 0, 'Kiboga', 'KBG', 10),
	(68, 0, 'Kibuku', 'KBK', 4),
	(69, 0, 'Kanungu', 'KHH', 13),
	(70, 0, 'Wakiso', 'KIR', 10),
	(71, 0, 'Kiruhura', 'KHR', 1),
	(72, 0, 'Kiryandongo', 'KRY', 12),
	(73, 0, 'Kisoro', 'KSR', 13),
	(74, 0, 'Kitgum', 'KGM', 9),
	(75, 0, 'Koboko', 'KBK', 3),
	(76, 0, 'Kole', 'KOL', 8),
	(77, 0, 'Kotido', 'KTD', 15),
	(78, 0, 'Kumi', 'KUM', 5),
	(79, 0, 'Kween', 'KWN', 4),
	(80, 0, 'Kyankwanzi', 'KYA', 10),
	(81, 0, 'Lwengo', 'KZG', 10),
	(82, 0, 'Kyegegwa', 'KYE', 7),
	(83, 0, 'Kyenjojo', 'KJJ', 7),
	(84, 0, 'Lamwo', 'LMW', 9),
	(85, 0, 'Lira', 'LRA', 8),
	(86, 0, 'Buikwe', 'LGZ', 10),
	(87, 0, 'Lukaya', 'LKY', 10),
	(88, 0, 'Luweero', 'LWR', 10),
	(89, 0, 'Luuka', 'LKA', 4),
	(90, 0, 'Manafwa', 'LKH', 6),
	(91, 0, 'Lwengo', 'LWG', 10),
	(92, 0, 'Lyantonde', 'LYA', 10),
	(93, 0, '7ro', 'MLB', 4),
	(94, 0, 'Manafwa', 'MNF', 6),
	(95, 0, 'Maracha', 'MCH', 3),
	(96, 0, 'Masaka', 'MSK', 10),
	(97, 0, 'Masindi', 'MSD', 12),
	(98, 0, 'Wakiso', 'MTG', 10),
	(99, 0, 'Mayuge', 'MYG', 4),
	(100, 0, 'Mbale', 'MBL', 6),
	(101, 0, 'Mbarara', 'MBR', 1),
	(102, 0, 'Mitooma', 'MTM', 1),
	(103, 0, 'Mityana', 'MTN', 10),
	(104, 0, 'Moroto', 'MRT', 15),
	(105, 0, 'Moyo', 'MOY', 3),
	(106, 0, 'Mpigi', 'MPG', 10),
	(107, 0, 'Mubende', 'MBD', 10),
	(108, 0, 'Mukono', 'MKN', 10),
	(109, 0, 'Rakai', 'MKL', 10),
	(110, 0, '7ro', 'NGA', 4),
	(111, 0, 'Nakapiripirit', 'NPP', 15),
	(112, 0, 'Nakaseke', 'NKK', 10),
	(113, 0, 'Nakasongola', 'NKS', 10),
	(114, 0, 'Namayingo', 'NGO', 4),
	(115, 0, 'Namutumba', 'NBA', 4),
	(116, 0, 'Wakiso', 'NSA', 10),
	(117, 0, 'Napak', 'NPK', 15),
	(118, 0, 'Nebbi', 'NEB', 3),
	(119, 0, 'Ngora', 'NGR', 5),
	(120, 0, 'Buikwe', 'NJR', 10),
	(121, 0, 'Buikwe', 'NKO', 10),
	(122, 0, 'N7ko', 'NTO', 7),
	(123, 0, 'Ntungamo', 'NTU', 1),
	(124, 0, 'Nwoya', 'NWY', 9),
	(125, 0, 'Otuke', 'OTK', 8),
	(126, 0, 'Oyam', 'OYA', 8),
	(127, 0, 'Pader', 'PDR', 9),
	(128, 0, 'Zombo', 'PAI', 3),
	(129, 0, 'Nebbi', 'PKC', 3),
	(130, 0, 'Pallisa', 'PAL', 4),
	(131, 0, 'Rakai', 'RAK', 10),
	(132, 0, 'Rubirizi', 'RBZ', 1),
	(133, 0, 'Rukungiri', 'RKG', 13),
	(134, 0, 'Sembabule', 'SBL', 10),
	(135, 0, 'Serere', 'SRR', 5),
	(136, 0, 'Sheema', 'SHM', 1),
	(137, 0, 'Sironko', 'SKO', 6),
	(138, 0, 'Soroti', 'SRT', 5),
	(139, 0, '7ro', 'TRR', 4),
	(140, 0, 'Wakiso', 'WKS', 10),
	(141, 0, 'Luweero', 'WLZ', 10),
	(142, 0, 'Yumbe', 'YMB', 3),
	(143, 0, 'Zombo', 'ZMB', 3);
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;


-- Dumping structure for table store.orderlines
DROP TABLE IF EXISTS `orderlines`;
CREATE TABLE IF NOT EXISTS `orderlines` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `pos` int(11) NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `tax` decimal(19,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_i1o2fil0c7vuef22b7kpha431` (`order_id`),
  CONSTRAINT `FK_i1o2fil0c7vuef22b7kpha431` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table store.orderlines: ~0 rows (approximately)
/*!40000 ALTER TABLE `orderlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderlines` ENABLE KEYS */;


-- Dumping structure for table store.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `order_date` datetime NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_date` datetime NOT NULL,
  `shipping_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_astys1dv61mdlp0n0wx0574r2` (`customer_id`),
  CONSTRAINT `FK_astys1dv61mdlp0n0wx0574r2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table store.orders: ~4 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
REPLACE INTO `orders` (`id`, `version`, `customer_id`, `date_created`, `last_updated`, `order_date`, `order_number`, `payment_date`, `shipping_date`) VALUES
	(1, 0, 1, '2015-04-01 12:48:41', '2015-04-01 12:48:41', '2015-04-01 00:00:00', 'blank', '2015-04-01 00:00:00', '2015-04-01 00:00:00'),
	(2, 0, 1, '2015-04-01 16:15:41', '2015-04-01 16:15:41', '2015-04-01 00:00:00', '1/MBR/AK/WR//115', '2015-04-01 00:00:00', '2015-04-01 00:00:00'),
	(3, 0, 1, '2015-04-12 02:21:27', '2015-04-12 02:21:27', '2015-04-12 00:00:00', '1/MBR/AK/WR/115', '2015-04-12 00:00:00', '2015-04-12 00:00:00'),
	(4, 0, 5, '2015-04-12 02:48:32', '2015-04-12 02:48:32', '2015-04-12 00:00:00', '5/BGB/BS/ER/115', '2015-04-12 00:00:00', '2015-04-12 00:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Dumping structure for table store.payments
DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `method_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5e06v3jrvomdri5k2sdg4kl3d` (`customer_id`),
  KEY `FK_m3v91ff4104qt0h041jr145hc` (`method_id`),
  CONSTRAINT `FK_5e06v3jrvomdri5k2sdg4kl3d` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `FK_m3v91ff4104qt0h041jr145hc` FOREIGN KEY (`method_id`) REFERENCES `payment_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table store.payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
REPLACE INTO `payments` (`id`, `version`, `amount`, `currency`, `customer_id`, `method_id`) VALUES
	(1, 0, '50', 'USD', 1, 2);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;


-- Dumping structure for table store.payment_method
DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE IF NOT EXISTS `payment_method` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table store.payment_method: ~4 rows (approximately)
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
REPLACE INTO `payment_method` (`id`, `version`, `name`) VALUES
	(1, 0, 'Visa Card'),
	(2, 0, 'MasterCard'),
	(3, 0, 'Mobile Money'),
	(4, 0, 'Cash');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;


-- Dumping structure for table store.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `image` tinyblob NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `tax` decimal(19,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_of5oeawsy50x878ic9tyapdnv` (`category_id`),
  CONSTRAINT `FK_of5oeawsy50x878ic9tyapdnv` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table store.products: ~0 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`id`, `version`, `category_id`, `image`, `name`, `price`, `tax`) VALUES
	(1, 0, 1, _binary 0x4E2F41, 'Headphones', 0.00, 18.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


-- Dumping structure for table store.products_orders
DROP TABLE IF EXISTS `products_orders`;
CREATE TABLE IF NOT EXISTS `products_orders` (
  `products_order_id` bigint(20) DEFAULT NULL,
  `orders_id` bigint(20) DEFAULT NULL,
  KEY `FK_ru6vr7ygq2yjpky6y67ja85kw` (`orders_id`),
  KEY `FK_npmi4o5o6wjk7kgkbo8dyq58n` (`products_order_id`),
  CONSTRAINT `FK_npmi4o5o6wjk7kgkbo8dyq58n` FOREIGN KEY (`products_order_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK_ru6vr7ygq2yjpky6y67ja85kw` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table store.products_orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `products_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_orders` ENABLE KEYS */;


-- Dumping structure for table store.regions
DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shortcut` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table store.regions: ~4 rows (approximately)
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
REPLACE INTO `regions` (`id`, `version`, `name`, `shortcut`) VALUES
	(1, 0, 'Western Region', 'WR'),
	(3, 0, 'Nothern Region', 'NR'),
	(4, 0, 'Central Region', 'CR'),
	(5, 0, 'Eastern Region', 'ER');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;


-- Dumping structure for table store.sub_regions
DROP TABLE IF EXISTS `sub_regions`;
CREATE TABLE IF NOT EXISTS `sub_regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `region_id` bigint(20) NOT NULL,
  `shortcut` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3buvyns8ggvwsdqbtj1rtnh0e` (`region_id`),
  CONSTRAINT `FK_3buvyns8ggvwsdqbtj1rtnh0e` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table store.sub_regions: ~14 rows (approximately)
/*!40000 ALTER TABLE `sub_regions` DISABLE KEYS */;
REPLACE INTO `sub_regions` (`id`, `version`, `name`, `region_id`, `shortcut`) VALUES
	(1, 0, 'Ankole', 1, 'AK'),
	(3, 0, 'West Nile', 3, 'WN'),
	(4, 0, 'Busoga', 5, 'BS'),
	(5, 0, 'Teso', 5, 'TS'),
	(6, 0, 'Bugisu', 5, 'BU'),
	(7, 0, 'Toro', 1, 'TR'),
	(8, 0, 'Lango', 3, 'LA'),
	(9, 0, 'Acholi', 3, 'AC'),
	(10, 0, 'Buganda', 4, 'BG'),
	(11, 0, 'Rwenzururu', 1, 'RW'),
	(12, 0, 'Bunyoro', 1, 'BY'),
	(13, 0, 'Kigezi', 1, 'KZ'),
	(14, 0, 'Sebei', 5, 'SE'),
	(15, 0, 'Karamoja', 3, 'KA');
/*!40000 ALTER TABLE `sub_regions` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
districts