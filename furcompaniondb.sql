-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.1.0-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table furcompaniondb.contactmessages
CREATE TABLE IF NOT EXISTS `contactmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table furcompaniondb.contactmessages: ~7 rows (approximately)
INSERT IGNORE INTO `contactmessages` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
	(1, 'John Doe', 'john.doe@example.com', 'Inquiry about Services', 'Can you provide more details about your pet grooming services?', '2024-07-08 16:53:04'),
	(2, 'Jane Smith', 'jane.smith@example.com', 'Appointment Request', 'I would like to schedule an appointment for my dog next week.', '2024-07-08 16:53:04'),
	(3, 'Alice Johnson', 'alice.johnson@example.com', 'Feedback', 'I had a great experience with your service. Thank you!', '2024-07-08 16:53:04'),
	(4, 'Bob Brown', 'bob.brown@example.com', 'Question about Prices', 'Could you please send me a price list for your pet care services?', '2024-07-08 16:53:04'),
	(5, 'Carol White', 'carol.white@example.com', 'General Inquiry', 'What are your operating hours?', '2024-07-08 16:53:04'),
	(6, 'Banderada, Aljhon Villanueva', 'banderadaofficial@gmail.com', '123', 'Test', '2024-07-08 18:17:47'),
	(7, 'Banderada, Aljhon Villanueva', 'banderadaofficial@gmail.com', 'For Testing Web', 'Nothing Much To say just Testing it', '2024-07-09 03:57:02');

-- Dumping structure for table furcompaniondb.newsletter_subscribers
CREATE TABLE IF NOT EXISTS `newsletter_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribed_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table furcompaniondb.newsletter_subscribers: ~15 rows (approximately)
INSERT IGNORE INTO `newsletter_subscribers` (`id`, `name`, `email`, `subscribed_at`) VALUES
	(1, 'General PH', 'banderadax44@gmail.com', '2024-07-08 18:28:30'),
	(2, 'Banderada, Aljhon V.', 'aljhonvbanderada@iskolarngbayan.pup.edu.ph', '2024-07-08 18:37:17'),
	(3, 'Aljhon Villanueva Banderada', 'banderadaofficial2@gmail.com', '2024-07-08 18:38:52'),
	(4, 'Mea Ballesteros', 'banderadaofficial@gmail.com', '2024-07-08 19:01:19'),
	(5, 'Alex Lopez', 'yeahbutnotalex@gmail.com', '2024-07-09 02:53:10'),
	(7, 'try', 'test@gmail.com', '2024-07-09 02:53:43'),
	(8, 'try1', 'test2@gmail.com', '2024-07-09 02:55:04'),
	(10, 'trt', 'Test3@gmail.com', '2024-07-09 02:57:22'),
	(11, 'try4', 'test4@gmail.com', '2024-07-09 02:57:41'),
	(13, '123', 'test5@gmail.com', '2024-07-09 02:58:30'),
	(15, 'Mynameistester', 'Bomister@gmail.com', '2024-07-09 02:59:22'),
	(17, '1234', '1234@gmail.com', '2024-07-09 03:00:15'),
	(19, '123456', '123456@gmail.com', '2024-07-09 03:01:54'),
	(21, 'rawr', 'rawr@gmail.com', '2024-07-09 03:52:03'),
	(23, 'meow', 'meowth@gmail.com', '2024-07-09 03:56:09');

-- Dumping structure for table furcompaniondb.reservations
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time NOT NULL,
  `service` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table furcompaniondb.reservations: ~15 rows (approximately)
INSERT IGNORE INTO `reservations` (`id`, `name`, `email`, `reservation_date`, `reservation_time`, `service`, `created_at`) VALUES
	(1, 'John Doedonut', 'john@gmailcom', '2024-07-10', '15:00:00', 'Service 1', '2024-07-08 10:00:00'),
	(2, 'Jane the Brother', 'jane@gmail.com', '2024-07-11', '10:00:00', 'Service 2', '2024-07-08 10:05:00'),
	(3, 'Aljhon Villanueva Banderada', 'banderadaofficial2@gmail.com', '2024-07-11', '02:30:00', 'Service 2', '2024-07-08 18:57:56'),
	(4, 'Aljhon Villanueva Banderada', 'banderadaofficial2@gmail.com', '2024-07-11', '02:30:00', 'Service 2', '2024-07-08 18:58:09'),
	(5, 'Mea Ballesteros', 'banderadaofficial@gmail.com', '2024-07-24', '02:30:00', 'Service 3', '2024-07-08 19:14:21'),
	(6, 'Mea Ballesteros', 'banderadaofficial@gmail.com', '2024-07-24', '02:30:00', 'Service 3', '2024-07-08 19:14:21'),
	(7, 'test', '1@gmail', '2024-08-08', '02:30:00', 'Service 1', '2024-07-08 19:16:38'),
	(8, 'Banderada, Aljhon Villanueva', 'banderadaofficial123@gmail.com', '2024-08-10', '03:34:00', 'Service 1', '2024-07-08 19:38:24'),
	(9, 'MagWorkkana', 'Please@gmail.com', '2024-08-16', '04:34:00', 'Service 3', '2024-07-08 19:39:02'),
	(10, 'Yeay', 'PleaseForgiveem@gmail.com', '2024-08-16', '04:34:00', 'Service 3', '2024-07-08 19:39:03'),
	(11, 'General PH', 'banderadax44@gmail.com', '2024-08-09', '03:34:00', 'Service 2', '2024-07-08 19:41:29'),
	(12, 'General PHH', 'banderadax44@gmail.com', '2024-08-09', '03:34:00', 'Service 3', '2024-07-09 03:43:21'),
	(13, 'General PHHA', 'banderadax44@gmail.com', '2024-08-09', '03:34:00', 'Service 2', '2024-07-09 03:45:17'),
	(14, 'Elon Musk', 'Noone@gmail.com', '2024-07-14', '02:30:00', 'Service 3', '2024-07-09 03:49:15'),
	(15, 'Bill Gates', 'Noonebuttwo@gmail.com', '2024-07-14', '03:30:00', 'Service 2', '2024-07-09 03:55:29');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
