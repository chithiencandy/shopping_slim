-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for school_idol
CREATE DATABASE IF NOT EXISTS `school_idol` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `school_idol`;

-- Dumping structure for table school_idol.cards
CREATE TABLE IF NOT EXISTS `cards` (
  `id` double NOT NULL,
  `game_id` double NOT NULL,
  `rarity` varchar(200) DEFAULT NULL,
  `attribute` varchar(200) DEFAULT NULL,
  `japanese_attribute` varchar(200) DEFAULT NULL,
  `is_promo` varchar(200) DEFAULT NULL,
  `promo_item` varchar(200) DEFAULT NULL,
  `release_date` varchar(200) DEFAULT NULL,
  `japan_only` varchar(200) DEFAULT NULL,
  `is_special` varchar(200) DEFAULT NULL,
  `hp` double DEFAULT NULL,
  `minimum_statistics_smile` double DEFAULT NULL,
  `minimum_statistics_pure` double DEFAULT NULL,
  `minimum_statistics_cool` double DEFAULT NULL,
  `non_idolized_maximum_statistics_smile` double DEFAULT NULL,
  `non_idolized_maximum_statistics_pure` double DEFAULT NULL,
  `non_idolized_maximum_statistics_cool` double DEFAULT NULL,
  `idolized_maximum_statistics_smile` double DEFAULT NULL,
  `idolized_maximum_statistics_pure` double DEFAULT NULL,
  `idolized_maximum_statistics_cool` double DEFAULT NULL,
  `skill` varchar(200) DEFAULT NULL,
  `japanese_skill` varchar(200) DEFAULT NULL,
  `skill_details` varchar(400) DEFAULT NULL,
  `center_skill` varchar(200) DEFAULT NULL,
  `center_skill_details` varchar(200) DEFAULT NULL,
  `japanese_center_skill` varchar(200) DEFAULT NULL,
  `japanese_center_skill_details` varchar(200) DEFAULT NULL,
  `card_image` varchar(200) DEFAULT NULL,
  `card_idolized_image` varchar(200) DEFAULT NULL,
  `english_card_image` varchar(200) DEFAULT NULL,
  `english_card_idolized_image` varchar(200) DEFAULT NULL,
  `round_card_image` varchar(200) DEFAULT NULL,
  `round_card_idolized_image` varchar(200) DEFAULT NULL,
  `english_round_card_image` varchar(200) DEFAULT NULL,
  `english_round_card_idolized_image` varchar(200) DEFAULT NULL,
  `video_story` varchar(200) DEFAULT NULL,
  `website_url` varchar(400) DEFAULT NULL,
  `non_idolized_max_level` double DEFAULT NULL,
  `idolized_max_level` double DEFAULT NULL,
  `transparent_image` varchar(400) DEFAULT NULL,
  `transparent_idolized_image` varchar(400) DEFAULT NULL,
  `total_owners` double DEFAULT NULL,
  `total_wishlist` double DEFAULT NULL,
  `ranking_attribute` double DEFAULT NULL,
  `ranking_rarity` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table school_idol.cards: ~0 rows (approximately)
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;

-- Dumping structure for table school_idol.idol
CREATE TABLE IF NOT EXISTS `idol` (
  `id` double NOT NULL,
  `note` varchar(400) DEFAULT NULL,
  `school` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `chibi` varchar(200) DEFAULT NULL,
  `main_unit` varchar(200) DEFAULT NULL,
  `japanese_name` varchar(200) DEFAULT NULL,
  `chibi_small` varchar(400) DEFAULT NULL,
  `sub_unit` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `idol_ibfk_1` FOREIGN KEY (`id`) REFERENCES `cards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table school_idol.idol: ~0 rows (approximately)
/*!40000 ALTER TABLE `idol` DISABLE KEYS */;
/*!40000 ALTER TABLE `idol` ENABLE KEYS */;

-- Dumping structure for table school_idol.skill_up_cards
CREATE TABLE IF NOT EXISTS `skill_up_cards` (
  `id` double NOT NULL,
  `card_id` double NOT NULL,
  `round_card_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`card_id`),
  KEY `card_id` (`card_id`),
  CONSTRAINT `skill_up_cards_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table school_idol.skill_up_cards: ~0 rows (approximately)
/*!40000 ALTER TABLE `skill_up_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_up_cards` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
