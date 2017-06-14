# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: mahjong
# Generation Time: 2017-06-14 14:12:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table gameaccountindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameaccountindex`;

CREATE TABLE `gameaccountindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `accountIndex` int(1) NOT NULL,
  `cardList` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_GAME_INDEX_ID` (`game_id`),
  KEY `PK_ACCOUNT_INDEX_ID` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table gamerecord
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gamerecord`;

CREATE TABLE `gamerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `type` char(1) NOT NULL,
  `cardIndex` varchar(11) NOT NULL,
  `acountindex_id` int(11) NOT NULL,
  `curentTime` datetime NOT NULL,
  `playerList_one` varchar(255) NOT NULL,
  `playerList_two` varchar(255) NOT NULL,
  `playerList_three` varchar(255) NOT NULL,
  `playerList_four` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `PK_GAMERECORD_GAME_ID` (`game_id`),
  KEY `PK_GAMERECORD_ACCOUNTINDEX_ID` (`acountindex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table manager
# ------------------------------------------------------------

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `power_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `actualCard` int(11) NOT NULL DEFAULT '0',
  `totalCards` int(11) NOT NULL DEFAULT '0',
  `manager_up_id` int(11) DEFAULT '1',
  `status` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `PK_MANANGER_MANAGER_ID` (`manager_up_id`),
  KEY `PK_MANAGER_POWER_M_ID` (`power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table noticetable
# ------------------------------------------------------------

DROP TABLE IF EXISTS `noticetable`;

CREATE TABLE `noticetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table operatelog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `operatelog`;

CREATE TABLE `operatelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  `manager_down_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `type` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_OPERATELOG_MANAGER` (`manager_id`),
  KEY `PK_OPERATELOG_MANAGER_DOWN` (`manager_down_id`),
  KEY `PK_OPERATELOG_ACCOUNT` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table paylog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paylog`;

CREATE TABLE `paylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_manager_Id` int(11) DEFAULT NULL,
  `reced_Id` int(11) DEFAULT NULL,
  `receType` int(11) DEFAULT NULL,
  `payCount` int(11) DEFAULT NULL,
  `payTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_PAYLOG_MANAGER_ID` (`send_manager_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table playrecord
# ------------------------------------------------------------

DROP TABLE IF EXISTS `playrecord`;

CREATE TABLE `playrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playrecord` longtext,
  `standingsDetail_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_STANDINGSDETAIL_PLAYRECORDID` (`standingsDetail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table power
# ------------------------------------------------------------

DROP TABLE IF EXISTS `power`;

CREATE TABLE `power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table prize
# ------------------------------------------------------------

DROP TABLE IF EXISTS `prize`;

CREATE TABLE `prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_id` int(11) NOT NULL,
  `prize_name` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `probability` int(6) NOT NULL DEFAULT '100',
  `status` char(1) NOT NULL DEFAULT '0',
  `prizecount` int(11) NOT NULL DEFAULT '1',
  `type` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table prizerule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `prizerule`;

CREATE TABLE `prizerule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `precount` int(11) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table standings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `standings`;

CREATE TABLE `standings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_ROOM_STANDINGS_ID` (`roomid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table standingsaccountrelation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `standingsaccountrelation`;

CREATE TABLE `standingsaccountrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `standings_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_STANDINGS_ACCOUNT_ID` (`standings_id`),
  KEY `PK_ACCOUNT_STANDINGS_ID` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table standingsdetail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `standingsdetail`;

CREATE TABLE `standingsdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table standingsrelation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `standingsrelation`;

CREATE TABLE `standingsrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `standings_id` int(11) NOT NULL,
  `standingsDetail_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_STANDINGS_⁯ID` (`standings_id`),
  KEY `PK_STANDINGSDETAIL_ID` (`standingsDetail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table techargerecord
# ------------------------------------------------------------

DROP TABLE IF EXISTS `techargerecord`;

CREATE TABLE `techargerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `manager_up_id` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL,
  `techargeMoney` int(11) NOT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `PK_TECHARGEREORD_ACCOUNT_ID` (`account_id`),
  KEY `PK_TECHARGEREORD_MANAGER_ID` (`manager_id`),
  KEY `PK_TECHARGEREORD_MANAGER_UP_ID` (`manager_up_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table winnersinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `winnersinfo`;

CREATE TABLE `winnersinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prize_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  `awardTime` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_PRIZE_WINNERSINFO_ID` (`prize_id`),
  KEY `PK_ACCOUNT_WINNERSINFO_ID` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
