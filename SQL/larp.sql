-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Nis 2023, 19:05:14
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `larp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `accounts`
--

CREATE TABLE `accounts` (
  `ID` int(12) NOT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Password` varchar(129) DEFAULT NULL,
  `RegisterDate` varchar(36) DEFAULT NULL,
  `LoginDate` varchar(36) DEFAULT NULL,
  `IP` varchar(16) DEFAULT 'n/a',
  `Kod` int(11) NOT NULL,
  `Admin` int(11) NOT NULL,
  `UcpAvatar` text NOT NULL DEFAULT '\'../skins/larp_1.png\'',
  `ExSlot` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `accounts`
--

INSERT INTO `accounts` (`ID`, `Username`, `Password`, `RegisterDate`, `LoginDate`, `IP`, `Kod`, `Admin`, `UcpAvatar`, `ExSlot`) VALUES
(1, 'developeraccount', 'developer_8533', '19/02/2023, 15:19', '19/02/2023, 19:18', '', 0, 6, '\'../skins/larp_1.png\'', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `application`
--

CREATE TABLE `application` (
  `id` int(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `charname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `rob` varchar(3000) NOT NULL,
  `history` varchar(3000) NOT NULL,
  `sended` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `application`
--

INSERT INTO `application` (`id`, `name`, `charname`, `email`, `origin`, `gender`, `birthdate`, `rob`, `history`, `sended`) VALUES
(22, 'test', 'test_test', 'test@test.com', 'test', 'Erkek', '2023-01-30', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aramakayitlari`
--

CREATE TABLE `aramakayitlari` (
  `ID` int(11) NOT NULL,
  `Zaman` varchar(128) NOT NULL,
  `Tip` varchar(128) NOT NULL,
  `Numara` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `aramakayitlari`
--

INSERT INTO `aramakayitlari` (`ID`, `Zaman`, `Tip`, `Numara`) VALUES
(5, '14/01/2021, 16:27', 'Reddedilen Arama', 48617),
(1, '14/01/2021, 16:27', 'Reddedilen Arama', 62005),
(1, '17/01/2021, 15:42', 'Giden Arama', 62005),
(1, '17/01/2021, 18:01', 'Giden Arama', 62005),
(1, '17/01/2021, 18:03', 'Giden Arama', 62005),
(1, '20/01/2021, 18:22', 'Giden Arama', 20772),
(5, '12/03/2021, 18:41', 'Reddedilen Arama', 48617),
(1, '12/03/2021, 18:41', 'Reddedilen Arama', 20772),
(1, '20/03/2021, 14:05', 'Gelen Arama', 66965),
(30, '20/03/2021, 22:00', 'Gelen Arama', 48617),
(28, '21/03/2021, 16:05', 'Gelen Arama', 48617),
(1, '21/03/2021, 16:06', 'Cevapsýz Arama', 96594),
(28, '21/03/2021, 16:06', 'Cevapsýz Arama', 48617),
(28, '21/03/2021, 16:06', 'Reddedilen Arama', 48617),
(1, '21/03/2021, 16:06', 'Reddedilen Arama', 96594),
(1, '21/03/2021, 16:07', 'Reddedilen Arama', 96594),
(28, '21/03/2021, 16:07', 'Reddedilen Arama', 48617),
(28, '21/03/2021, 16:09', 'Gelen Arama', 48617),
(28, '23/03/2021, 19:04', 'Gelen Arama', 48617),
(1, '24/03/2021, 11:37', 'Gelen Arama', 96594),
(1, '27/03/2021, 19:09', 'Giden Arama', 96594),
(64, '28/05/2021, 23:36', 'Gelen Arama', 31031),
(1, '03/06/2021, 18:18', 'Gelen Arama', 34910),
(1, '03/06/2021, 18:19', 'Giden Arama', 65470),
(70, '03/06/2021, 18:24', 'Gelen Arama', 61665),
(70, '03/06/2021, 18:34', 'Cevapsýz Arama', 61665),
(1, '03/06/2021, 18:34', 'Cevapsýz Arama', 65470),
(1, '03/06/2021, 18:34', 'Reddedilen Arama', 34910),
(65, '03/06/2021, 18:34', 'Reddedilen Arama', 61665),
(1, '03/06/2021, 18:35', 'Reddedilen Arama', 34910),
(65, '03/06/2021, 18:35', 'Reddedilen Arama', 61665),
(1, '03/06/2021, 18:35', 'Reddedilen Arama', 34910),
(65, '03/06/2021, 18:35', 'Reddedilen Arama', 61665),
(65, '03/06/2021, 18:36', 'Giden Arama', 61665),
(1, '03/06/2021, 18:36', 'Gelen Arama', 65470),
(1, '03/06/2021, 18:37', 'Giden Arama', 65470),
(1, '03/06/2021, 18:38', 'Cevapsýz Arama', 65470),
(70, '03/06/2021, 18:38', 'Cevapsýz Arama', 61665),
(1, '03/06/2021, 18:39', 'Reddedilen Arama', 65470),
(70, '03/06/2021, 18:39', 'Reddedilen Arama', 61665),
(1, '03/06/2021, 18:40', 'Cevapsýz Arama', 65470),
(70, '03/06/2021, 18:40', 'Cevapsýz Arama', 61665),
(70, '03/06/2021, 18:40', 'Gelen Arama', 34910),
(1, '03/06/2021, 18:44', 'Cevapsýz Arama', 65470),
(70, '03/06/2021, 18:44', 'Cevapsýz Arama', 61665),
(1, '03/06/2021, 18:47', 'Cevapsýz Arama', 65470),
(70, '03/06/2021, 18:47', 'Cevapsýz Arama', 61665),
(1, '03/06/2021, 18:51', 'Cevapsýz Arama', 65470),
(70, '03/06/2021, 18:51', 'Cevapsýz Arama', 61665),
(1, '03/06/2021, 18:56', 'Cevapsýz Arama', 65470),
(70, '03/06/2021, 18:56', 'Cevapsýz Arama', 61665),
(70, '03/06/2021, 18:58', 'Cevapsýz Arama', 61665),
(1, '03/06/2021, 18:58', 'Cevapsýz Arama', 65470),
(1, '08/07/2021, 20:22', 'Gelen Arama', 34910),
(101, '27/07/2021, 19:00', 'Gelen Arama', 70879),
(100, '02/08/2021, 21:49', 'Gelen Arama', 701835),
(102, '05/08/2021, 15:00', 'Gelen Arama', 0),
(102, '05/08/2021, 15:56', 'Gelen Arama', 45276),
(104, '25/09/2021, 22:26', 'Giden Arama', 701835),
(104, '25/09/2021, 22:41', 'Reddedilen Arama', 701835),
(102, '25/09/2021, 22:41', 'Reddedilen Arama', 20389),
(104, '25/09/2021, 22:42', 'Reddedilen Arama', 701835),
(102, '25/09/2021, 22:42', 'Reddedilen Arama', 20389),
(104, '25/09/2021, 23:02', 'Gelen Arama', 701835),
(104, '28/11/2021, 21:45', 'Gelen Arama', 701835),
(104, '28/11/2021, 21:55', 'Giden Arama', 701835),
(104, '13/05/2022, 20:36', 'Giden Arama', 701835),
(116, '28/05/2022, 22:59', 'Gelen Arama', 20389),
(102, '28/05/2022, 23:04', 'Gelen Arama', 36597),
(121, '28/05/2022, 23:06', 'Giden Arama', 701835),
(102, '28/05/2022, 23:07', 'Giden Arama', 36597),
(116, '29/05/2022, 00:13', 'Reddedilen Arama', 701835),
(102, '29/05/2022, 00:13', 'Reddedilen Arama', 23279),
(102, '29/05/2022, 00:17', 'Giden Arama', 47676),
(120, '29/05/2022, 00:19', 'Giden Arama', 701835),
(120, '29/05/2022, 00:19', 'Reddedilen Arama', 701835),
(102, '29/05/2022, 00:19', 'Reddedilen Arama', 47676),
(120, '29/05/2022, 00:21', 'Cevapsýz Arama', 701835),
(102, '29/05/2022, 00:21', 'Cevapsýz Arama', 47676),
(120, '29/05/2022, 00:22', 'Gelen Arama', 701835),
(107, '12/06/2022, 16:19', 'Gelen Arama', 20389),
(120, '13/06/2022, 16:59', 'Gelen Arama', 92935),
(102, '20/06/2022, 21:21', 'Giden Arama', 92935),
(117, '20/06/2022, 22:42', 'Gelen Arama', 701835),
(117, '20/06/2022, 22:44', 'Giden Arama', 701835),
(102, '21/06/2022, 18:52', 'Gelen Arama', 57681),
(102, '21/06/2022, 18:54', 'Giden Arama', 92935),
(102, '21/06/2022, 19:14', 'Gelen Arama', 36597),
(117, '21/06/2022, 19:22', 'Gelen Arama', 701835),
(102, '21/06/2022, 19:34', 'Reddedilen Arama', 57681),
(123, '21/06/2022, 19:34', 'Reddedilen Arama', 701835),
(102, '21/06/2022, 19:35', 'Giden Arama', 36597),
(121, '21/06/2022, 19:43', 'Giden Arama', 701835),
(102, '25/06/2022, 19:35', 'Gelen Arama', 47676),
(102, '25/06/2022, 19:41', 'Gelen Arama', 47676);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `arrestID` int(11) NOT NULL,
  `arrestX` float NOT NULL,
  `arrestY` float NOT NULL,
  `arrestZ` float NOT NULL,
  `arrestInterior` int(11) NOT NULL,
  `arrestWorld` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `arrestpoints`
--

INSERT INTO `arrestpoints` (`arrestID`, `arrestX`, `arrestY`, `arrestZ`, `arrestInterior`, `arrestWorld`) VALUES
(4, 227.404, 113.178, 999.016, 10, 7001);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `atm`
--
-- larp.atm tablosu için yapı okuma hatası: #1034 - Index for table 'atm' is corrupt; try to repair it
-- larp.atm tablosu için veri okuma hatası: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `larp`.`atm`' at line 1

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `backpackitems`
--

CREATE TABLE `backpackitems` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `backpackitems`
--

INSERT INTO `backpackitems` (`ID`, `itemID`, `itemName`, `itemModel`, `itemQuantity`) VALUES
(1, 1, 'Maske', 19036, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `backpacks`
--

CREATE TABLE `backpacks` (
  `backpackID` int(12) NOT NULL,
  `backpackPlayer` int(12) DEFAULT 0,
  `backpackX` float DEFAULT 0,
  `backpackY` float DEFAULT 0,
  `backpackZ` float DEFAULT 0,
  `backpackInterior` int(12) DEFAULT 0,
  `backpackWorld` int(12) DEFAULT 0,
  `backpackHouse` int(12) DEFAULT 0,
  `backpackVehicle` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `backpacks`
--

INSERT INTO `backpacks` (`backpackID`, `backpackPlayer`, `backpackX`, `backpackY`, `backpackZ`, `backpackInterior`, `backpackWorld`, `backpackHouse`, `backpackVehicle`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0),
(2, 116, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bildirimler`
--

CREATE TABLE `bildirimler` (
  `ID` int(11) NOT NULL,
  `Bildiren` varchar(11) NOT NULL,
  `Tarih` varchar(32) NOT NULL,
  `Konu` varchar(256) NOT NULL,
  `Linkler` varchar(256) NOT NULL,
  `Icerik` varchar(512) NOT NULL,
  `KarakterAdi` varchar(32) NOT NULL,
  `Durum` int(3) NOT NULL,
  `Admin` varchar(32) NOT NULL,
  `AdmNot` varchar(230) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `billboards`
--

CREATE TABLE `billboards` (
  `bbID` int(12) NOT NULL,
  `bbExists` int(12) DEFAULT 0,
  `bbName` varchar(32) DEFAULT NULL,
  `bbOwner` int(12) NOT NULL DEFAULT 0,
  `bbPrice` int(12) NOT NULL DEFAULT 0,
  `bbRange` int(12) DEFAULT 10,
  `bbPosX` float DEFAULT 0,
  `bbPosY` float DEFAULT 0,
  `bbPosZ` float DEFAULT 0,
  `bbMessage` varchar(230) DEFAULT NULL,
  `bbTime` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `billboards`
--

INSERT INTO `billboards` (`bbID`, `bbExists`, `bbName`, `bbOwner`, `bbPrice`, `bbRange`, `bbPosX`, `bbPosY`, `bbPosZ`, `bbMessage`, `bbTime`) VALUES
(72, 0, 'Adsýz Billboard', 0, -1, 10, 1351.3, -1696.45, 13.6072, '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blacklist`
--

CREATE TABLE `blacklist` (
  `IP` varchar(16) DEFAULT '0.0.0.0',
  `Username` varchar(24) DEFAULT NULL,
  `BannedBy` varchar(24) DEFAULT NULL,
  `Reason` varchar(128) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `UnbanTime` int(32) NOT NULL DEFAULT 0,
  `Serial` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `businesses`
--

CREATE TABLE `businesses` (
  `bizID` int(12) NOT NULL,
  `bizName` varchar(32) DEFAULT NULL,
  `bizOwner` int(12) DEFAULT 0,
  `bizType` int(12) DEFAULT 0,
  `bizPrice` int(12) DEFAULT 0,
  `bizPosX` float DEFAULT 0,
  `bizPosY` float DEFAULT 0,
  `bizPosZ` float DEFAULT 0,
  `bizPosA` float DEFAULT 0,
  `bizIntX` float DEFAULT 0,
  `bizIntY` float DEFAULT 0,
  `bizIntZ` float DEFAULT 0,
  `bizIntA` float DEFAULT 0,
  `bizInterior` int(12) DEFAULT 0,
  `bizExterior` int(12) DEFAULT 0,
  `bizExteriorVW` int(12) DEFAULT 0,
  `bizLocked` int(4) DEFAULT 0,
  `bizVault` int(12) DEFAULT 0,
  `bizProducts` int(12) DEFAULT 0,
  `bizPrice1` int(12) DEFAULT 0,
  `bizPrice2` int(12) DEFAULT 0,
  `bizPrice3` int(12) DEFAULT 0,
  `bizPrice4` int(12) DEFAULT 0,
  `bizPrice5` int(12) DEFAULT 0,
  `bizPrice6` int(12) DEFAULT 0,
  `bizPrice7` int(12) DEFAULT 0,
  `bizPrice8` int(12) DEFAULT 0,
  `bizPrice9` int(12) DEFAULT 0,
  `bizPrice10` int(12) DEFAULT 0,
  `bizSpawnX` float DEFAULT 0,
  `bizSpawnY` float DEFAULT 0,
  `bizSpawnZ` float DEFAULT 0,
  `bizSpawnA` float DEFAULT 0,
  `bizDeliverX` float DEFAULT 0,
  `bizDeliverY` float DEFAULT 0,
  `bizDeliverZ` float DEFAULT 0,
  `bizMessage` varchar(128) DEFAULT NULL,
  `bizPrice11` int(12) DEFAULT 0,
  `bizPrice12` int(12) DEFAULT 0,
  `bizPrice13` int(12) DEFAULT 0,
  `bizPrice14` int(12) DEFAULT 0,
  `bizPrice15` int(12) DEFAULT 0,
  `bizPrice16` int(12) DEFAULT 0,
  `bizPrice17` int(12) DEFAULT 0,
  `bizPrice18` int(12) DEFAULT 0,
  `bizPrice19` int(12) DEFAULT 0,
  `bizPrice20` int(12) DEFAULT 0,
  `bizShipment` int(4) DEFAULT 0,
  `bizLoginFee` int(11) NOT NULL DEFAULT 0,
  `bizMusic` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `businesses`
--

INSERT INTO `businesses` (`bizID`, `bizName`, `bizOwner`, `bizType`, `bizPrice`, `bizPosX`, `bizPosY`, `bizPosZ`, `bizPosA`, `bizIntX`, `bizIntY`, `bizIntZ`, `bizIntA`, `bizInterior`, `bizExterior`, `bizExteriorVW`, `bizLocked`, `bizVault`, `bizProducts`, `bizPrice1`, `bizPrice2`, `bizPrice3`, `bizPrice4`, `bizPrice5`, `bizPrice6`, `bizPrice7`, `bizPrice8`, `bizPrice9`, `bizPrice10`, `bizSpawnX`, `bizSpawnY`, `bizSpawnZ`, `bizSpawnA`, `bizDeliverX`, `bizDeliverY`, `bizDeliverZ`, `bizMessage`, `bizPrice11`, `bizPrice12`, `bizPrice13`, `bizPrice14`, `bizPrice15`, `bizPrice16`, `bizPrice17`, `bizPrice18`, `bizPrice19`, `bizPrice20`, `bizShipment`, `bizLoginFee`, `bizMusic`) VALUES
(16, 'CHEVRON LOS ANGELES', 99999999, 6, 100000, 1928.58, -1776.31, 13.5466, 89.7024, -27.3383, -57.6907, 1003.55, 0, 6, 0, 0, 0, 2126, 40, 75, 115, 15, 90, 3, 2, 10, 90, 20, 10, 1928.58, -1776.31, 13.5466, 89.7024, 0, 0, 0, '', 140, 150, 50, 40, 5, 10, 5, 0, 0, 0, 0, 0, NULL),
(18, 'Fox River Appliance', 77, 8, 100000, 2068.66, -1773.78, 13.5604, 79.9831, 1004.19, 52.3465, 55.4, 270, 0, 0, 0, 0, 3060, 87, 200, 300, 200, 500, 150, 0, 0, 0, 0, 0, 2068.66, -1773.78, 13.5604, 79.9831, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(12, 'BINCO', 1, 3, 100000, 2244.39, -1665.57, 15.4764, 163.616, 161.48, -96.5363, 1001.8, 0, 18, 0, 0, 0, 172, 500818, 50, 15, 0, 0, 0, 0, 0, 0, 0, 0, 2244.39, -1665.57, 15.4764, 163.616, 2253.21, -1693.39, 13.7531, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL),
(29, 'IS YERI', 102, 5, 100000, 542.44, -1281.54, 17.242, 216.771, 1494.56, 1304.21, 1093.29, 0, 3, 0, 0, 0, 31365, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 560.55, -1286.74, 17.2481, 13.0115, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(21, 'The Well Stacked Pizza', 99999999, 4, 100000, 2105.49, -1806.53, 13.5544, 271.432, 363.34, -74.6679, 1001.51, 315, 10, 0, 0, 0, 283, 71, 2, 5, 5, 10, 10, 15, 10, 0, 0, 0, 2105.49, -1806.53, 13.5544, 271.432, 2130.4, -1787.82, 13.5516, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(36, 'FELLAS PUB', 117, 9, 3, 1700.06, -1171.28, 23.8438, 182.469, 2015.23, 1345.85, 107.48, 90, 1, 0, 0, 0, 0, 100, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 1700.12, -1170.24, 23.8281, 177.643, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(24, 'WROLESALE PRODUCE', 1, 1, 100000, 2049.9, -1802.66, 14.85, 358.147, -27.3073, -30.874, 1003.56, 0, 4, 0, 0, 1, 0, 100, 100, 300, 3, 7, 400, 150, 45, 200, 50, 250, -530.105, -485.984, 25.5233, 48.2344, 2040.28, -1803.8, 13.553, '', 1500, 15, 35, 40, 15, 15, 100, 100, 50, 50, 1, 0, NULL),
(35, 'MUHURLU.', 107, 4, 1, 1993.56, -1761.96, 13.5389, 179.224, 1371.56, -22.6895, 1000.93, 357.481, 1, 0, 0, 0, 190431, 41, 2, 5, 5, 10, 10, 15, 10, 0, 0, 0, 1993.56, -1761.96, 13.5389, 179.224, 0, 0, 0, 'LEZZETE HOÞ GELDÝNÝZ!', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(38, 'Cluckin\' Bell Vegas', 104, 4, 31, 2638.49, 1671.91, 11.0234, 269.929, 364.875, -11.5003, 1001.85, 0.1398, 9, 0, 0, 0, 27, 97, 2, 5, 5, 10, 10, 15, 10, 0, 0, 0, 2638.49, 1671.91, 11.0234, 269.929, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(37, 'IS YERI', 104, 6, 13, 1000.6, -919.936, 42.3281, 277.218, -27.3383, -57.6908, 1003.55, 0, 6, 0, 0, 1, 37, 100, 75, 115, 15, 90, 3, 2, 10, 90, 20, 10, 1000.6, -919.936, 42.3281, 277.218, 0, 0, 0, '', 140, 150, 50, 40, 5, 10, 5, 0, 0, 0, 0, 0, NULL),
(44, 'LONGBROOK ', 117, 7, 3, 2424, -1742.61, 13.543, 225.557, -2240.5, 128.377, 1035.42, 270, 6, 0, 0, 0, 31600, 100, 75, 115, 15, 95, 3, 2, 10, 100, 20, 10, 2424, -1742.61, 13.543, 225.557, 2445.54, -1758.68, 13.5923, 'Hoþ geldiniz.', 140, 190, 150, 60, 50, 5, 10, 5, 0, 0, 1, 50, NULL),
(45, 'Juderias Furniture', 117, 7, 245000, 1569.51, -1198.88, 19.789, 357.827, -2240.5, 128.377, 1035.42, 270, 6, 0, 0, 0, 64, 101, 75, 115, 15, 95, 3, 2, 10, 100, 20, 10, 1569.51, -1198.88, 19.789, 357.827, 0, 0, 0, '', 140, 190, 150, 60, 50, 5, 10, 5, 0, 0, 0, 0, NULL),
(46, 'LAGOV CLOTHES', 117, 3, 1, 1494.6, -1687.01, 13.4846, 357.516, 161.48, -96.5367, 1001.8, 0, 18, 0, 0, 1, 0, 100, 50, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1494.6, -1687.01, 13.4846, 357.516, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(47, 'LAGOV 7/24', 117, 1, 1, 1498.53, -1682.93, 13.3956, 90.5765, -27.3073, -30.874, 1003.56, 0, 4, 0, 0, 1, 0, 100, 100, 300, 3, 7, 400, 150, 45, 200, 50, 250, 1498.53, -1682.93, 13.3956, 90.5765, 0, 0, 0, '', 1500, 15, 35, 40, 15, 15, 100, 100, 50, 50, 0, 0, NULL),
(48, 'IS YERI', 0, 8, 50, 475.596, -1279.45, 16.4812, 36.3446, 1004.19, 52.3466, 55.4, 270, 0, 0, 0, 1, 0, 100, 200, 300, 200, 500, 150, 0, 0, 0, 0, 0, 475.596, -1279.45, 16.4812, 36.3446, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(49, 'Vinly Countdown', 117, 8, 370000, 816.134, -1386.09, 13.5967, 0.4284, 1004.19, 52.3466, 55.4, 270, 0, 0, 0, 1, 0, 100, 200, 300, 200, 500, 150, 0, 0, 0, 0, 0, 816.134, -1386.09, 13.5967, 0.4284, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cars`
--

CREATE TABLE `cars` (
  `carID` int(12) NOT NULL,
  `carModel` int(12) DEFAULT 0,
  `carOwner` int(12) DEFAULT 0,
  `carPlaka` varchar(32) NOT NULL DEFAULT '- - -',
  `carPosX` float DEFAULT 0,
  `carPosY` float DEFAULT 0,
  `carPosZ` float DEFAULT 0,
  `carPosR` float DEFAULT 0,
  `carColor1` int(12) DEFAULT 0,
  `carColor2` int(12) DEFAULT 0,
  `carPaintjob` int(12) DEFAULT -1,
  `carLocked` int(4) DEFAULT 0,
  `carMod1` int(12) DEFAULT 0,
  `carMod2` int(12) DEFAULT 0,
  `carMod3` int(12) DEFAULT 0,
  `carMod4` int(12) DEFAULT 0,
  `carMod5` int(12) DEFAULT 0,
  `carMod6` int(12) DEFAULT 0,
  `carMod7` int(12) DEFAULT 0,
  `carMod8` int(12) DEFAULT 0,
  `carMod9` int(12) DEFAULT 0,
  `carMod10` int(12) DEFAULT 0,
  `carMod11` int(12) DEFAULT 0,
  `carMod12` int(12) DEFAULT 0,
  `carMod13` int(12) DEFAULT 0,
  `carMod14` int(12) DEFAULT 0,
  `carImpounded` int(12) DEFAULT 0,
  `carWeapon1` int(12) DEFAULT 0,
  `carAmmo1` int(12) DEFAULT 0,
  `carWeapon2` int(12) DEFAULT 0,
  `carAmmo2` int(12) DEFAULT 0,
  `carWeapon3` int(12) DEFAULT 0,
  `carAmmo3` int(12) DEFAULT 0,
  `carWeapon4` int(12) DEFAULT 0,
  `carAmmo4` int(12) DEFAULT 0,
  `carWeapon5` int(12) DEFAULT 0,
  `carAmmo5` int(12) DEFAULT 0,
  `carImpoundPrice` int(12) DEFAULT 0,
  `carFaction` int(12) DEFAULT 0,
  `carAnahtar` int(11) NOT NULL DEFAULT -1,
  `carMeslek` int(11) NOT NULL DEFAULT -1,
  `carKiralik` int(11) NOT NULL DEFAULT 0,
  `carKiraZaman` int(11) NOT NULL DEFAULT 1,
  `carBirlik` int(11) NOT NULL DEFAULT -1,
  `carDistance` float NOT NULL DEFAULT 0,
  `carImmo` int(11) NOT NULL DEFAULT 1,
  `carKilitSeviye` int(11) NOT NULL DEFAULT 1,
  `carAlarm` int(11) NOT NULL DEFAULT 1,
  `carHurda` int(11) NOT NULL DEFAULT 0,
  `carKiraUcret` int(11) NOT NULL DEFAULT 0,
  `carPrice` int(11) NOT NULL DEFAULT 0,
  `carRadio` int(11) NOT NULL DEFAULT 0,
  `carURL` varchar(256) DEFAULT NULL,
  `carVergi` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `cars`
--

INSERT INTO `cars` (`carID`, `carModel`, `carOwner`, `carPlaka`, `carPosX`, `carPosY`, `carPosZ`, `carPosR`, `carColor1`, `carColor2`, `carPaintjob`, `carLocked`, `carMod1`, `carMod2`, `carMod3`, `carMod4`, `carMod5`, `carMod6`, `carMod7`, `carMod8`, `carMod9`, `carMod10`, `carMod11`, `carMod12`, `carMod13`, `carMod14`, `carImpounded`, `carWeapon1`, `carAmmo1`, `carWeapon2`, `carAmmo2`, `carWeapon3`, `carAmmo3`, `carWeapon4`, `carAmmo4`, `carWeapon5`, `carAmmo5`, `carImpoundPrice`, `carFaction`, `carAnahtar`, `carMeslek`, `carKiralik`, `carKiraZaman`, `carBirlik`, `carDistance`, `carImmo`, `carKilitSeviye`, `carAlarm`, `carHurda`, `carKiraUcret`, `carPrice`, `carRadio`, `carURL`, `carVergi`) VALUES
(746, 426, 0, '59MG878', 1394.78, -33.1184, 1001.9, 86.6196, 57, 77, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(752, 480, 102, '90GF716', 2529.79, 2519.65, 11.9345, 45.3572, 96, 48, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(744, 554, 0, '85HO554', 2697.88, -2390.66, 13.6328, 243.287, 51, 125, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(627, 580, 102, '49AS123', 286.908, -1145.34, 80.6526, 43.8553, 57, 13, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 31, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 2153, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(615, 490, 0, '67CB170', 1532.28, -1846.21, 15.4619, 358.393, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 17, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(632, 466, 121, '97KB780', 870.059, -1658.11, 13.2887, 359.314, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 1973, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(742, 487, 102, '35DD765', 303.873, -1322.1, 53.6212, 40.4871, 57, 123, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 3, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(639, 547, 121, '93OE200', 1280.43, -1796.01, 12.9869, 179.462, 14, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 92, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(640, 516, 121, '83OF366', 892.604, -1668.94, 13.3844, 359.96, 0, 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 1478, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(709, 426, 104, '64GR474', 903.62, -1454.98, 12.6604, 269.437, 15, 15, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 418, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(831, 597, 0, '17HB990', 2857.55, -1354.55, 11.0725, 280.313, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(650, 426, 0, '92RE782', 1544.9, -1663.46, 7.465, 88.3948, 112, 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 55, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(655, 405, 0, '92KL230', 1534.63, -1646.32, 5.8906, 180.077, 71, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(751, 560, 0, '38MP457', 2527.76, 2317.84, 10.6718, 44.8832, 6, 107, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(750, 560, 0, '73GD815', 2202.15, 1771.11, 10.6718, 272.015, 114, 88, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(661, 531, 0, '12MT231', -563.956, -1260.79, 22.0133, 76.1911, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 75, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(660, 531, 0, '13AG809', -440.917, -1345.9, 28.9871, 243.168, 91, 114, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(723, 560, 0, '60SO304', 239.685, -1878.07, 1.782, 12.1534, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(712, 413, 104, '64KS630', 2827.85, -1169.97, 25.1217, 272.695, 221, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 31, 290, 30, 300, 31, 250, 34, 15, 0, 0, -1, -1, 0, 0, -1, 495, 1, 1, 0, 0, 0, 0, 0, NULL, 25),
(748, 579, 0, '44NH735', 1713.39, 1447.67, 10.723, 46.8824, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, -1, -1, 0, 0, -1, 4, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(715, 579, 100, '23RA263', 1006.66, -1409.36, 14.2012, 329.112, 0, 98, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(721, 484, 0, '53ST250', 2922.13, -2062.79, -0.2768, 251.166, 0, 27, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(833, 560, 0, '11KB757', 1192.22, -1144.81, 23.725, 211.7, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(841, 597, 0, '88RK160', 2880.03, -1152.89, 10.875, 344.109, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(845, 426, 0, '90KB877', 2308.78, -1363.11, 23.8637, 215.4, 75, 75, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(698, 551, 123, '94FC191', 288.137, -1157.8, 81.9098, 289.274, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(687, 551, 123, '69BB700', 310.922, -1202.23, 76.904, 86.4442, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(753, 445, 104, '63HS115', 1354.37, -629.761, 109.018, 18.3574, 0, 24, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 430, 1, 1, 0, 0, 0, 0, 0, NULL, 25),
(692, 597, 0, '87CT921', 1561.57, -1607.59, 13.3828, 177.311, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 10, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(734, 432, 0, '63TL985', 392.235, 1948.59, 17.6406, 350.168, 9, 40, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(702, 419, 117, '46HO478', 914.686, -1411.93, 14.2184, 327.021, 77, 77, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(705, 522, 123, '13NP895', 1576.13, 1461.5, 11.8287, 169.781, 85, 74, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(735, 432, 0, '43GH230', 392.118, 1986.01, 17.6406, 30.6145, 110, 103, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(738, 426, 117, '56BB687', 296.234, -1175.86, 81.914, 358.658, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(739, 426, 117, '56PN565', 292.999, -1166.79, 81.9097, 112.628, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 1975, 1, 1, 0, 0, 0, 0, 0, NULL, 25),
(772, 422, 0, '44GC383', 622.865, -1313.45, 13.9051, 189.082, 51, 77, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(754, 585, 117, '69NO926', 880.485, -1072.41, 23.989, 266.159, 9, 47, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 424, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(863, 597, 0, '67NT192', 1206.61, -1153.12, 23.4772, 290.274, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(597, 598, 0, '34SB643', 2318.99, -1360.97, 25.5084, 90.6935, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(637, 551, 107, 'ISMAIL', 323.455, -1160.61, 80.8768, 132.724, 0, 46, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(638, 415, 102, '86BG582', 419.724, -1326.89, 15.7995, 55.4825, 32, 33, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(593, 596, 0, '77SS465', 1556.07, -1607.3, 13.3828, 179.866, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 182, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(594, 546, 120, '36AN354', 2014.67, -1737.25, 13.2809, 89.8069, 15, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 1096, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 468, 1, 1, 0, 0, 0, 0, 0, NULL, 25),
(587, 426, 116, '88ND274', 302.134, -1183.75, 80.6558, 311.773, 14, 14, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 31, 50, 24, 2, 0, 0, -1, -1, 0, 0, -1, 162, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(771, 596, 0, '34SD263', 818.067, -1143.31, 23.8705, 96.381, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(778, 599, 0, '73OF187', 411.21, -1481.82, 30.9044, 14.3287, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(848, 596, 0, '58BB346', 1938.31, -2481.35, 17.5185, 88.1172, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 33, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(847, 596, 0, '21SH913', 1938.31, -2481.35, 15.0185, 88.5098, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 195, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(846, 596, 0, '14EB828', 1938.18, -2481.23, 13.2793, 290.63, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(862, 554, 117, '14TH283', 2344.24, 203.102, 27.3359, 0.1866, 122, 57, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(864, 541, 0, '62OD463', 2087.31, -1797.18, 13.3828, 234.996, 120, 114, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(859, 560, 0, '82AK329', 1845.81, -1469.36, 13.3984, 105.811, 46, 46, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(858, 426, 0, '44KG619', 2076.84, -1753.18, 13.3828, 86.7564, 56, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(856, 579, 0, '47GB339', 1699.62, 84.7234, 33.2828, 345.954, 10, 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(789, 468, 0, '35MB807', 67.71, 129.859, 2.4219, 51.3426, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(790, 426, 0, '81CN319', -128.812, 227.702, 6.9699, 58.1897, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(806, 520, 0, '94FR211', 60.8281, 741.657, 25.5493, 83.14, 105, 77, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(802, 597, 0, '41TC770', 938.064, -1150.56, 23.6562, 292.885, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(807, 560, 0, '74KA469', -1347.44, 507.941, 11.1953, 86.9159, 2, 30, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(798, 473, 0, '81ED762', 345.079, -6278, -4.864, 341.19, 83, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(808, 602, 0, '77DA857', -1804.68, -1683.07, 22.2408, 120.261, 78, 28, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(809, 602, 0, '53NR974', -1694.08, -2236, 40.4852, 302.182, 1, 125, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 35, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(810, 411, 0, '33PS171', 1821.09, -1499.08, 5.6349, 173.739, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(829, 560, 0, '65OA968', 1571.1, -1780.66, 13.3828, 178.694, 88, 119, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(812, 593, 0, '39TM522', 2025.8, -1499.71, 3.3831, 85.0687, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(855, 497, 0, '12TF754', 1818.08, -1574.92, 13.5468, 181.258, 91, 14, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(844, 597, 0, '76LN279', 2311.79, -1359.12, 24.0231, 184.537, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(817, 602, 0, '24TB818', 945.104, -703.533, 122.211, 23.758, 3, 105, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(835, 528, 0, '48CP150', 1274.62, -1404.61, 13.0416, 35.2005, 59, 116, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(836, 560, 0, '26ME209', 1682.58, -2276.76, -1.2473, 179.923, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 575, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(838, 596, 0, '93KM822', 2548.19, -1464.59, 23.842, 42.8995, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0),
(839, 596, 0, '59ON612', 2591.71, -1450.01, 34.2214, 277.885, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `carstorage`
--

CREATE TABLE `carstorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `carstorage`
--

INSERT INTO `carstorage` (`ID`, `itemID`, `itemName`, `itemModel`, `itemQuantity`) VALUES
(491, 20, 'GPS Cihazi', 18875, 1),
(508, 22, 'GPS Cihazi', 18875, 1),
(462, 18, 'Goz Bagi', 1019, 1),
(508, 21, 'Ehliyet', 1581, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `characters`
--

CREATE TABLE `characters` (
  `ID` int(12) NOT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Character` varchar(24) DEFAULT NULL,
  `Created` int(4) DEFAULT 0,
  `Gender` int(4) DEFAULT 0,
  `Birthdate` varchar(32) DEFAULT '01/01/1970',
  `Origin` varchar(32) DEFAULT 'Not Specified',
  `Skin` int(12) DEFAULT 0,
  `Glasses` int(12) DEFAULT 0,
  `Hat` int(12) DEFAULT 0,
  `Bandana` int(12) DEFAULT 0,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `PosA` float DEFAULT 0,
  `Interior` int(12) DEFAULT 0,
  `World` int(12) DEFAULT 0,
  `GlassesPos` varchar(100) DEFAULT NULL,
  `HatPos` varchar(100) DEFAULT NULL,
  `BandanaPos` varchar(100) DEFAULT NULL,
  `Hospital` int(12) DEFAULT -1,
  `HospitalInt` int(12) DEFAULT 0,
  `Money` int(12) DEFAULT 0,
  `BankMoney` int(12) DEFAULT 0,
  `OwnsBillboard` int(12) DEFAULT -1,
  `Savings` int(12) DEFAULT 0,
  `Admin` int(12) DEFAULT 0,
  `JailTime` int(12) DEFAULT 0,
  `JailReason` varchar(128) DEFAULT 'Yok',
  `Muted` int(4) DEFAULT 0,
  `CreateDate` int(12) DEFAULT 0,
  `LastLogin` int(12) DEFAULT 0,
  `Tester` int(4) DEFAULT 0,
  `Gun1` int(12) DEFAULT 0,
  `Gun2` int(12) DEFAULT 0,
  `Gun3` int(12) DEFAULT 0,
  `Gun4` int(12) DEFAULT 0,
  `Gun5` int(12) DEFAULT 0,
  `Gun6` int(12) DEFAULT 0,
  `Gun7` int(12) DEFAULT 0,
  `Gun8` int(12) DEFAULT 0,
  `Gun9` int(12) DEFAULT 0,
  `Gun10` int(12) DEFAULT 0,
  `Gun11` int(12) DEFAULT 0,
  `Gun12` int(12) DEFAULT 0,
  `Gun13` int(12) DEFAULT 0,
  `Ammo1` int(12) DEFAULT 0,
  `Ammo2` int(12) DEFAULT 0,
  `Ammo3` int(12) DEFAULT 0,
  `Ammo4` int(12) DEFAULT 0,
  `Ammo5` int(12) DEFAULT 0,
  `Ammo6` int(12) DEFAULT 0,
  `Ammo7` int(12) DEFAULT 0,
  `Ammo8` int(12) DEFAULT 0,
  `Ammo9` int(12) DEFAULT 0,
  `Ammo10` int(12) DEFAULT 0,
  `Ammo11` int(12) DEFAULT 0,
  `Ammo12` int(12) DEFAULT 0,
  `Ammo13` int(12) DEFAULT 0,
  `House` int(12) DEFAULT -1,
  `Business` int(12) DEFAULT -1,
  `Phone` int(12) DEFAULT 0,
  `Lottery` int(12) DEFAULT 0,
  `Hunger` int(12) DEFAULT 100,
  `Thirst` int(12) DEFAULT 100,
  `PlayingHours` int(12) DEFAULT 0,
  `Minutes` int(12) DEFAULT 0,
  `ArmorStatus` float DEFAULT 0,
  `Entrance` int(12) DEFAULT 0,
  `Job` int(12) DEFAULT 0,
  `Faction` int(12) DEFAULT -1,
  `FactionRank` int(12) DEFAULT 0,
  `Prisoned` int(4) DEFAULT 0,
  `Warrants` int(12) DEFAULT 0,
  `Injured` int(4) DEFAULT 0,
  `Health` float DEFAULT 0,
  `Channel` int(12) DEFAULT 0,
  `Accent` varchar(24) DEFAULT NULL,
  `Bleeding` int(4) DEFAULT 0,
  `Warnings` int(12) DEFAULT 0,
  `Warn1` varchar(32) DEFAULT NULL,
  `Warn2` varchar(32) DEFAULT NULL,
  `MaskID` int(12) DEFAULT 0,
  `FactionMod` int(12) DEFAULT 0,
  `Capacity` int(12) DEFAULT 35,
  `AdminHide` int(4) DEFAULT 0,
  `LotteryB` int(11) NOT NULL,
  `SpawnPoint` int(11) NOT NULL,
  `Level` int(11) NOT NULL DEFAULT 1,
  `Exp` int(11) NOT NULL DEFAULT 0,
  `Meslekpayday` int(11) NOT NULL,
  `AdminName` varchar(32) NOT NULL DEFAULT 'Yok',
  `EkstraDil` int(11) NOT NULL DEFAULT 0,
  `KasSeviye` int(11) NOT NULL DEFAULT 1,
  `KasExp` int(11) NOT NULL DEFAULT 0,
  `DovusStil` int(11) NOT NULL DEFAULT 4,
  `MetalAldimi` int(11) NOT NULL,
  `TirSeviye` int(11) NOT NULL DEFAULT 1,
  `TirEXP` int(11) NOT NULL DEFAULT 0,
  `SilahSeviye` int(11) NOT NULL DEFAULT 1,
  `SilahEXP` int(11) NOT NULL DEFAULT 0,
  `ASlotA` varchar(30) NOT NULL,
  `ASlotB` varchar(30) NOT NULL,
  `ASlotC` varchar(30) NOT NULL,
  `ASlotD` varchar(30) NOT NULL,
  `ASlotE` varchar(30) NOT NULL,
  `ASlotAPos` varchar(100) NOT NULL,
  `ASlotBPos` varchar(100) NOT NULL,
  `ASlotCPos` varchar(100) NOT NULL,
  `ASlotDPos` varchar(100) NOT NULL,
  `ASlotEPos` varchar(100) NOT NULL,
  `sSayi` int(11) NOT NULL,
  `rSayi` int(11) NOT NULL,
  `Hediye` int(11) NOT NULL DEFAULT 0,
  `OyVerdimi` int(11) NOT NULL DEFAULT 0,
  `VCoin` int(11) NOT NULL,
  `Donator` int(11) NOT NULL DEFAULT 0,
  `DonatorTime` int(11) NOT NULL,
  `FabrikaCalisma` int(11) NOT NULL DEFAULT 0,
  `Ayarlar` varchar(256) NOT NULL,
  `FactionDivizyon` int(11) NOT NULL DEFAULT 0,
  `ReferansDurum` int(11) NOT NULL DEFAULT 0,
  `Partner` int(11) NOT NULL DEFAULT 0,
  `BizJob` int(11) NOT NULL DEFAULT 0,
  `BizRank` int(11) NOT NULL DEFAULT -1,
  `TenRengi` varchar(24) NOT NULL DEFAULT 'Yok',
  `Baliklar` varchar(256) NOT NULL,
  `BalikGram` varchar(256) NOT NULL,
  `Gorunus` varchar(256) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `OnDuty` varchar(32) NOT NULL DEFAULT '0|1',
  `Walkstyle` int(4) NOT NULL DEFAULT 0,
  `Hudstyle` int(4) NOT NULL DEFAULT 1,
  `FishWeight` int(4) NOT NULL DEFAULT 0,
  `BalikYemi` int(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `characters`
--

INSERT INTO `characters` (`ID`, `Username`, `Character`, `Created`, `Gender`, `Birthdate`, `Origin`, `Skin`, `Glasses`, `Hat`, `Bandana`, `PosX`, `PosY`, `PosZ`, `PosA`, `Interior`, `World`, `GlassesPos`, `HatPos`, `BandanaPos`, `Hospital`, `HospitalInt`, `Money`, `BankMoney`, `OwnsBillboard`, `Savings`, `Admin`, `JailTime`, `JailReason`, `Muted`, `CreateDate`, `LastLogin`, `Tester`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `House`, `Business`, `Phone`, `Lottery`, `Hunger`, `Thirst`, `PlayingHours`, `Minutes`, `ArmorStatus`, `Entrance`, `Job`, `Faction`, `FactionRank`, `Prisoned`, `Warrants`, `Injured`, `Health`, `Channel`, `Accent`, `Bleeding`, `Warnings`, `Warn1`, `Warn2`, `MaskID`, `FactionMod`, `Capacity`, `AdminHide`, `LotteryB`, `SpawnPoint`, `Level`, `Exp`, `Meslekpayday`, `AdminName`, `EkstraDil`, `KasSeviye`, `KasExp`, `DovusStil`, `MetalAldimi`, `TirSeviye`, `TirEXP`, `SilahSeviye`, `SilahEXP`, `ASlotA`, `ASlotB`, `ASlotC`, `ASlotD`, `ASlotE`, `ASlotAPos`, `ASlotBPos`, `ASlotCPos`, `ASlotDPos`, `ASlotEPos`, `sSayi`, `rSayi`, `Hediye`, `OyVerdimi`, `VCoin`, `Donator`, `DonatorTime`, `FabrikaCalisma`, `Ayarlar`, `FactionDivizyon`, `ReferansDurum`, `Partner`, `BizJob`, `BizRank`, `TenRengi`, `Baliklar`, `BalikGram`, `Gorunus`, `OnDuty`, `Walkstyle`, `Hudstyle`, `FishWeight`, `BalikYemi`) VALUES
(1, 'developeraccount', 'Dev_SAMP', 1, 1, '6/11/1994', 'Amerikan', 21131, 0, 0, 0, 1701.74, 84.7464, 33.0234, 356.856, 0, 0, NULL, NULL, NULL, -1, -1, 20000, 20000, -1, 0, 6, 0, '', 0, 1676809229, 1676823534, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 55, 53, 3, 52, 0, -1, 0, 63, 2, 0, 0, 0, 100, 911, NULL, 0, 0, '', '', 68768, 0, 35, 0, 0, 0, 21, 0, 0, 'Yok', 0, 1, 0, 4, 0, 1, 0, 1, 0, '0|0|1', '0|0|1', '0|0|1', '0|0|1', '0|0|1', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', -1, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|1|1|0', 0, 0, 0, -1, 0, 'Beyaz', '', '', '', '1|0', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(12) DEFAULT 0,
  `contactID` int(12) NOT NULL,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dealervehicles`
--

CREATE TABLE `dealervehicles` (
  `ID` int(12) DEFAULT 0,
  `vehID` int(12) NOT NULL,
  `vehModel` int(12) DEFAULT 0,
  `vehPrice` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `dealervehicles`
--

INSERT INTO `dealervehicles` (`ID`, `vehID`, `vehModel`, `vehPrice`) VALUES
(22, 1, 412, 4500),
(25, 3, 422, 20000),
(28, 4, 421, 12350),
(29, 5, 421, 12300);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `detectors`
--

CREATE TABLE `detectors` (
  `detectorID` int(12) NOT NULL,
  `detectorX` float DEFAULT 0,
  `detectorY` float DEFAULT 0,
  `detectorZ` float DEFAULT 0,
  `detectorAngle` float DEFAULT 0,
  `detectorInterior` int(12) DEFAULT 0,
  `detectorWorld` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `detectors`
--

INSERT INTO `detectors` (`detectorID`, `detectorX`, `detectorY`, `detectorZ`, `detectorAngle`, `detectorInterior`, `detectorWorld`) VALUES
(5, 1732.4, 1449.27, 10.7044, 40.2226, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dropped`
--

CREATE TABLE `dropped` (
  `ID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemX` float DEFAULT 0,
  `itemY` float DEFAULT 0,
  `itemZ` float DEFAULT 0,
  `itemInt` int(12) DEFAULT 0,
  `itemWorld` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0,
  `itemAmmo` int(12) DEFAULT 0,
  `itemWeapon` int(12) DEFAULT 0,
  `itemPlayer` varchar(24) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `dropped`
--

INSERT INTO `dropped` (`ID`, `itemName`, `itemModel`, `itemX`, `itemY`, `itemZ`, `itemInt`, `itemWorld`, `itemQuantity`, `itemAmmo`, `itemWeapon`, `itemPlayer`) VALUES
(93, 'Deagle', 348, 952.298, -1110.16, 22.8986, 0, 0, 1, 500, 24, 'Ozkan Cozer'),
(89, 'Heat seeking RPG', 360, 1220.04, -1379.64, 12.7571, 0, 0, 1, 497, 36, 'Thiago Jong'),
(91, 'Deagle', 348, 952.647, -1110.12, 22.8966, 0, 0, 1, 490, 24, 'Alsafi Yasir'),
(84, 'Sirtcantasi', 3026, 2062.92, -1598.21, 225.468, 0, 0, 1, 0, 0, 'Alsafi Yasir');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE `duyurular` (
  `DuyuruID` int(11) NOT NULL,
  `DuyuruBasligi` varchar(32) NOT NULL,
  `DuyuruMesaji` varchar(256) NOT NULL,
  `DuyuruTarihi` varchar(32) NOT NULL,
  `DuyuranAdmin` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `entrances`
--

CREATE TABLE `entrances` (
  `entranceID` int(12) NOT NULL,
  `entranceName` varchar(32) DEFAULT NULL,
  `entranceIcon` int(12) DEFAULT 0,
  `entrancePosX` float DEFAULT 0,
  `entrancePosY` float DEFAULT 0,
  `entrancePosZ` float DEFAULT 0,
  `entrancePosA` float DEFAULT 0,
  `entranceIntX` float DEFAULT 0,
  `entranceIntY` float DEFAULT 0,
  `entranceIntZ` float DEFAULT 0,
  `entranceIntA` float DEFAULT 0,
  `entranceInterior` int(12) DEFAULT 0,
  `entranceExterior` int(12) DEFAULT 0,
  `entranceExteriorVW` int(12) DEFAULT 0,
  `entranceType` int(12) DEFAULT 0,
  `entrancePass` varchar(32) DEFAULT NULL,
  `entranceLocked` int(12) DEFAULT 0,
  `entranceCustom` int(4) DEFAULT 0,
  `entranceWorld` int(12) DEFAULT 0,
  `entranceBaglanti` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `entrances`
--

INSERT INTO `entrances` (`entranceID`, `entranceName`, `entranceIcon`, `entrancePosX`, `entrancePosY`, `entrancePosZ`, `entrancePosA`, `entranceIntX`, `entranceIntY`, `entranceIntZ`, `entranceIntA`, `entranceInterior`, `entranceExterior`, `entranceExteriorVW`, `entranceType`, `entrancePass`, `entranceLocked`, `entranceCustom`, `entranceWorld`, `entranceBaglanti`) VALUES
(11, 'Metropolitan Facility', 0, 1093.66, -1697.52, 15.0399, 2.0113, 1118.57, -1690.49, 48.6529, 358.655, 5, 0, 0, 0, '', 0, 0, 0, 0),
(10, 'SHERIFF\'S DEPARTMENT', 0, 2323.14, -1340.71, 24.3264, 270.737, 2322.77, -1340.61, 24.3264, 264.074, 0, 0, 0, 0, '', 0, 0, 7010, 0),
(12, 'Los Angeles Police Department', 0, 1555.5, -1675.65, 16.1951, 272.771, 1344.93, 13.2609, 1000.98, 0.1203, 57, 0, 0, 0, '', 0, 0, 7012, 0),
(13, 'Gloria Apartment', 0, 1894.95, -1765.66, 14.6933, 179.855, 2214.38, -1150.54, 1025.8, 274.399, 15, 0, 0, 0, '', 0, 0, 7013, 0),
(14, 'Gloria Apartment', 0, 1849.86, -1765.67, 14.8212, 179.855, 2228.43, -1150.57, 1025.8, 90.1564, 15, 0, 0, 0, '', 0, 0, 7013, 0),
(15, 'San Andreas Bank', 0, 1310.1, -1367.5, 13.5363, 0.6746, 1319.47, 9.9062, 2068.51, 358.02, 54, 0, 0, 2, '', 0, 0, 7015, 0),
(16, 'Jefferson Motel', 0, 2233.29, -1159.86, 25.8906, 270.51, 2214.51, -1150.49, 1025.8, 271.445, 15, 0, 0, 0, '', 0, 0, 7016, 0),
(21, 'Gloria Apartment', 0, 1853.4, -1785.26, 24.346, 357.659, 2189.97, -1179.79, 1033.79, 359.642, 15, 0, 0, 0, '', 0, 0, 7021, 0),
(24, 'Shine Apartment', 0, 865.248, -1633.85, 14.9295, 358.965, 2558.43, 255.267, 2509.61, 90.858, 174, 0, 0, 0, '', 0, 0, 7024, 0),
(27, 'Vinewood Station', 4, 1297.44, -1124.76, 23.824, 355.51, 725.867, 2716.2, 6.0846, 90.0673, 54, 0, 0, 0, '', 0, 0, 7027, 0),
(28, 'Harbor Station', 0, 2139.68, -2172.49, 13.5543, 45.537, 1560.08, -1352, 1395.3, 178.858, 68, 0, 0, 0, '', 0, 0, 7028, 0),
(29, 'Traffic Division Bureau', 0, 355.38, -1356.67, 14.5569, 29.4905, 623.219, -568.093, 1929.61, 91.6886, 99, 0, 0, 0, '', 0, 0, 7029, 0),
(31, 'MUTFAK', 0, 595.184, 295.206, 2218.62, 89.026, -222.895, 1403.8, 27.7734, 90.609, 18, 245, 6035, 0, '', 0, 0, 6035, 0),
(34, 'INTELLIGENCE UNIT', 0, 1555.56, -1199.99, 20.0233, 0.0593, 274.714, 286.727, 1020.15, 359.023, 1, 0, 0, 0, '', 0, 0, 5095, 0),
(44, 'RAP.NET ADMINISTRATION', 0, -107.532, -219.747, 2.0466, 267.503, -107.532, -219.747, 10002, 0, 0, 0, 0, 0, '', 0, 0, 7044, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fabrikalar`
--

CREATE TABLE `fabrikalar` (
  `fabrikaID` int(11) NOT NULL,
  `fabrikaAd` varchar(32) NOT NULL,
  `fabrikaTip` int(11) NOT NULL DEFAULT 0,
  `fabrikaPosX` float NOT NULL,
  `fabrikaPosY` float NOT NULL,
  `fabrikaPosZ` float NOT NULL,
  `fabrikaBirlik` int(11) NOT NULL DEFAULT -1,
  `fabrikaUretimHizi` int(11) NOT NULL DEFAULT 2,
  `fabrikaTime` int(11) NOT NULL DEFAULT 0,
  `fabrikaDepo1` int(11) NOT NULL DEFAULT 0,
  `fabrikaDepo2` int(11) NOT NULL DEFAULT 0,
  `fabrikaDepo3` int(11) NOT NULL DEFAULT 0,
  `fabrikaDepo4` int(11) NOT NULL DEFAULT 0,
  `fabrikaPosA` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `factions`
--

CREATE TABLE `factions` (
  `factionID` int(12) NOT NULL,
  `factionName` varchar(32) DEFAULT NULL,
  `factionColor` int(12) DEFAULT 0,
  `factionType` int(12) DEFAULT 0,
  `factionRanks` int(12) DEFAULT 0,
  `factionLockerX` float DEFAULT 0,
  `factionLockerY` float DEFAULT 0,
  `factionLockerZ` float DEFAULT 0,
  `factionLockerInt` int(12) DEFAULT 0,
  `factionLockerWorld` int(12) DEFAULT 0,
  `factionKasaX` float NOT NULL,
  `factionKasaY` float NOT NULL,
  `factionKasaZ` float NOT NULL,
  `factionKasaInt` int(11) NOT NULL,
  `factionKasaWorld` int(11) NOT NULL,
  `factionKasaMiktar` int(11) NOT NULL,
  `factionWeapon1` int(12) DEFAULT 0,
  `factionAmmo1` int(12) DEFAULT 0,
  `factionWeapon2` int(12) DEFAULT 0,
  `factionAmmo2` int(12) DEFAULT 0,
  `factionWeapon3` int(12) DEFAULT 0,
  `factionAmmo3` int(12) DEFAULT 0,
  `factionWeapon4` int(12) DEFAULT 0,
  `factionAmmo4` int(12) DEFAULT 0,
  `factionWeapon5` int(12) DEFAULT 0,
  `factionAmmo5` int(12) DEFAULT 0,
  `factionWeapon6` int(12) DEFAULT 0,
  `factionAmmo6` int(12) DEFAULT 0,
  `factionWeapon7` int(12) DEFAULT 0,
  `factionAmmo7` int(12) DEFAULT 0,
  `factionWeapon8` int(12) DEFAULT 0,
  `factionAmmo8` int(12) DEFAULT 0,
  `factionWeapon9` int(12) DEFAULT 0,
  `factionAmmo9` int(12) DEFAULT 0,
  `factionWeapon10` int(12) DEFAULT 0,
  `factionAmmo10` int(12) DEFAULT 0,
  `factionRank1` varchar(32) DEFAULT NULL,
  `factionRank2` varchar(32) DEFAULT NULL,
  `factionRank3` varchar(32) DEFAULT NULL,
  `factionRank4` varchar(32) DEFAULT NULL,
  `factionRank5` varchar(32) DEFAULT NULL,
  `factionRank6` varchar(32) DEFAULT NULL,
  `factionRank7` varchar(32) DEFAULT NULL,
  `factionRank8` varchar(32) DEFAULT NULL,
  `factionRank9` varchar(32) DEFAULT NULL,
  `factionRank10` varchar(32) DEFAULT NULL,
  `factionRank11` varchar(32) DEFAULT NULL,
  `factionRank12` varchar(32) DEFAULT NULL,
  `factionRank13` varchar(32) DEFAULT NULL,
  `factionRank14` varchar(32) DEFAULT NULL,
  `factionRank15` varchar(32) DEFAULT NULL,
  `factionRank16` varchar(32) DEFAULT NULL,
  `factionRank17` varchar(32) DEFAULT NULL,
  `factionRank18` varchar(32) DEFAULT NULL,
  `factionRank19` varchar(32) DEFAULT NULL,
  `factionRank20` varchar(32) DEFAULT NULL,
  `factionRank21` varchar(32) DEFAULT NULL,
  `factionRank22` varchar(32) DEFAULT NULL,
  `factionRank23` varchar(32) DEFAULT NULL,
  `factionRank24` varchar(32) DEFAULT NULL,
  `factionRank25` varchar(32) DEFAULT NULL,
  `factionSkin1` int(12) DEFAULT 0,
  `factionSkin2` int(12) DEFAULT 0,
  `factionSkin3` int(12) DEFAULT 0,
  `factionSkin4` int(12) DEFAULT 0,
  `factionSkin5` int(12) DEFAULT 0,
  `factionSkin6` int(12) DEFAULT 0,
  `factionSkin7` int(12) DEFAULT 0,
  `factionSkin8` int(12) DEFAULT 0,
  `factionSkin9` int(11) NOT NULL DEFAULT 0,
  `factionSkin10` int(11) NOT NULL DEFAULT 0,
  `factionSkin11` int(11) NOT NULL DEFAULT 0,
  `factionSkin12` int(11) NOT NULL DEFAULT 0,
  `factionSkin13` int(11) NOT NULL DEFAULT 0,
  `factionSkin14` int(11) NOT NULL DEFAULT 0,
  `factionSkin15` int(11) NOT NULL DEFAULT 0,
  `SpawnX` float NOT NULL,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnInterior` int(11) NOT NULL,
  `SpawnVW` int(1) NOT NULL,
  `gTip` int(11) NOT NULL DEFAULT 0,
  `factionBKS` int(11) NOT NULL,
  `factionBAS` int(11) NOT NULL,
  `factionBFS` int(11) NOT NULL,
  `factionBCS` int(11) NOT NULL,
  `factionLevel` int(11) NOT NULL DEFAULT 1,
  `factionEXP` int(11) NOT NULL DEFAULT 0,
  `factionOnay` int(2) NOT NULL DEFAULT 0,
  `factionDivizyon1` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon2` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon3` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon4` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon5` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon6` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon7` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon8` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon9` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionDivizyon10` varchar(32) NOT NULL DEFAULT 'Yok',
  `factionMOTD` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `factions`
--

INSERT INTO `factions` (`factionID`, `factionName`, `factionColor`, `factionType`, `factionRanks`, `factionLockerX`, `factionLockerY`, `factionLockerZ`, `factionLockerInt`, `factionLockerWorld`, `factionKasaX`, `factionKasaY`, `factionKasaZ`, `factionKasaInt`, `factionKasaWorld`, `factionKasaMiktar`, `factionWeapon1`, `factionAmmo1`, `factionWeapon2`, `factionAmmo2`, `factionWeapon3`, `factionAmmo3`, `factionWeapon4`, `factionAmmo4`, `factionWeapon5`, `factionAmmo5`, `factionWeapon6`, `factionAmmo6`, `factionWeapon7`, `factionAmmo7`, `factionWeapon8`, `factionAmmo8`, `factionWeapon9`, `factionAmmo9`, `factionWeapon10`, `factionAmmo10`, `factionRank1`, `factionRank2`, `factionRank3`, `factionRank4`, `factionRank5`, `factionRank6`, `factionRank7`, `factionRank8`, `factionRank9`, `factionRank10`, `factionRank11`, `factionRank12`, `factionRank13`, `factionRank14`, `factionRank15`, `factionRank16`, `factionRank17`, `factionRank18`, `factionRank19`, `factionRank20`, `factionRank21`, `factionRank22`, `factionRank23`, `factionRank24`, `factionRank25`, `factionSkin1`, `factionSkin2`, `factionSkin3`, `factionSkin4`, `factionSkin5`, `factionSkin6`, `factionSkin7`, `factionSkin8`, `factionSkin9`, `factionSkin10`, `factionSkin11`, `factionSkin12`, `factionSkin13`, `factionSkin14`, `factionSkin15`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnInterior`, `SpawnVW`, `gTip`, `factionBKS`, `factionBAS`, `factionBFS`, `factionBCS`, `factionLevel`, `factionEXP`, `factionOnay`, `factionDivizyon1`, `factionDivizyon2`, `factionDivizyon3`, `factionDivizyon4`, `factionDivizyon5`, `factionDivizyon6`, `factionDivizyon7`, `factionDivizyon8`, `factionDivizyon9`, `factionDivizyon10`, `factionMOTD`) VALUES
(69, 'Federal Bureau of Investigation', -256, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'New Agent Trainee', 'Special Agent', 'Senior Special Agent', 'Supervisory Special Agent', 'As. Special Agent-in-charge', 'Special Agent in-charge', 'Deputy Assistant Director', 'Assistant Director', 'Chief of Staff', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Criminal Investigative Div.', 'Counterterrorism Div.', 'Counterintelligence Div.', 'International Operations Div.', 'Office of Law Enforcement Div.', 'Directorate of Intelligence', 'Cyber Div.', 'Critical Incident Response Gr.', 'Yok', 'Yok', ''),
(67, 'Los Angeles City Hall', -256, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Director', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', ''),
(64, 'Los Angeles Sheriffs Department', -256, 1, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deputy Sheriff Trainee', 'Deputy Sheriff', 'Deputy Sheriff I', 'Deputy Sheriff II', 'Sergeant', 'Lieutenant', 'Captain', 'Area Commander', 'Division Chief', 'Assistant Sheriff', 'Undersheriff', 'Sheriff', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', ''),
(63, 'Los Angeles Police Department', -256, 1, 18, 1354.34, 42.9419, 1000.98, 57, 7012, 0, 0, 0, 0, 0, 0, 24, 90, 31, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Police Officer I', 'Police Officer II', 'Police Officer III', 'Police Officer III+1', 'Police Detective I', 'Police Detective II', 'Police Detective III', 'Sergeant I', 'Sergeant II', 'Sergeant III', 'Liutenant I', 'Liutenant II', 'Captain I', 'Captain II', 'Police Commander', 'Deputy Chief I', 'Deputy Chief II', 'Chief of Police', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Special Weapons and Tactics', 'Gang and Narcotics Division', 'Traffic Enforcement Division', 'Detective Support and Vice Unit', 'Homicide&Burglary Division', 'Special Investigation', 'Internal Affairs', 'High Speed Interception', 'Yok', 'Yok', 'IN GOD WE TRUST'),
(71, 'LA Taxi', -256, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faction_uniforms`
--

CREATE TABLE `faction_uniforms` (
  `faction_id` int(12) NOT NULL,
  `id` int(12) NOT NULL,
  `skin_id` int(12) NOT NULL,
  `skin_name` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `skin_race` int(12) NOT NULL,
  `skin_sex` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `faction_uniforms`
--

INSERT INTO `faction_uniforms` (`faction_id`, `id`, `skin_id`, `skin_name`, `skin_race`, `skin_sex`) VALUES
(1, 290, 290, 'TEST', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `furniture`
--

CREATE TABLE `furniture` (
  `ID` int(12) DEFAULT 0,
  `furnitureID` int(12) NOT NULL,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int(12) DEFAULT 0,
  `furnitureX` float DEFAULT 0,
  `furnitureY` float DEFAULT 0,
  `furnitureZ` float DEFAULT 0,
  `furnitureRX` float DEFAULT 0,
  `furnitureRY` float DEFAULT 0,
  `furnitureRZ` float DEFAULT 0,
  `furnitureType` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `furniture`
--

INSERT INTO `furniture` (`ID`, `furnitureID`, `furnitureName`, `furnitureModel`, `furnitureX`, `furnitureY`, `furnitureZ`, `furnitureRX`, `furnitureRY`, `furnitureRZ`, `furnitureType`) VALUES
(32, 9, 'Televizyon 2', 1717, 246.129, 306.356, 998.157, 0, 0, -63.3758, 0),
(32, 7, 'Moose Head', 1736, 247.193, 300.867, 1000.84, 0, 0, 175.46, 0),
(32, 8, 'Mutfak 8', 2136, 243.937, 306.469, 998.028, 0, 0, 0.5345, 0),
(32, 10, 'Kabin 6', 2025, 249.55, 304.188, 998.147, 0, 0, -89.8532, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `furnitures`
--

CREATE TABLE `furnitures` (
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `model` int(12) NOT NULL,
  `price` int(12) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `rot_x` float NOT NULL,
  `rot_y` float NOT NULL,
  `rot_z` float NOT NULL,
  `interior` int(12) NOT NULL,
  `object_id` int(12) NOT NULL,
  `world` int(12) NOT NULL,
  `texture0` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture1` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture2` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture3` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture4` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture5` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture6` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture7` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture8` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture9` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture10` varchar(100) NOT NULL DEFAULT '0|yok|yok',
  `texture11` varchar(100) NOT NULL DEFAULT '0|yok|yok'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `furnitures`
--

INSERT INTO `furnitures` (`id`, `name`, `model`, `price`, `pos_x`, `pos_y`, `pos_z`, `rot_x`, `rot_y`, `rot_z`, `interior`, `object_id`, `world`, `texture0`, `texture1`, `texture2`, `texture3`, `texture4`, `texture5`, `texture6`, `texture7`, `texture8`, `texture9`, `texture10`, `texture11`) VALUES
(1835, 'Kitaplýk', 14455, 0, 219.206, 284.029, 1020.97, 0, 0, -1.2, 1, 21440, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1836, 'Kitaplýk', 14455, 0, 213.505, 284.145, 1020.97, 0, 0, -1.1, 1, 21441, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1838, 'Pervaneli Avize', 16779, 0, 222.47, 297.403, 1022.9, 0, 0, 0, 1, 21442, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1839, 'Ayaklý Lamba 1', 2069, 0, 223.799, 302.23, 1019.32, 0, 0, 0, 1, 21443, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1840, 'Kýrmýzý Ahþap Kapý', 1504, 0, 220.721, 296.186, 1019.28, 0, 0, -90.3, 1, 21444, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1842, 'Duvar Tablosu 12', 2266, 0, 220.009, 292.558, 1020.74, 0, 0, 0, 1, 21445, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1844, 'Duvar Tablosu 18', 2272, 0, 215.667, 292.611, 1020.93, 0, 0, 0, 1, 21446, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1845, 'Duvar Tablosu 36', 2254, 0, 213.666, 293.082, 1021.54, 0, 0, 0, 1, 21447, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1847, 'Duvar Tablosu 19', 2273, 0, 213.096, 286.134, 1021.26, 0, 0, 89.8, 1, 21448, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1849, 'Duvar Tablosu 32', 2286, 0, 212.65, 287.426, 1021.17, 0, 0, 90.7, 1, 21449, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1853, 'Beyaz Saksý', 948, 0, 213.174, 284.813, 1019.31, 0, 0, 0, 1, 21450, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1854, 'Sigara', 19625, 0, 216.594, 290.651, 1020.18, 0, 0, 18.7, 1, 21451, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1855, 'Þarap Kadehi', 1667, 0, 217.489, 290.675, 1020.27, 0, 0, 0, 1, 21452, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1856, 'Poster XXX 2', 2587, 0, 220.83, 297.008, 1021.31, 0, 0, 89.5, 1, 21453, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1857, 'DVD oynatýcý 4', 1787, 0, 219.339, 292.557, 1019.85, 0, 0, 0, 1, 21454, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1858, 'Antika Telefon', 11705, 0, 220.114, 292.509, 1019.78, 0, 0, 0, 1, 21455, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1859, '2 Koltuk - 1 Masa', 2571, 0, 222.905, 286.636, 1019.29, 0, 0, 114.8, 1, 21456, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1861, 'Televizyon Ünitesi 1', 2296, 0, 223.972, 289.552, 1019.29, 0, 0, -90.1, 1, 21457, 5095, '15042|svsfsm|GB_rapposter01', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1862, 'Þifre paneli', 19273, 0, 221.46, 302.733, 1021.1, 0, 0, 0, 1, 21458, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1863, 'Halý 3', 2835, 0, 223.107, 300.726, 1019.29, 0, 0, 93, 1, 21459, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1864, 'Duvar Tablosu 2', 2256, 0, 224.225, 296.341, 1021.43, 0, 0, -90.1, 1, 21460, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1865, 'Yemek Masasý 4', 1737, 0, 223.723, 295.815, 1019.28, 0, 0, 90, 1, 21461, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1866, 'Vazo 5', 14705, 0, 223.796, 296.286, 1020.32, 0, 0, 0, 1, 21462, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1867, 'Halý 1', 2833, 0, 220.149, 289.684, 1019.3, 0, 0, 81.5, 1, 21463, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1868, 'Ofis Dolabý 6', 2164, 0, 224.243, 293.065, 1019.29, 0, 0, -89.9, 1, 21464, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1869, 'Bilardo Istakasý', 339, 0, 224.204, 292.327, 1021.65, -0.3, 70.5, 91.8, 1, 21465, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1872, 'Duvar 24(Beton7)', 19377, 0, 256.391, 178.305, 1011.7, 0.2, 92.1, -1.222, 3, 21466, 5092, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1873, 'Duvar 24(Beton7)', 19377, 0, 245.844, 178.35, 1011.79, -1, -90.3, 0, 3, 21467, 5092, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1874, 'Duvar 1(Turuncu-Beyaz)', 19353, 0, 279.549, 294.27, 1020.89, 0, 0, 0, 1, 21468, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1879, 'Geniþ Duvar 1(Kýrmýzý Beyaz)', 19445, 0, 278.186, 295.921, 1020.88, 0, 0, 90.2, 1, 21469, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1881, 'Duvar 1(Turuncu-Beyaz)', 19353, 0, 277.847, 286.203, 1020.88, 0, 0, -90, 1, 21470, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1882, 'Ýnce Duvar 1(Kýrmýzý-Beyaz)', 19426, 0, 269.395, 295.954, 1020.87, 0, 0, -90.6, 1, 21471, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1883, 'Kapý Giriþi 1(Turuncu-Beyaz)', 19383, 0, 274.634, 286.202, 1020.87, 0, 0, -90, 1, 21472, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1884, 'Ofis Masasý 23', 2607, 0, 276.584, 293.923, 1019.49, 0, 0, -90.1, 1, 21473, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1886, 'Sigara Paketi 2', 19897, 0, 276.923, 293.998, 1019.91, 0, 0, 31.6, 1, 21474, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1887, 'Kelepçe', 11749, 0, 276.826, 293.963, 1019.91, -7.1, 0.5, 123.3, 1, 21475, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1888, 'Yeþil Paket', 1578, 0, 276.725, 293.284, 1019.86, 0, 0, 129.1, 1, 21476, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1889, 'Beyaz Masa Lambasý', 2196, 0, 277.086, 294.523, 1019.89, 0, 0, -52.9, 1, 21477, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1891, 'Duvar 26(Ahþap8)', 19379, 0, 274.277, 291.063, 1019.06, 0, 90, 0, 1, 21478, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1893, 'Siyah Ofis Sandalyesi 3', 1714, 0, 277.462, 293.674, 1019.08, 0, 0, -129, 1, 21479, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1894, 'Amerika Bayraðý', 11245, 0, 279.033, 297.048, 1020.89, 0, 0, -95.5, 1, 21480, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1895, 'Duvar 1(Turuncu-Beyaz)', 19353, 0, 279.551, 291.075, 1020.89, 0, 0, 0, 1, 21481, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1896, 'Duvar 1(Turuncu-Beyaz)', 19353, 0, 279.535, 287.873, 1020.89, 0, 0, 0, 1, 21482, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1897, 'Güvenlik Kulübesi', 3881, 0, 272.723, 298.803, 1020.89, 0, 0, -89.8, 1, 21483, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1899, 'Pencere Giriþi 1(Kýrmýzý-Beyaz)', 19399, 0, 271.803, 295.921, 1020.88, 0, 0, -90.5, 1, 21484, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1900, 'Perde 3', 14752, 0, 271.829, 295.818, 1021.09, 0, 0, 87.6, 1, 21485, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1901, 'Mantar Tablo 2', 2612, 0, 275.029, 295.772, 1020.9, 0, 0, 0, 1, 21486, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1903, 'Radyatör', 1738, 0, 276.964, 295.624, 1019.72, 0, 0, 0, 1, 21487, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1904, 'Büyük Gazete', 2055, 0, 276.115, 286.343, 1020.94, 0, 0, -178.6, 1, 21488, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1905, 'Duvar 1(Turuncu-Beyaz)', 19353, 0, 269.016, 294.259, 1020.87, 0, 0, 0, 1, 21489, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1907, 'Duvar 24(Beton7)', 19377, 0, 274.219, 291.05, 1022.49, -2.086, 90, -0.3, 1, 21490, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1909, 'Duvar 1(Turuncu-Beyaz)', 19353, 0, 269.015, 291.062, 1020.87, 0, 0, 0, 1, 21491, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1910, 'Mermi Kutusu', 2359, 0, 275.734, 293.753, 1019.24, 0, 0, 125.8, 1, 21492, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1911, 'Geniþ Duvar 1(Kýrmýzý Beyaz)', 19445, 0, 268.238, 286.211, 1020.87, 0, 0, 89.9, 1, 21493, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1912, 'Duvar 1(Turuncu-Beyaz)', 19353, 0, 269.045, 287.908, 1020.88, 0, 0, 0, 1, 21494, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1914, 'Bavul 2', 11745, 0, 276.56, 292.817, 1019.26, 0, 0, 92.4, 1, 21495, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1915, 'Aynalý Kapý', 1536, 0, 273.89, 286.197, 1019.11, 0, 0, 0, 1, 21496, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1916, 'Patlama 4', 18685, 0, 305.025, 292.377, 1020.9, 0, 0, 0, 1, 21497, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1917, 'Ofis Dolabý 12', 2066, 0, 279.078, 290.389, 1019.09, 0, 0, -85.4, 1, 21498, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1918, 'Ofis Dolabý 12', 2066, 0, 278.944, 289.737, 1019.09, 0, 0, -114.3, 1, 21499, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1919, 'Ofis Masasý 19', 2206, 0, 279.009, 293.116, 1019.03, 0.2, -0.1, -88.4, 1, 21500, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1920, 'Laptop açýk', 19893, 0, 278.827, 291.728, 1019.97, 0, 0, -103.1, 1, 21501, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1931, 'Depo Kapýsý', 2949, 0, 269.178, 288.745, 1018.87, 0, 0, -179.9, 1, 21502, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1934, 'Sertifika', 2684, 0, 274.519, 295.783, 1021.22, 0, 0, 0, 1, 21503, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1935, 'Merdiven 1', 1428, 0, 275.7, 295.132, 1020.62, 0, 0, 0, 1, 21504, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1936, 'Ofis Masasý 23', 2607, 0, 271.634, 292.976, 1019.54, 0, 0, 48.3, 1, 21505, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1937, 'DVD oynatýcý 2', 1782, 0, 271.956, 293.323, 1020.04, 0, 0, -88.4, 1, 21506, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1938, 'Amerika Bayraðý ', 2614, 0, 269.176, 291.594, 1021.55, 0, 0, 92, 1, 21507, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1939, 'Soyunma Dolabý 2', 11730, 0, 269.62, 290.663, 1019.11, 0, 0, 132.7, 1, 21508, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1940, 'Kitaplýk 2', 2608, 0, 269.349, 293.628, 1020.95, 0, 0, 89.1, 1, 21509, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1941, 'Avize 5', 19806, 0, 217.202, 288.391, 1022.45, 0, 0, 0, 1, 21510, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1942, 'Askýlý Kýyafet 7', 2396, 0, 269.395, 294.247, 1019.93, 0, 0, 0, 1, 21511, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1944, 'Duvar Tablosu 32', 2286, 0, 269.255, 293.423, 1019.52, -23.7, 0, 90, 1, 21512, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1945, 'Siyah Ofis Sandalyesi 3', 1714, 0, 270.558, 293.437, 1019.12, 0, 0, 97, 1, 21513, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1946, 'Shotgun', 349, 0, 269.878, 293.496, 1019.35, -112.1, 100.2, -90.3, 1, 21514, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1947, 'Desert Eagle', 348, 0, 269.721, 293.678, 1019.15, 97.5, -2.9, -92.8, 1, 21515, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1948, 'Kara Tahta', 3077, 0, 276.866, 288.789, 1019.1, 0, 0, 33.1, 1, 21516, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1949, 'Ofis Masasý 22', 2605, 0, 271.873, 288.951, 1019.54, 0, 0, -78.3, 1, 21517, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1950, 'Çöp kutusu 1', 1235, 0, 271.202, 287.445, 1019.46, -0.3, -74.3, 55.8, 1, 21518, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1951, 'Ivýr Zývýr 7', 2676, 0, 270.664, 287.627, 1019.27, 0, 0, -36.7, 1, 21519, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1952, 'Siyah Ofis Sandalyesi 3', 1714, 0, 271.146, 288.712, 1019.14, 0, 0, 115.9, 1, 21520, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1954, 'Ofis Sandalyesi', 1721, 0, 274.96, 291.21, 1019.14, 0, 0, -140.6, 1, 21521, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1955, 'Ofis Sandalyesi', 1721, 0, 273.942, 289.989, 1019.14, 0, 0, -107.8, 1, 21522, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1956, 'Ofis Sandalyesi', 1721, 0, 276.056, 291.674, 1019.14, 0, 0, -169.6, 1, 21523, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1957, 'Ofis Sandalyesi', 1721, 0, 274.722, 292.411, 1019.13, 0, 0, -157.7, 1, 21524, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1958, 'Ofis Sandalyesi', 1721, 0, 273.464, 291.303, 1019.14, 0, 0, -122.6, 1, 21525, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1960, 'Yemek Masasý Sandalyesi 3', 2079, 0, 215.321, 289.403, 1019.92, 0, -1.4, -168.3, 1, 21526, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1962, 'Saksý', 15038, 0, 2318.16, -1145.3, 1050.32, 0, 0, 0, 12, 21527, 5067, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1965, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 251.384, 354.623, 1019.16, 0, 90, 0, 1, 21528, 5095, '14789|ab_sfgymmain|gym_floor6', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1966, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 254.884, 354.628, 1019.17, 0, 90, 0, 1, 21529, 5095, '14789|ab_sfgymmain|gym_floor6', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1967, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 247.896, 354.628, 1019.17, 0, 90, 0, 1, 21530, 5095, '14789|ab_sfgymmain|gym_floor6', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1968, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 247.89, 345, 1019.19, 0, 90.1, 0, 1, 21531, 5095, '14789|ab_sfgymmain|gym_floor6', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1969, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 254.884, 345.002, 1019.18, 0, 90, 0, 1, 21532, 5095, '14789|ab_sfgymmain|gym_floor6', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1971, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 258.381, 345.012, 1019.18, 0, 90, 0, 1, 21533, 5095, '14789|ab_sfgymmain|gym_floor6', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1972, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 258.381, 354.642, 1019.17, 0, 90, 0, 1, 21534, 5095, '14789|ab_sfgymmain|gym_floor6', '3942|bistro|mp_snow', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1973, 'Geniþ Duvar 10(Taþ2)', 19454, 0, 246.054, 354.627, 1021.01, 0, 0, 0, 1, 21535, 5095, '17545|burnsground|newall10_seamless', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1974, 'Geniþ Duvar 10(Taþ2)', 19454, 0, 246.049, 345.003, 1021.01, 0, 0, 0, 1, 21536, 5095, '17545|burnsground|newall10_seamless', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1975, 'Geniþ Duvar 3(Taþ)', 19447, 0, 260.197, 354.609, 1021, 0, 0, 0, 1, 21537, 5095, '17545|burnsground|newall10_seamless', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1976, 'Geniþ Duvar 10(Taþ2)', 19454, 0, 255.306, 359.522, 1021, 0, 0, -90.1, 1, 21538, 5095, '17545|burnsground|newall10_seamless', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1977, 'Geniþ Duvar 10(Taþ2)', 19454, 0, 245.799, 359.534, 1021, 0, 0, -90.1, 1, 21539, 5095, '17545|burnsground|newall10_seamless', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1978, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 251.388, 345.014, 1019.18, 0, 90, 0, 1, 21540, 5095, '14789|ab_sfgymmain|gym_floor6', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1979, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 260.169, 344.981, 1021, 0, 0, 0, 1, 21541, 5095, '17545|burnsground|newall10_seamless', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1980, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 255.258, 340.114, 1021, 0, 0, -90.1, 1, 21542, 5095, '17545|burnsground|newall10_seamless', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1981, 'Geniþ Duvar 14(Ahþap2)', 19458, 0, 245.632, 340.084, 1020.97, 0, 0, -90.1, 1, 21543, 5095, '17545|burnsground|newall10_seamless', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1983, 'Toprak 1', 19003, 0, 254.687, 349.779, 1022.72, 0, 0, 0, 1, 21544, 5095, '4593|buildblk55|sl_plazatile01', '8136|vgsbikeschool|ws_carparknew2', '0|yok|yok', '0|yok|yok', '0|yok|yok', '13716|richman04_lahills|brick', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1985, 'unitypark 2', -2102, 0, 254.944, 348.443, 1021.06, 0, 0, 0, 1, 21545, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1986, 'Kitaplýk', 14455, 0, 246.841, 340.394, 1020.97, 0, 0, 0, 1, 21546, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1987, 'Kitaplýk', 14455, 0, 255.025, 340.4, 1020.93, 0, 0, 0, 1, 21547, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1991, 'Cam', 19325, 0, 253.091, 343.489, 1020.7, 0, 0, 0, 1, 21548, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1992, 'Kahverengi Deri Kanepe', 1753, 0, 249.021, 346.099, 1019.27, 0, 0, 0, 1, 21549, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1995, 'Yemek Masasý 13', 2111, 0, 250.203, 343.88, 1019.65, 0, 0, 0, 1, 21550, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(1997, 'Saksý 8', 2811, 0, 251.88, 346.024, 1019.25, 0, 0, 137.9, 1, 21551, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2003, 'Sütun 2', 3494, 0, 254.822, 347.884, 1022.42, 0, 0, 0, 1, 21552, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2004, 'Siyah Ofis Sandalyesi 3', 1714, 0, 257.209, 342.083, 1019.24, 0, 0, -178.6, 1, 21553, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2005, 'Ofis Masasý 3', 2205, 0, 256.496, 343.629, 1019.24, 0, 0, 0, 1, 21554, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2006, 'Laptop açýk', 19893, 0, 257.088, 343.389, 1020.19, 0, 0, 10.8, 1, 21555, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2011, 'Fotokopi makinesi 1', 2202, 0, 259.541, 343.088, 1019.26, 0, 0, -90, 1, 21556, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2012, 'Cep telefonu 4', 18868, 0, 256.811, 343.286, 1020.17, 0, 0, -1, 1, 21557, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2013, 'Yelpaze', 19591, 0, 257.959, 343.281, 1020.17, -78.3, 0, -25.5, 1, 21558, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2015, 'Sigara Paketi 2', 19897, 0, 256.745, 343.439, 1020.24, 89.2, 12.3, 0, 1, 21559, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2016, 'Kitap 1', 2813, 0, 256.419, 343.988, 1020.18, 0, 0, -164, 1, 21560, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2017, 'Beyaz Masa Lambasý', 2196, 0, 257.846, 343.449, 1020.18, 0, 0, -108.5, 1, 21561, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2018, 'Camlý Kapý 1', 1566, 0, 254.004, 359.376, 1020.76, 0, 0, 0, 1, 21562, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2019, 'Camlý Kapý 1', 1566, 0, 254.024, 359.476, 1020.76, 0, 0, 179.9, 1, 21563, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2020, 'Tekli Siyah Deri Koltuk 3', 1727, 0, 255.378, 344.506, 1019.26, 0, 0, 90.8, 1, 21564, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2021, 'Tekli Siyah Deri Koltuk 3', 1727, 0, 256.637, 346.446, 1019.27, 0, 0, 0, 1, 21565, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2026, 'Duvar Tablosu 4', 2258, 0, 248.706, 359.404, 1021.05, 0, 0, 0, 1, 21566, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2027, 'Duvar Tablosu 7', 2261, 0, 249.273, 358.928, 1021.62, 0, 0, 0, 1, 21567, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2029, 'Duvar Tablosu 2', 2256, 0, 250.42, 359.414, 1020.83, 0, 0, 0, 1, 21568, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2030, '2 Koltuk - 1 Masa', 2571, 0, 247.678, 357.789, 1019.25, 0, 0, -0.3, 1, 21569, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2031, 'Kahverengi Deri Kanepe', 1753, 0, 249.384, 355.057, 1019.26, 0, 0, 162.6, 1, 21570, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2033, 'Kahverengi Deri Kanepe', 1753, 0, 252.233, 344.537, 1019.27, 0, 0, -88.6, 1, 21571, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2040, 'Tahta mutfak dolabý 4', 2016, 0, 1300, -1125.21, 27.326, 0, 0, 0, 0, 21572, 0, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2043, 'Geniþ Duvar 9(Turuncu)', 19453, 0, -229.524, 1407.72, 28.526, 0, 0, 0, 18, 21573, 6035, '14709|lamidint2|mp_apt1_woodpanel', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2044, 'Geniþ Duvar 9(Turuncu)', 19453, 10, -229.514, 1395.6, 28.403, 0, 0, 0.2, 18, 21574, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2045, 'Sigara', 19625, 10, -229.675, 1400.4, 27.766, 0, 0, 90.354, 18, 21575, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2046, 'Pervaneli Avize', 16779, 10, 249.524, 344.082, 1022.83, 0, 0, 0, 1, 21576, 5095, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2047, 'Geniþ Duvar 9(Turuncu)', 19453, 10, 1376.21, -18.419, 1001.66, 0, 0, 0, 1, 21577, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2048, 'Geniþ Duvar 9(Turuncu)', 19453, 10, 1376.2, -8.8, 1001.66, 0, 0, 0, 1, 21578, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2049, 'Geniþ Duvar 9(Turuncu)', 19453, 10, 1372.1, -3.97, 1001.66, 0, 0, 90, 1, 21579, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2050, 'Duvar 9(Turuncu)', 19361, 10, 1365.69, -3.971, 1001.66, 0, 0, 89.9, 1, 21580, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2051, 'Geniþ Duvar 9(Turuncu)', 19453, 10, 1364.44, -5.612, 1001.66, 0, 0, -1.371, 1, 21581, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2052, 'Geniþ Duvar 9(Turuncu)', 19453, 10, 1364.32, -18.442, 1001.66, 0, 0, 0, 1, 21582, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2053, 'Geniþ Duvar 9(Turuncu)', 19453, 10, 1368.14, -23.313, 1001.66, 0, 0, -90, 1, 21583, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2054, 'Duvar 9(Turuncu)', 19361, 10, 1374.53, -23.307, 1001.66, 0, 0, 90, 1, 21584, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2058, 'lh_philsext', 19376, 10, 1368.57, -18.412, 999.843, 0, 90, 0, 1, 21585, 6035, '14777|int_casinoint3|GB_midbar05', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2059, 'Duvar 23(Ahþap6)', 19376, 10, 1368.57, -8.776, 999.849, 0, 90, 0, 1, 21586, 6035, '14777|int_casinoint3|GB_midbar05', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2060, 'Geniþ Duvar 8(Ahþap)', 19452, 10, 1375.57, -8.873, 999.835, 0, 89.9, 0, 1, 21587, 6035, '14777|int_casinoint3|GB_midbar05', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2061, 'Geniþ Duvar 8(Ahþap)', 19452, 10, 1375.57, -18.5, 999.836, 0, -90, 0, 1, 21588, 6035, '14777|int_casinoint3|GB_midbar05', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2062, 'Afiþle Kaplý Kapý 1', 1532, 10, 1370.88, -23.231, 999.928, 0, 0, 0, 1, 21589, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2063, 'Kapý Giriþi 8(Turuncu)', 19390, 10, 1364.32, -12.019, 1001.66, 0, 0, 0, 1, 21590, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2064, 'Kýrmýzý mutfak tezgahý 5', 2449, 10, 1367.69, -20.74, 999.929, 0, 0, 90.3, 1, 21591, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2065, 'Kýrmýzý mutfak tezgahý 5', 2449, 10, 1367.67, -18.35, 999.929, 0, 0, 90.3, 1, 21592, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2066, 'Pizza Stack Menüsü', 2645, 10, 1376.05, -20.846, 1001.73, 0, 0, -90.2, 1, 21593, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2067, 'Büyük Ocak', 19923, 10, 1359.29, -17.473, 999.919, 0, 0, 89.2, 1, 21594, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2070, 'Kýrmýzý mutfak tezgahý 1', 2446, 10, 1367.65, -21.736, 999.918, 0, 0, 89.7, 1, 21595, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2071, 'Kýrmýzý mutfak tezgahý 1', 2446, 10, 1367.64, -22.736, 999.908, 0, 0, 89.7, 1, 21596, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2072, 'Kýrmýzý mutfak tezgahý 5', 2449, 10, 1367.66, -15.956, 999.928, 0, 0, 90.5, 1, 21597, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2073, 'Masa', 941, 10, 1365.96, -22.651, 1000.43, 0, 0, 0, 1, 21598, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2074, 'Doner tezgahi', -2055, 10, 1367.01, -22.774, 1000.92, 0, 0, 91.3, 1, 21599, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2075, 'lh_philsext', 18981, 10, 1366.53, -14.055, 1003.91, 0, -89.9, 0, 1, 21600, 6035, '16407|des_airfieldhus|btdeck256', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2076, 'Beyaz Sandalyeler ve Tahta Masa', 1825, 10, 1374.31, -21.591, 999.914, 0, 0, 0, 1, 21601, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2077, 'Beyaz Sandalyeler ve Tahta Masa', 1825, 10, 1374.45, -16.77, 999.908, 0, 0, 53, 1, 21602, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2078, 'Beyaz Sandalyeler ve Tahta Masa', 1825, 10, 1373.2, -12.033, 999.914, 0, 0, 0, 1, 21603, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2079, 'Beyaz Sandalyeler ve Tahta Masa', 1825, 10, 1373.29, -7.372, 999.915, 0, 0, 21.4, 1, 21604, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2080, 'Beyaz Sandalyeler ve Tahta Masa', 1825, 10, 1369.45, -9, 999.924, 0, 0, 0, 1, 21605, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2081, 'Beyaz Sandalyeler ve Tahta Masa', 1825, 10, 1367.06, -6.394, 999.923, 0, 0, 0, 1, 21606, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2087, 'Yuvarlak Camlý Kapý', 1523, 10, 1364.39, -12.775, 999.894, 0, 0, 90.1, 1, 21607, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2088, 'Geniþ Duvar 19(Beton4)', 19463, 10, 1359.6, -7.148, 1001.62, 0, 0, -90, 1, 21608, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2090, 'Saksý 1', 625, 10, 1371.71, -21.908, 1007.52, 0, 0, 0, 1, 21609, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2091, 'Saksý 5', 2001, 10, 1370.57, -22.909, 999.928, 0, 0, 0, 1, 21610, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2092, 'Geniþ Duvar 19(Beton4)', 19463, 10, 1358.12, -11.81, 1001.67, 0, 0, 0, 1, 21611, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2093, 'Geniþ Duvar 19(Beton4)', 19463, 10, 1359.43, -14.813, 1001.67, 0, 0, -90, 1, 21612, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2094, 'Geniþ Duvar 14(Ahþap2)', 19458, 10, 1362.53, -10.25, 999.856, 0, 90.1, 0, 1, 21613, 6035, '15046|svcunthoose|sl_gallerywall1', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2095, 'Geniþ Duvar 14(Ahþap2)', 19458, 10, 1359.04, -10.247, 999.85, 0, 90, -0.3, 1, 21614, 6035, '15046|svcunthoose|sl_gallerywall1', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2096, 'newscafe_dy', -2071, 10, 1376.1, -10.123, 1001.91, 0, 0, -90, 1, 21615, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2097, 'iraq bayrak 2', -2060, 10, 1368.95, -23.207, 1002.52, 0, 0, 179.8, 1, 21616, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2099, 'stadyumbinalar1', -2069, 10, 1370.59, -4.097, 1002.51, 0, 0, 0, 1, 21617, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2100, 'irak televizyon', -2061, 10, 1365.22, -4.454, 1002.78, 11.7, 0, 31.5, 1, 21618, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2101, 'Yemek Masasý 4', 1737, 10, 1370.1, -4.562, 999.934, 0, 0, 0, 1, 21619, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2102, 'Þarap Kadehi', 1667, 10, 1370.53, -4.555, 1000.84, 0, 0, 0, 1, 21620, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2103, 'stadyumbinalar1', -2069, 10, 1370.62, -4.569, 1001.28, 0, 0, 0, 1, 21621, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2104, 'santv', -2068, 10, 1370.63, -4.099, 1002.53, 0, 0, 0, 1, 21622, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2105, 'stadyumbinalar2', -2070, 10, 1374.63, -4.535, 1001.68, 0, 0, 0, 1, 21623, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2106, 'bunebilmiyom', -2057, 10, 1367.85, -22.47, 1001, -25.4, 23.1, 162.1, 1, 21624, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2108, 'Stand', 2491, 10, 1367.91, -13.392, 999.944, 0, 0, 0, 1, 21625, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2109, 'Halý 1', 2833, 10, 1372.14, -22.281, 999.934, 0, 0, 97.8, 1, 21626, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2110, 'Biftek', 19582, 10, 1366.21, -22.592, 1000.92, 0, 0, 0, 1, 21627, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2111, 'Yazar kasa 1', 1514, 10, 1367.79, -21.501, 1001.21, 0, 0, 88.9, 1, 21628, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2112, 'Hazýr Mutfak Seti 1', 14384, 10, 1361.77, -10.851, 1001.45, 0, 0, 92.5, 1, 21629, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2114, 'Silindir çöp kutusu 6', 1328, 10, 1363.71, -9, 1000.46, 0, 0, 0, 1, 21630, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2115, 'Yangýn Tüpü', 2690, 10, 1363.95, -10.739, 1000.31, 0, 0, 0, 1, 21631, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2116, 'Sertifika', 2684, 10, 1362.18, -7.295, 1002.16, 0, 0, 0, 1, 21632, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2117, 'Masa / Sandalye 1', 1281, 10, 2016.98, -1743.59, 13.343, 0, 0, 0, 0, 21633, 0, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2118, 'Dedektör 1', 1892, 10, 1365.37, -13.741, 999.928, 0, 0, 0, 1, 21634, 6035, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok'),
(2122, 'Barbekü', 19831, 10, 1344.18, -653.637, 108.125, 0, 0, -71, 0, 21635, 0, '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok', '0|yok|yok');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `garbage`
--

CREATE TABLE `garbage` (
  `garbageID` int(12) NOT NULL,
  `garbageModel` int(12) DEFAULT 1236,
  `garbageCapacity` int(12) DEFAULT 0,
  `garbageX` float DEFAULT 0,
  `garbageY` float DEFAULT 0,
  `garbageZ` float DEFAULT 0,
  `garbageA` float DEFAULT 0,
  `garbageInterior` int(12) DEFAULT 0,
  `garbageWorld` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT 0,
  `gateSpeed` float DEFAULT 0,
  `gateTime` int(12) DEFAULT 0,
  `gateX` float DEFAULT 0,
  `gateY` float DEFAULT 0,
  `gateZ` float DEFAULT 0,
  `gateRX` float DEFAULT 0,
  `gateRY` float DEFAULT 0,
  `gateRZ` float DEFAULT 0,
  `gateInterior` int(12) DEFAULT 0,
  `gateWorld` int(12) DEFAULT 0,
  `gateMoveX` float DEFAULT 0,
  `gateMoveY` float DEFAULT 0,
  `gateMoveZ` float DEFAULT 0,
  `gateMoveRX` float DEFAULT 0,
  `gateMoveRY` float DEFAULT 0,
  `gateMoveRZ` float DEFAULT 0,
  `gateLinkID` int(12) DEFAULT 0,
  `gateFaction` int(12) DEFAULT -1,
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT 0,
  `gateOwner` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `gates`
--

INSERT INTO `gates` (`gateID`, `gateModel`, `gateSpeed`, `gateTime`, `gateX`, `gateY`, `gateZ`, `gateRX`, `gateRY`, `gateRZ`, `gateInterior`, `gateWorld`, `gateMoveX`, `gateMoveY`, `gateMoveZ`, `gateMoveRX`, `gateMoveRY`, `gateMoveRZ`, `gateLinkID`, `gateFaction`, `gatePass`, `gateRadius`, `gateOwner`) VALUES
(33, 971, 2, 0, 322.158, -1187.64, 75.7621, 0, 0, 38.0675, 0, 0, 326.894, -1183.83, 75.9522, 0, 0, 39.5675, -1, 65, '', 11, -1),
(31, 980, 3, 0, 319.257, -1186.19, 76.3463, 0, 0, 40.9286, 6, 7012, 250.426, 75.7061, 993.641, -1000, -1000, -1000, -1, -1, '', 5, -1),
(30, -20078, 3, 0, 1785.15, 64.4662, 35.4547, 0, 0, 153.425, 0, 0, 1778.41, 67.8347, 35.4547, 0, 0, 153.425, -1, -1, '', 5, -1),
(35, 980, 3, 0, 1737.12, 1451.51, 10.7025, 0, 0, 301.793, 0, 0, 1737.12, 1451.51, 0.7025, -1000, -1000, -1000, -1, -1, '', 5, -1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gps`
--

CREATE TABLE `gps` (
  `ID` int(12) DEFAULT 0,
  `locationID` int(12) NOT NULL,
  `locationName` varchar(32) DEFAULT NULL,
  `locationX` float DEFAULT 0,
  `locationY` float DEFAULT 0,
  `locationZ` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL,
  `graffitiX` float DEFAULT 0,
  `graffitiY` float DEFAULT 0,
  `graffitiZ` float DEFAULT 0,
  `graffitiAngle` float DEFAULT 0,
  `graffitiColor` int(12) DEFAULT 0,
  `graffitiText` varchar(64) DEFAULT NULL,
  `graffitiFont` varchar(24) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Arial'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `graffiti`
--

INSERT INTO `graffiti` (`graffitiID`, `graffitiX`, `graffitiY`, `graffitiZ`, `graffitiAngle`, `graffitiColor`, `graffitiText`, `graffitiFont`) VALUES
(34, 275.738, 288.117, 1020.7, 122.896, -1, 'C.R.A.S.H', 'Courier'),
(42, 1971.66, -1779.07, 13.5468, 181.823, -65536, 'hello there', 'Courier');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL,
  `rackHouse` int(12) DEFAULT 0,
  `rackX` float DEFAULT 0,
  `rackY` float DEFAULT 0,
  `rackZ` float DEFAULT 0,
  `rackA` float DEFAULT 0,
  `rackInterior` int(12) DEFAULT 0,
  `rackWorld` int(12) DEFAULT 0,
  `rackWeapon1` int(12) DEFAULT 0,
  `rackAmmo1` int(12) DEFAULT 0,
  `rackWeapon2` int(12) DEFAULT 0,
  `rackAmmo2` int(12) DEFAULT 0,
  `rackWeapon3` int(12) DEFAULT 0,
  `rackAmmo3` int(12) DEFAULT 0,
  `rackWeapon4` int(12) DEFAULT 0,
  `rackAmmo4` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `gunracks`
--

INSERT INTO `gunracks` (`rackID`, `rackHouse`, `rackX`, `rackY`, `rackZ`, `rackA`, `rackInterior`, `rackWorld`, `rackWeapon1`, `rackAmmo1`, `rackWeapon2`, `rackAmmo2`, `rackWeapon3`, `rackAmmo3`, `rackWeapon4`, `rackAmmo4`) VALUES
(8, 18, 250.408, 303.971, 997.087, 266.31, 1, 5018, 30, 30, 25, 50, 0, 0, 0, 0),
(6, 5, 319.86, 1486.91, 1081.67, 89.9552, 15, 5005, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 19, 248.384, 300.088, 996.637, 179.398, 1, 5019, 24, 7, 24, 21, 18, 10, 16, 3),
(14, 38, 227.131, 1022.48, 1084.01, 270, 7, 5038, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 90, 228.061, 1022.48, 1084.01, 270, 7, 5090, 30, 490, 24, 500, 32, 500, 33, 1000),
(19, 97, 329.929, 1477.55, 1084.44, -179.8, 15, 5097, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `haberID` int(11) NOT NULL,
  `haberBaslik` varchar(128) NOT NULL,
  `haberIcerik` varchar(512) NOT NULL,
  `haberYazan` varchar(24) NOT NULL,
  `haberTip` int(11) NOT NULL DEFAULT -1,
  `haberOkunma` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `houses`
--

CREATE TABLE `houses` (
  `houseID` int(12) NOT NULL,
  `houseOwner` int(12) DEFAULT 0,
  `housePrice` int(12) DEFAULT 0,
  `houseAddress` varchar(32) DEFAULT NULL,
  `housePosX` float DEFAULT 0,
  `housePosY` float DEFAULT 0,
  `housePosZ` float DEFAULT 0,
  `housePosA` float DEFAULT 0,
  `houseIntX` float DEFAULT 0,
  `houseIntY` float DEFAULT 0,
  `houseIntZ` float DEFAULT 0,
  `houseIntA` float DEFAULT 0,
  `garajTip` int(11) NOT NULL DEFAULT 0,
  `garajKilit` int(11) NOT NULL DEFAULT 0,
  `garajPosX` float NOT NULL,
  `garajPosY` float NOT NULL,
  `garajPosZ` float NOT NULL,
  `garajPosA` float NOT NULL,
  `houseInterior` int(12) DEFAULT 0,
  `houseExterior` int(12) DEFAULT 0,
  `houseExteriorVW` int(12) DEFAULT 0,
  `houseLocked` int(4) DEFAULT 0,
  `houseWeapon1` int(12) DEFAULT 0,
  `houseAmmo1` int(12) DEFAULT 0,
  `houseWeapon2` int(12) DEFAULT 0,
  `houseAmmo2` int(12) DEFAULT 0,
  `houseWeapon3` int(12) DEFAULT 0,
  `houseAmmo3` int(12) DEFAULT 0,
  `houseWeapon4` int(12) DEFAULT 0,
  `houseAmmo4` int(12) DEFAULT 0,
  `houseWeapon5` int(12) DEFAULT 0,
  `houseAmmo5` int(12) DEFAULT 0,
  `houseWeapon6` int(12) DEFAULT 0,
  `houseAmmo6` int(12) DEFAULT 0,
  `houseWeapon7` int(12) DEFAULT 0,
  `houseAmmo7` int(12) DEFAULT 0,
  `houseWeapon8` int(12) DEFAULT 0,
  `houseAmmo8` int(12) DEFAULT 0,
  `houseWeapon9` int(12) DEFAULT 0,
  `houseAmmo9` int(12) DEFAULT 0,
  `houseWeapon10` int(12) DEFAULT 0,
  `houseAmmo10` int(12) DEFAULT 0,
  `houseMoney` int(12) DEFAULT 0,
  `houseKiralayan` int(11) NOT NULL DEFAULT -1,
  `houseKiralanabilir` int(11) NOT NULL DEFAULT 0,
  `houseKiraZaman` int(11) NOT NULL DEFAULT 0,
  `houseKiraSure` int(11) NOT NULL DEFAULT 0,
  `houseKiraUcret` int(11) NOT NULL DEFAULT 0,
  `houseBirlik` int(11) NOT NULL DEFAULT -1,
  `houseAnahtar` int(11) NOT NULL DEFAULT -1,
  `houseGardolap1` int(11) NOT NULL DEFAULT 0,
  `houseGardolap2` int(11) NOT NULL DEFAULT 0,
  `houseGardolap3` int(11) NOT NULL DEFAULT 0,
  `houseVergi` int(11) NOT NULL DEFAULT 0,
  `houseLevel` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `houses`
--

INSERT INTO `houses` (`houseID`, `houseOwner`, `housePrice`, `houseAddress`, `housePosX`, `housePosY`, `housePosZ`, `housePosA`, `houseIntX`, `houseIntY`, `houseIntZ`, `houseIntA`, `garajTip`, `garajKilit`, `garajPosX`, `garajPosY`, `garajPosZ`, `garajPosA`, `houseInterior`, `houseExterior`, `houseExteriorVW`, `houseLocked`, `houseWeapon1`, `houseAmmo1`, `houseWeapon2`, `houseAmmo2`, `houseWeapon3`, `houseAmmo3`, `houseWeapon4`, `houseAmmo4`, `houseWeapon5`, `houseAmmo5`, `houseWeapon6`, `houseAmmo6`, `houseWeapon7`, `houseAmmo7`, `houseWeapon8`, `houseAmmo8`, `houseWeapon9`, `houseAmmo9`, `houseWeapon10`, `houseAmmo10`, `houseMoney`, `houseKiralayan`, `houseKiralanabilir`, `houseKiraZaman`, `houseKiraSure`, `houseKiraUcret`, `houseBirlik`, `houseAnahtar`, `houseGardolap1`, `houseGardolap2`, `houseGardolap3`, `houseVergi`, `houseLevel`) VALUES
(58, 102, 75000, 'Idlewood House I', 2126.84, -1738.51, 14.2124, 0.7558, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 24, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600000, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(30, 70, 75000, 'Grove Street', 2495.4, -1691.14, 14.7656, 178.938, 2495.95, -1692.1, 1014.74, 180.388, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(31, 70, 75000, 'Idlewood 2', 2168.03, -1737.97, 14.2124, 359.579, 2495.87, -1693.1, 1014.74, 180, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(32, 1, 75000, '1', 1702.18, 1355.12, 21.3367, 322.538, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(33, 73, 75000, 'Idlegas House ', 2015.57, -1732.62, 14.2194, 268.404, 2014.76, -1733.02, 14.2194, 264.102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(91, 104, 31313, 'Richman, 13041', 497.497, -1095.08, 82.3591, 176.027, 2365.42, -1131.85, 1050.88, 270, 0, 0, 0, 0, 0, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 6),
(35, 1, 75000, 'Idlewood Special House', 2147.22, -1737.9, 14.2124, 357.784, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(24, 1, 75000, 'Idlewood', 893.674, -1635.7, 14.9294, 358.684, 225.631, 1022.48, 1084.07, 266.51, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 822425, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 10),
(79, 0, 49999, 'Star Street', 985.816, -1094.39, 27.604, 2.1117, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(75, 0, 103190, 'Richman, 1502', 612.24, -1085.87, 58.8266, 213.098, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(76, 104, 31310, 'Osurm', 645.978, -1117.44, 44.207, 225.448, 140.941, -1933.97, 2431.09, 0.3856, 0, 0, 0, 0, 0, 0, 116, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 65, 116, 0, 0, 0, 0, 1),
(77, 0, 24915, 'Richman, 1479', 559.108, -1076.41, 72.9219, 209.96, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(78, 0, 104000, 'Marina', 657.229, -1652.63, 15.4062, 270.624, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(46, 102, 75000, 'Idlewood Motel, 9', 2151.03, -1789.15, 13.5092, 90.0472, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(72, 0, 200000, 'Richman, 1270', 355.032, -1281.21, 53.7036, 209.081, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(61, 107, 1, 'Red County', -427.319, -392.413, 16.5801, 142.557, 328.117, 1477.79, 1084.44, 270, 0, 0, 0, 0, 0, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 3),
(97, 117, 10, 'Ganton, Blue Blocks', 2359.86, -1795.98, 13.5466, 86.1286, 328.117, 1477.79, 1084.44, 270, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1000, -1, 1, 120, 0, 1000, -1, -1, 0, 0, 0, 0, 3),
(64, 0, 1, '2', 1764.41, -2312.26, 13.5468, 246.484, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(68, 0, 3131, 'Richman, 1334', 416.599, -1154.31, 76.6876, 328.427, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(69, 0, 3131, 'Richman, 1335', 352.078, -1197.62, 76.5156, 221.342, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(70, 0, 500000, 'Richman, 1333', 253.198, -1270, 74.4286, 215.446, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(71, 0, 375000, 'Richman, 1332', 219.37, -1250.06, 78.3352, 35.1573, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(80, 0, 50000, 'Santa Maria Beach', 315.829, -1769.43, 4.622, 358.934, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(81, 0, 50000, 'Santa Maria Beach-2', 295.324, -1764.24, 4.7701, 0.5222, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(82, 0, 50000, 'Santa Maria Beach-3', 263.971, -1765.46, 4.7567, 0.4817, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(83, 0, 50000, 'Santa Maria Beach-4', 206.907, -1769.35, 4.3577, 0.9701, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(84, 0, 50000, 'Santa Maria Beach-5', 167.49, -1758.97, 6.7968, 267.161, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(85, 0, 50000, 'Santa Maria Beach-5-2', 168.275, -1768.96, 4.4786, 359.341, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(86, 0, 50000, 'Richman 1205', 977.426, -771.719, 112.203, 180.688, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(87, 0, 50000, 'Richman 1207', 827.747, -858.006, 70.3308, 18.1242, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(90, 117, 31, '22', 2244.51, -1637.63, 16.2378, 336.475, 225.631, 1022.48, 1084.07, 270, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 10),
(96, 121, 31, 'Shine Apt. 35', 2535.41, 261.052, 2509.61, 89.3507, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 174, 7024, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(93, 121, -250, 'Shine Apt. 7', 2535.42, 265.535, 2509.61, 88.9841, 2178.7, -667.753, 441.9, 358.03, 0, 0, 0, 0, 0, 0, 30, 174, 7024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(94, 121, 313, '(SF) West Beach Complex', -2791.84, -94.7821, 10.0546, 0.564, 2496.28, -1692.27, 1014.74, 270, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 4),
(95, 102, 31, 'Cluckin\' Bell Vegas #1', 364.926, -5.35, 1001.85, 0.1398, 222.597, 302.247, 1020.29, 179.793, 0, 0, 0, 0, 0, 0, 1, 9, 6038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(98, 126, 1, 'East Los Santos Heights, 6042', 2550.17, -1209.05, 54.5409, 357.357, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(99, 0, 1100000, 'Zamir Vazirov', 980.479, -677.267, 121.976, 212.479, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(100, 104, 24500, '142, Richman Stradella Road', 1332.03, -633.005, 109.135, 197.705, 2365.24, -1135.45, 1050.88, 359.286, 0, 0, 0, 0, 0, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 6),
(101, 117, 1, 'Santa Monica Estates, 612B.', 926.264, -1818.03, 13.3245, 352.126, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(102, 0, 1, 'Santa Monica Estates, 612A.', 928.341, -1818.28, 13.3235, 350.141, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(103, 127, 1, 'Santa Monica Estates, 612c.', 914.547, -1816.73, 13.308, 346.966, 2467.77, -1698.2, 1013.51, 88.5065, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1),
(104, 128, 1, 'East Beach, 61B.', 2851.85, -1366, 14.1708, 86.2425, 244.071, 304.94, 999.148, 270, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `housestorage`
--

CREATE TABLE `housestorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `impoundlots`
--

CREATE TABLE `impoundlots` (
  `impoundID` int(12) NOT NULL,
  `impoundLotX` float DEFAULT 0,
  `impoundLotY` float DEFAULT 0,
  `impoundLotZ` float DEFAULT 0,
  `impoundReleaseX` float DEFAULT 0,
  `impoundReleaseY` float DEFAULT 0,
  `impoundReleaseZ` float DEFAULT 0,
  `impoundReleaseInt` int(12) DEFAULT 0,
  `impoundReleaseWorld` int(12) DEFAULT 0,
  `impoundReleaseA` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(12) DEFAULT 0,
  `invID` int(12) NOT NULL,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int(12) DEFAULT 0,
  `invQuantity` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `inventory`
--

INSERT INTO `inventory` (`ID`, `invID`, `invItem`, `invModel`, `invQuantity`) VALUES
(77, 276, 'Telefon', 330, 1),
(2, 2, 'GPS Cihazi', 18875, 1),
(3, 3, 'GPS Cihazi', 18875, 1),
(4, 4, 'GPS Cihazi', 18875, 1),
(5, 5, 'GPS Cihazi', 18875, 1),
(6, 6, 'GPS Cihazi', 18875, 1),
(5, 71, 'Telefon', 330, 1),
(2, 8, 'Telefon', 330, 1),
(6, 9, 'Telefon', 330, 1),
(77, 275, 'GPS Cihazi', 18875, 1),
(3, 11, 'Telefon', 330, 1),
(7, 12, 'GPS Cihazi', 18875, 1),
(1, 295, 'Maske', 19036, 2),
(7, 16, 'Telefon', 330, 1),
(7, 17, 'Maske', 19036, 1),
(5, 18, 'Maske', 19036, 1),
(8, 33, 'Soda', 1543, 1),
(8, 27, 'GPS Cihazi', 18875, 1),
(6, 26, 'Bos Sise', 1484, 4),
(5, 25, 'Bos Sise', 1484, 6),
(6, 28, 'Tavuk', 2663, 1),
(9, 40, 'GPS Cihazi', 18875, 1),
(1, 317, 'Ehliyet', 1581, 1),
(3, 37, 'Bos Sise', 1484, 1),
(7, 36, 'Bos Sise', 1484, 1),
(7, 78, 'Levye', 18634, 1),
(2, 42, 'Maske', 19036, 1),
(10, 43, 'GPS Cihazi', 18875, 1),
(5, 63, 'Marijuana', 1578, 48),
(5, 62, 'Eroin', 1577, 47),
(11, 47, 'GPS Cihazi', 18875, 1),
(5, 48, 'Sigara', 1019, 4),
(5, 49, 'Goz Bagi', 19874, 1),
(14, 85, 'GPS Cihazi', 18875, 1),
(10, 64, 'Zar', 1851, 1),
(5, 65, 'Zar', 1851, 1),
(5, 66, 'Levye', 18634, 1),
(5, 74, 'Alet Cantasi', 920, 1),
(12, 70, 'GPS Cihazi', 18875, 1),
(5, 75, 'Medkit', 1580, 1),
(5, 76, 'Su', 2958, 3),
(5, 77, 'Soda', 1543, 2),
(1, 273, 'Medkit', 1580, 1),
(7, 80, 'Medkit', 1580, 1),
(5, 84, 'Desert Eagle', 348, 1),
(5, 82, 'Cephane Kartusu', 2358, 1),
(15, 86, 'GPS Cihazi', 18875, 1),
(16, 87, 'GPS Cihazi', 18875, 1),
(17, 88, 'GPS Cihazi', 18875, 1),
(18, 89, 'GPS Cihazi', 18875, 1),
(20, 90, 'GPS Cihazi', 18875, 1),
(22, 91, 'GPS Cihazi', 18875, 1),
(24, 92, 'GPS Cihazi', 18875, 1),
(25, 93, 'GPS Cihazi', 18875, 1),
(26, 94, 'GPS Cihazi', 18875, 1),
(27, 95, 'GPS Cihazi', 18875, 1),
(39, 151, 'GPS Cihazi', 18875, 1),
(28, 148, 'Telefon', 330, 1),
(29, 98, 'GPS Cihazi', 18875, 1),
(30, 99, 'GPS Cihazi', 18875, 1),
(32, 121, 'Ehliyet', 1581, 1),
(30, 101, 'Telefon', 330, 1),
(41, 153, 'GPS Cihazi', 18875, 1),
(31, 103, 'GPS Cihazi', 18875, 1),
(31, 104, 'Ehliyet', 1581, 1),
(65, 302, 'Ehliyet', 1581, 1),
(32, 120, 'GPS Cihazi', 18875, 1),
(70, 304, 'Ehliyet', 1581, 1),
(39, 152, 'Ehliyet', 1581, 1),
(33, 122, 'GPS Cihazi', 18875, 1),
(33, 123, 'Ehliyet', 1581, 1),
(28, 149, 'Maske', 19036, 1),
(34, 125, 'GPS Cihazi', 18875, 1),
(34, 126, 'Ehliyet', 1581, 1),
(38, 142, 'GPS Cihazi', 18875, 1),
(35, 128, 'Ehliyet', 1581, 1),
(36, 129, 'GPS Cihazi', 18875, 1),
(36, 130, 'Ehliyet', 1581, 1),
(36, 131, 'Medkit', 1580, 1),
(1, 132, 'Boombox', 2226, 1),
(37, 133, 'GPS Cihazi', 18875, 1),
(37, 134, 'Ehliyet', 1581, 1),
(32, 150, 'Maske', 19036, 1),
(32, 141, 'Medkit', 1580, 1),
(38, 143, 'Ehliyet', 1581, 1),
(28, 145, 'Goz Bagi', 19874, 1),
(41, 154, 'Ehliyet', 1581, 1),
(42, 155, 'GPS Cihazi', 18875, 1),
(42, 156, 'Ehliyet', 1581, 1),
(42, 157, 'Tasinabilir Radyo', 18868, 1),
(43, 158, 'GPS Cihazi', 18875, 1),
(43, 159, 'Ehliyet', 1581, 1),
(43, 160, 'Tasinabilir Radyo', 18868, 1),
(44, 161, 'GPS Cihazi', 18875, 1),
(44, 162, 'Ehliyet', 1581, 1),
(44, 163, 'Tasinabilir Radyo', 18868, 1),
(45, 164, 'GPS Cihazi', 18875, 1),
(45, 165, 'Ehliyet', 1581, 1),
(45, 166, 'Tasinabilir Radyo', 18868, 1),
(46, 167, 'GPS Cihazi', 18875, 1),
(46, 168, 'Ehliyet', 1581, 1),
(46, 169, 'Tasinabilir Radyo', 18868, 1),
(47, 170, 'GPS Cihazi', 18875, 1),
(47, 171, 'Ehliyet', 1581, 1),
(47, 172, 'Tasinabilir Radyo', 18868, 1),
(48, 173, 'GPS Cihazi', 18875, 1),
(48, 174, 'Ehliyet', 1581, 1),
(48, 175, 'Tasinabilir Radyo', 18868, 1),
(49, 176, 'GPS Cihazi', 18875, 1),
(49, 177, 'Ehliyet', 1581, 1),
(49, 178, 'Tasinabilir Radyo', 18868, 1),
(50, 179, 'GPS Cihazi', 18875, 1),
(50, 180, 'Ehliyet', 1581, 1),
(50, 181, 'Tasinabilir Radyo', 18868, 1),
(51, 182, 'GPS Cihazi', 18875, 1),
(51, 183, 'Ehliyet', 1581, 1),
(51, 184, 'Tasinabilir Radyo', 18868, 1),
(52, 185, 'GPS Cihazi', 18875, 1),
(52, 186, 'Ehliyet', 1581, 1),
(52, 187, 'Tasinabilir Radyo', 18868, 1),
(53, 188, 'GPS Cihazi', 18875, 1),
(53, 189, 'Ehliyet', 1581, 1),
(53, 190, 'Tasinabilir Radyo', 18868, 1),
(54, 191, 'GPS Cihazi', 18875, 1),
(54, 192, 'Ehliyet', 1581, 1),
(54, 193, 'Tasinabilir Radyo', 18868, 1),
(55, 194, 'GPS Cihazi', 18875, 1),
(55, 195, 'Ehliyet', 1581, 1),
(55, 196, 'Tasinabilir Radyo', 18868, 1),
(56, 197, 'GPS Cihazi', 18875, 1),
(56, 198, 'Ehliyet', 1581, 1),
(56, 199, 'Tasinabilir Radyo', 18868, 1),
(57, 200, 'GPS Cihazi', 18875, 1),
(57, 201, 'Ehliyet', 1581, 1),
(57, 202, 'Tasinabilir Radyo', 18868, 1),
(58, 203, 'GPS Cihazi', 18875, 1),
(58, 204, 'Ehliyet', 1581, 1),
(58, 205, 'Tasinabilir Radyo', 18868, 1),
(59, 206, 'GPS Cihazi', 18875, 1),
(59, 207, 'Ehliyet', 1581, 1),
(59, 208, 'Tasinabilir Radyo', 18868, 1),
(60, 209, 'GPS Cihazi', 18875, 1),
(60, 210, 'Ehliyet', 1581, 1),
(60, 211, 'Tasinabilir Radyo', 18868, 1),
(61, 212, 'GPS Cihazi', 18875, 1),
(64, 271, 'Telefon', 330, 1),
(62, 218, 'GPS Cihazi', 18875, 1),
(63, 221, 'GPS Cihazi', 18875, 1),
(64, 222, 'GPS Cihazi', 18875, 1),
(61, 223, 'Maske', 19036, 1),
(65, 224, 'GPS Cihazi', 18875, 1),
(65, 225, 'Maske', 19036, 1),
(65, 226, 'Telefon', 330, 1),
(66, 227, 'GPS Cihazi', 18875, 1),
(67, 228, 'GPS Cihazi', 18875, 1),
(68, 229, 'GPS Cihazi', 18875, 1),
(69, 230, 'GPS Cihazi', 18875, 1),
(70, 231, 'GPS Cihazi', 18875, 1),
(70, 232, 'Telefon', 330, 1),
(77, 277, 'Tasinabilir Radyo', 18868, 1),
(1, 296, 'Tasinabilir Radyo', 18868, 1),
(71, 236, 'GPS Cihazi', 18875, 1),
(72, 237, 'GPS Cihazi', 18875, 1),
(93, 308, 'Tasinabilir Radyo', 18868, 1),
(77, 278, 'Boombox', 2226, 1),
(94, 311, 'GPS Cihazi', 18875, 1),
(1, 309, 'Kokain', 1575, 5),
(73, 249, 'GPS Cihazi', 18875, 1),
(74, 250, 'GPS Cihazi', 18875, 1),
(75, 251, 'GPS Cihazi', 18875, 1),
(76, 254, 'GPS Cihazi', 18875, 1),
(1, 306, 'Su', 2958, 1),
(74, 256, 'Kokain', 1575, 18),
(70, 312, 'Tasinabilir Radyo', 18868, 1),
(93, 310, 'Kokain', 1575, 3),
(1, 282, 'Sigara', 1019, 7),
(1, 297, 'Zar', 1851, 1),
(1, 298, 'Ruhsat', 1581, 1),
(1, 281, 'Telefon', 330, 1),
(65, 285, 'Tasinabilir Radyo', 18868, 1),
(65, 284, 'Boombox', 2226, 1),
(65, 303, 'Ruhsat', 1581, 1),
(65, 287, 'Alet Cantasi', 920, 1),
(1, 288, 'GPS Cihazi', 18875, 1),
(79, 289, 'GPS Cihazi', 18875, 1),
(96, 319, 'GPS Cihazi', 18875, 1),
(1, 293, 'Levye', 18634, 1),
(1, 294, 'Alet Cantasi', 920, 1),
(70, 313, 'Boombox', 2226, 1),
(93, 316, 'Ehliyet', 1581, 1),
(95, 320, 'GPS Cihazi', 18875, 1),
(97, 321, 'GPS Cihazi', 18875, 1),
(100, 322, 'GPS Cihazi', 18875, 1),
(101, 323, 'GPS Cihazi', 18875, 1),
(102, 324, 'GPS Cihazi', 18875, 1),
(102, 325, 'Telefon', 330, 1),
(102, 368, 'Radyo', 18868, 2),
(101, 327, 'Telefon', 330, 1),
(101, 328, 'Radyo', 18868, 1),
(102, 329, 'Ehliyet', 1581, 1),
(101, 331, 'Ehliyet', 1581, 1),
(102, 332, 'Ip', 19088, 1),
(103, 333, 'GPS Cihazi', 18875, 1),
(104, 334, 'GPS Cihazi', 18875, 1),
(104, 335, 'Telefon', 330, 1),
(100, 336, 'Telefon', 330, 1),
(102, 337, 'Boombox', 2226, 1),
(104, 338, 'Ruhsat', 1581, 1),
(104, 339, 'Ehliyet', 1581, 1),
(104, 397, 'Maske', 19036, 1),
(106, 341, 'GPS Cihazi', 18875, 1),
(107, 342, 'GPS Cihazi', 18875, 1),
(107, 343, 'Telefon', 330, 1),
(107, 344, 'Bos Sise', 1484, 3),
(108, 345, 'GPS Cihazi', 18875, 1),
(109, 346, 'GPS Cihazi', 18875, 1),
(102, 411, 'Karton', 928, 1),
(110, 348, 'GPS Cihazi', 18875, 2),
(111, 349, 'GPS Cihazi', 18875, 1),
(112, 350, 'GPS Cihazi', 18875, 1),
(113, 351, 'GPS Cihazi', 18875, 1),
(117, 354, 'GPS Cihazi', 18875, 1),
(116, 353, 'GPS Cihazi', 18875, 1),
(117, 355, 'Tasinabilir Radyo', 18868, 1),
(118, 356, 'GPS Cihazi', 18875, 1),
(119, 357, 'GPS Cihazi', 18875, 1),
(120, 358, 'GPS Cihazi', 18875, 1),
(120, 359, 'Radyo', 18868, 1),
(120, 360, 'Telefon', 330, 1),
(120, 361, 'Ehliyet', 1581, 1),
(120, 362, 'Ruhsat', 1581, 1),
(102, 369, 'Maske', 19036, 1),
(117, 367, 'Radyo', 18868, 1),
(107, 370, 'Ehliyet', 1581, 1),
(102, 371, 'Ruhsat', 1581, 1),
(107, 372, 'Radyo', 18868, 1),
(117, 420, 'Telefon', 330, 1),
(116, 374, 'Radyo', 18868, 2),
(104, 414, 'Boombox', 2226, 1),
(116, 376, 'NOS Kapagi', 1010, 1),
(116, 377, 'Sprey Kutusu', 365, 1),
(102, 412, 'Kalas', 1463, 3),
(116, 379, 'Su', 2958, 3),
(116, 380, 'Soda', 1543, 2),
(116, 381, 'Kaykay', 19878, 1),
(116, 393, 'Ip', 1019, 1),
(116, 383, 'Benzin Kutusu', 1650, 1),
(116, 384, 'Levye', 18634, 1),
(116, 385, 'Medkit', 1580, 3),
(102, 415, 'Zar', 1851, 1),
(107, 432, 'Maske', 19036, 1),
(116, 388, 'Alet Cantasi', 920, 2),
(116, 389, 'Dondurulmus Pizza', 2814, 1),
(116, 390, 'Dondurulmus Hamburger', 2768, 1),
(116, 391, 'Zar', 1851, 1),
(100, 453, 'Sigara', 1019, 291),
(116, 394, 'Goz Bagi', 1019, 2),
(116, 404, 'Kalas', 1463, 1),
(123, 451, 'Sigara', 1019, 1),
(116, 401, 'Maske', 19036, 1),
(116, 424, 'Telefon', 330, 1),
(121, 423, 'GPS Cihazi', 18875, 1),
(121, 425, 'Telefon', 330, 1),
(121, 427, 'Ehliyet', 1581, 1),
(120, 431, 'Maske', 19036, 1),
(122, 429, 'GPS Cihazi', 18875, 1),
(104, 430, 'Radyo', 18868, 1),
(123, 433, 'GPS Cihazi', 18875, 1),
(124, 434, 'GPS Cihazi', 18875, 1),
(123, 435, 'Radyo', 18868, 1),
(100, 436, 'Radyo', 18868, 1),
(100, 442, 'Maske', 19036, 1),
(117, 443, 'Sigara', 1019, 24),
(123, 444, 'Telefon', 330, 1),
(123, 445, 'Ehliyet', 1581, 1),
(121, 446, 'Sigara', 1019, 4),
(117, 447, 'Ehliyet', 1581, 1),
(121, 448, 'Ruhsat', 1581, 1),
(121, 449, 'Maske', 19036, 1),
(104, 462, 'Sigara', 1019, 1),
(102, 454, 'Sigara', 1019, 39),
(104, 455, 'Kokain', 1575, 4),
(100, 456, 'Ip', 19088, 1),
(125, 457, 'GPS Cihazi', 18875, 1),
(125, 458, 'Kalas', 1463, 1),
(125, 459, 'NOS Kapagi', 1010, 1),
(125, 460, 'Telefon', 330, 1),
(116, 464, 'Sigara', 1019, 196),
(125, 465, 'Sigara', 1019, 101),
(107, 466, 'Sigara', 1019, 98),
(126, 467, 'GPS Cihazi', 18875, 1),
(126, 468, 'Sigara', 1019, 28),
(117, 469, 'Maske', 19036, 1),
(117, 470, 'Soda', 1543, 6),
(123, 471, 'Soda', 1543, 1),
(127, 472, 'GPS Cihazi', 18875, 1),
(127, 473, 'Radyo', 18868, 1),
(117, 474, 'Çerçeve 15', 2275, 1),
(127, 475, 'Ehliyet', 1581, 1),
(127, 476, 'Ruhsat', 1581, 1),
(127, 477, 'Sigara', 1019, 1),
(128, 478, 'GPS Cihazi', 18875, 1),
(129, 479, 'GPS Cihazi', 18875, 1),
(130, 480, 'GPS Cihazi', 18875, 1),
(130, 481, 'Pismis Hamburger', 2703, 1),
(117, 482, 'Pismis Hamburger', 2703, 5),
(117, 483, 'Boombox', 2226, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int(12) NOT NULL,
  `jobPosX` float DEFAULT 0,
  `jobPosY` float DEFAULT 0,
  `jobPosZ` float DEFAULT 0,
  `jobPointX` float DEFAULT 0,
  `jobPointY` float DEFAULT 0,
  `jobPointZ` float DEFAULT 0,
  `jobDeliverX` float DEFAULT 0,
  `jobDeliverY` float DEFAULT 0,
  `jobDeliverZ` float DEFAULT 0,
  `jobInterior` int(12) DEFAULT 0,
  `jobWorld` int(12) DEFAULT 0,
  `jobType` int(12) DEFAULT 0,
  `jobPointInt` int(12) DEFAULT 0,
  `jobPointWorld` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `jobs`
--

INSERT INTO `jobs` (`jobID`, `jobPosX`, `jobPosY`, `jobPosZ`, `jobPointX`, `jobPointY`, `jobPointZ`, `jobDeliverX`, `jobDeliverY`, `jobDeliverZ`, `jobInterior`, `jobWorld`, `jobType`, `jobPointInt`, `jobPointWorld`) VALUES
(7, 2721.22, -2380.05, 17.3403, 2700.38, -2388.77, 13.6328, 0, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kickbanlog`
--

CREATE TABLE `kickbanlog` (
  `ID` int(32) NOT NULL,
  `Uygulayan` varchar(32) NOT NULL,
  `Tarih` varchar(32) NOT NULL,
  `Sebep` varchar(32) NOT NULL,
  `Tur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kontraktlar`
--

CREATE TABLE `kontraktlar` (
  `ID` int(11) NOT NULL,
  `kontraktTarih` varchar(36) NOT NULL,
  `kontraktMiktar` int(11) NOT NULL DEFAULT 0,
  `kontraktImzalayan` varchar(36) NOT NULL,
  `kontraktSebep` varchar(128) NOT NULL DEFAULT 'Yok'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kuponlar`
--

CREATE TABLE `kuponlar` (
  `ID` int(11) DEFAULT NULL,
  `kuponID` int(11) NOT NULL,
  `kuponMacID` int(11) DEFAULT -1,
  `kuponYatirilan` int(11) DEFAULT 0,
  `kuponOdul` int(11) DEFAULT 0,
  `kuponTarih` varchar(32) DEFAULT NULL,
  `kuponTahmin` int(11) DEFAULT -1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `loaded_furnitures`
--

CREATE TABLE `loaded_furnitures` (
  `id` int(12) NOT NULL,
  `world` int(12) NOT NULL,
  `objesayisi` int(255) NOT NULL,
  `tarih` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `maclar`
--

CREATE TABLE `maclar` (
  `macID` int(11) NOT NULL,
  `macOran` float NOT NULL DEFAULT 0,
  `macTakim1` int(11) NOT NULL DEFAULT -1,
  `macTakim2` int(11) NOT NULL DEFAULT -1,
  `macTakim1Skor` int(11) NOT NULL DEFAULT 0,
  `macTakim2Skor` int(11) NOT NULL DEFAULT 0,
  `macOynandimi` int(11) NOT NULL DEFAULT 0,
  `macZaman` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `marketlog`
--

CREATE TABLE `marketlog` (
  `LOGID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `AldigiUrun` varchar(128) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `Ucret` int(11) NOT NULL,
  `YeniMiktar` int(11) NOT NULL,
  `Tarih` varchar(128) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `Tip` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mezarlar`
--

CREATE TABLE `mezarlar` (
  `mezarID` int(11) NOT NULL,
  `mezarAd` varchar(128) NOT NULL,
  `mezarTarih` varchar(128) NOT NULL,
  `mezarYazit` varchar(128) NOT NULL,
  `mezarOtopsi` varchar(128) NOT NULL,
  `mezarPosX` float NOT NULL,
  `mezarPosY` float NOT NULL,
  `mezarPosZ` float NOT NULL,
  `mezarPosA` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `namechanges`
--

CREATE TABLE `namechanges` (
  `ID` int(12) NOT NULL,
  `OldName` varchar(24) DEFAULT NULL,
  `NewName` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `objects`
--

CREATE TABLE `objects` (
  `objectID` int(11) NOT NULL,
  `objectModel` int(11) NOT NULL,
  `objectOwner` int(11) NOT NULL,
  `objectInterior` int(11) NOT NULL,
  `objectWorld` int(11) NOT NULL,
  `objectX` float NOT NULL,
  `objectY` float NOT NULL,
  `objectZ` float NOT NULL,
  `objectRX` float NOT NULL,
  `objectRY` float NOT NULL,
  `objectRZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `plants`
--

CREATE TABLE `plants` (
  `plantID` int(12) NOT NULL,
  `plantType` int(12) DEFAULT 0,
  `plantDrugs` int(12) DEFAULT 0,
  `plantX` float DEFAULT 0,
  `plantY` float DEFAULT 0,
  `plantZ` float DEFAULT 0,
  `plantA` float DEFAULT 0,
  `plantInterior` int(12) DEFAULT 0,
  `plantWorld` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pumps`
--

CREATE TABLE `pumps` (
  `ID` int(12) DEFAULT 0,
  `pumpID` int(12) NOT NULL,
  `pumpPosX` float DEFAULT 0,
  `pumpPosY` float DEFAULT 0,
  `pumpPosZ` float DEFAULT 0,
  `pumpPosA` float DEFAULT 0,
  `pumpFuel` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `pumps`
--

INSERT INTO `pumps` (`ID`, `pumpID`, `pumpPosX`, `pumpPosY`, `pumpPosZ`, `pumpPosA`, `pumpFuel`) VALUES
(16, 6, 1941.7, -1774.38, 13.9368, 25.0583, -1),
(16, 5, 1941.69, -1767.18, 13.9068, 0.7307, 7000000),
(16, 7, 1941.44, -1771.35, 13.8306, 270.199, -1),
(16, 8, 1941.64, -1778.47, 14.0427, 270.053, -1),
(37, 10, 1000.73, -936.146, 42.1796, 352.448, 1000),
(16, 11, 1941.09, -1778.57, 13.3905, 270.435, -1),
(16, 12, 1727.32, 1445.64, 10.7442, 179.343, -1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sandiklar`
--

CREATE TABLE `sandiklar` (
  `sandikID` int(11) NOT NULL,
  `sandikX` float NOT NULL,
  `sandikY` float NOT NULL,
  `sandikZ` float NOT NULL,
  `sandikA` float NOT NULL,
  `sandikBaslik` varchar(128) NOT NULL,
  `sandikIcerik` varchar(128) NOT NULL,
  `sandikOy` int(11) NOT NULL DEFAULT 0,
  `sandikInterior` int(11) NOT NULL DEFAULT 0,
  `sandikWorld` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `speedcameras`
--

INSERT INTO `speedcameras` (`speedID`, `speedRange`, `speedLimit`, `speedX`, `speedY`, `speedZ`, `speedAngle`) VALUES
(3, 30, 50, 1803.61, -1494.45, 6.2788, 238.775),
(5, 30, 100, 1811.22, 284.548, 20.0138, 259.538);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tickets`
--

CREATE TABLE `tickets` (
  `ID` int(12) DEFAULT 0,
  `ticketID` int(12) NOT NULL,
  `ticketFee` int(12) DEFAULT 0,
  `ticketBy` varchar(24) DEFAULT NULL,
  `ticketDate` varchar(36) DEFAULT NULL,
  `ticketReason` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `turfs`
--

CREATE TABLE `turfs` (
  `turfID` int(15) NOT NULL,
  `turfAd` varchar(32) NOT NULL,
  `turfX` float NOT NULL,
  `turfY` float NOT NULL,
  `turfZ` float NOT NULL,
  `turfInterior` int(11) NOT NULL,
  `turfWorld` int(11) NOT NULL,
  `turfSahip` int(11) NOT NULL,
  `turfEleGeciren` varchar(100) NOT NULL,
  `turfGelir` int(11) NOT NULL,
  `turfGRTime` int(11) NOT NULL,
  `turfCPTime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `urunID` int(11) NOT NULL,
  `urunAd` varchar(128) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urunMiktar` int(11) NOT NULL,
  `urunSahip` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urunID`, `urunAd`, `urunMiktar`, `urunSahip`) VALUES
(29, 'Maske Kullanimi', 1, 1),
(25, 'Soyadi Kilitleme', 1, 1),
(28, 'Birlik Adi Degistirme', 1, 136),
(27, 'Ozel Plaka', 1, 1),
(26, 'Hizli Motor Calistirma', 1, 1),
(30, 'Maske Kullanimi', 1, 5),
(48, 'Bisiklet Olusturma', 1, 150),
(32, 'Soyadi Kilitleme', 1, 195),
(33, 'Hizli Motor Calistirma', 1, 195),
(34, 'Ozel Forum Ranki', 1, 581),
(35, 'Maske Kullanimi', 1, 581),
(36, 'Maske Kullanimi', 1, 29),
(37, 'Maske Kullanimi', 1, 29),
(38, 'Maske Kullanimi', 1, 29),
(39, 'Maske Kullanimi', 1, 29),
(40, 'Maske Kullanimi', 1, 29),
(41, 'Maske Kullanimi', 1, 29),
(42, 'Gate/Garaj Kapisi (Sinirsiz)', 1, 2811),
(43, 'Ozel Plaka', 1, 2811),
(44, 'Maske Kullanimi', 1, 1853),
(45, 'Obje Paketi (25 obje)', 1, 581),
(46, 'Maske Kullanimi', 1, 1103),
(47, 'Bisiklet Olusturma', 1, 1103),
(49, 'Bisiklet Olusturma', 1, 150),
(50, 'Ozel Karakter Slotu', 1, 581),
(51, 'Maske Kullanimi', 1, 2117),
(52, 'Interior/Extrance/Bina (Aylik)', 1, 2191),
(53, 'Isim Degistirme', 1, 965),
(54, 'Isim Degistirme', 1, 965),
(55, 'Maske Kullanimi', 1, 965),
(56, 'Obje Paketi (25 obje)', 1, 965),
(57, 'Isim Degistirme', 1, 0),
(58, 'Maske Kullanimi', 1, 3101),
(59, 'Ozel Arac (Stafford vb.)', 1, 3101),
(60, 'Ozel Karakter Slotu', 1, 3101),
(61, 'Ozel Karakter Slotu', 1, 195),
(62, 'Maske Kullanimi', 1, 195),
(63, 'Ozel Numara', 1, 2191),
(64, 'Bisiklet Olusturma', 1, 2117),
(65, 'Gate/Garaj Kapisi (Sinirsiz)', 1, 2191),
(66, 'Ozel Arac (Stafford vb.)', 1, 2117),
(67, 'Karakter Sifirlama', 1, 902),
(68, 'Isim Degistirme', 1, 902),
(69, 'Isim Degistirme', 1, 41),
(70, 'Ozel Karakter Slotu', 1, 2191),
(71, 'Isim Degistirme', 1, 1853),
(72, 'Isim Degistirme', 1, 4228),
(73, 'Isim Degistirme', 1, 4228),
(74, 'Ozel Plaka', 1, 4228),
(75, 'Isim Degistirme', 1, 4227),
(76, 'Isim Degistirme', 1, 3141),
(77, 'Koken Degistirme', 1, 3141),
(78, 'Dogum Tarihi Degistirme', 1, 3141),
(79, 'Isim Degistirme', 1, 41),
(80, 'Ozel Arac (Stafford vb.)', 1, 4520),
(81, 'Maske Kullanimi', 1, 1816),
(82, 'Dil Sifirlama', 1, 41),
(83, 'Isim Degistirme', 1, 2117),
(84, 'Bisiklet Olusturma', 1, 2191),
(85, 'Maske Kullanimi', 1, 41),
(86, 'Isim Degistirme', 1, 3253),
(87, 'Bisiklet Olusturma', 1, 1917),
(88, 'Maske Kullanimi', 1, 1917),
(89, 'Maske Kullanimi', 1, 4228),
(90, 'Ozel Arac (Stafford vb.)', 1, 4228),
(91, 'Ozel Karakter Slotu', 1, 195),
(92, 'Bisiklet Olusturma', 1, 4228),
(93, 'Dil Sifirlama', 1, 3141),
(94, 'Isim Degistirme', 1, 5007),
(95, 'Dil Sifirlama', 1, 1853),
(96, 'Ozel Plaka', 1, 195),
(97, 'Bisiklet Olusturma', 1, 195),
(98, 'OOC Sicil Sifirlama', 1, 4460),
(99, 'Maske Kullanimi', 1, 4460),
(100, 'Dil Sifirlama', 1, 4460),
(101, 'Ozel Numara', 1, 4460),
(102, '', 1, 4826),
(103, '', 1, 4826),
(104, '', 1, 4826),
(105, '', 1, 5120),
(106, 'Ozel Arac (Stafford vb.)', 1, 5280),
(107, 'Bisiklet Olusturma', 1, 1),
(108, 'Maske Kullanimi', 1, 581),
(109, 'Level Transfer', 1, 581),
(110, 'Interior/Extrance/Bina (Aylik)', 1, 1),
(111, 'Maske Kullanimi', 1, 5250),
(112, 'Gate/Garaj Kapisi (Sinirsiz)', 1, 5328),
(113, 'Maske Kullanimi', 1, 650),
(114, 'Ozel Forum Ranki', 1, 5751),
(115, 'Maske Kullanimi', 1, 584),
(116, 'Maske Kullanimi', 1, 1186),
(117, 'Hizli Motor Calistirma', 1, 1186),
(118, 'Maske Kullanimi', 1, 4696),
(119, 'Maske Kullanimi', 1, 1263),
(120, 'Forum Isim Degistirme', 1, 1816),
(121, 'Hizli Motor Calistirma', 1, 1816),
(122, 'Ozel Numara', 1, 1816),
(123, 'Maske Kullanimi', 1, 4821);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_objects`
--

CREATE TABLE `user_objects` (
  `id` int(12) NOT NULL,
  `character_id` int(11) NOT NULL,
  `var` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `bone` int(11) NOT NULL,
  `offset_x` float NOT NULL,
  `offset_y` float NOT NULL,
  `offset_z` float NOT NULL,
  `rot_x` float NOT NULL,
  `rot_y` float NOT NULL,
  `rot_z` float NOT NULL,
  `scale_x` float NOT NULL,
  `scale_y` float NOT NULL,
  `scale_z` float NOT NULL,
  `color1` int(11) NOT NULL,
  `color2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `user_objects`
--

INSERT INTO `user_objects` (`id`, `character_id`, `var`, `slot`, `model`, `bone`, `offset_x`, `offset_y`, `offset_z`, `rot_x`, `rot_y`, `rot_z`, `scale_x`, `scale_y`, `scale_z`, `color1`, `color2`) VALUES
(2, 120, 119, 0, 1210, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 102, 11, 0, 11719, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 65, 91, 0, 19033, 2, 0.09, 0.047, 0.001, 83, 82.4, 6.5, 1.008, 1.12, 1, 0, 0),
(6, 69, 60, 0, 19137, 2, 0.095, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0),
(7, 82, 119, 0, 1210, 6, 0.281, 0.118, 0.057, 0, -102, -0.9, 1, 1, 1, 0, 0),
(10, 74, 133, 0, 18641, 5, 0.108, 0.006, -0.067, 167.1, 172.7, 0, 1, 1, 1, 0, 0),
(13, 90, 91, 0, 19033, 2, 0.093, 0.046, -0.001, -0.1, 90.6, 90.9, 0.795, 0.988, 1, 0, 0),
(14, 65, 119, 1, 1210, 5, 0.307, 0.114, -0.067, -133.7, -95.6, -97.2, 1, 1, 1, 0, 0),
(16, 72, 93, 0, 19023, 1, 0.149, 0.052, -0.008, -7.4, 177, 100.7, 1, 1.043, 1.018, 0, 0),
(19, 72, 93, 1, 19023, 2, 0.071, 0.03, 0.002, 85.5, 85.4, 3.1, 1, 0.988, 0.912, 0, 0),
(22, 72, 122, 3, 1550, 1, 0.007, 0.27, 0, 3.6, 88.4, -22.5, 1.024, 1.035, 1.021, 0, 0),
(24, 72, 107, 2, 19801, 2, 0.057, 0.012, 0.002, 0, 88.5, 179.9, 1.071, 1.107, 1.06, 0, 0),
(25, 84, 122, 0, 1550, 1, 0, -0.232, 0, 0, 84, 167, 1, 1, 1, 0, 0),
(26, 84, 107, 1, 19801, 2, 0.066, 0.015, 0, 0, 87.4, 176.1, 1.25, 1.122, 1.165, 0, 0),
(27, 79, 80, 2, 19421, 2, 0.051, 0.017, -0.001, -92.5, -177.6, 88.8, 1, 0.945, 1, 0, 0),
(28, 70, 137, 0, 18641, 16, 0.098, -0.027, -0.047, -93.1, 0, 0, 0.807, 0.792, 0.515, 0, 0),
(29, 87, 127, 0, 1310, 1, -0.266, 0.068, 0, 0, 88.8, 0, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorType` int(12) DEFAULT 0,
  `vendorX` float DEFAULT 0,
  `vendorY` float DEFAULT 0,
  `vendorZ` float DEFAULT 0,
  `vendorA` float DEFAULT 0,
  `vendorInterior` int(12) DEFAULT 0,
  `vendorWorld` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `vendors`
--

INSERT INTO `vendors` (`vendorID`, `vendorType`, `vendorX`, `vendorY`, `vendorZ`, `vendorA`, `vendorInterior`, `vendorWorld`) VALUES
(4, 2, 557.008, -1473.72, 14.7627, 273.961, 0, 0),
(5, 1, 1730.97, 1451.45, 10.7243, 0.1341, 0, 0),
(6, 2, 1732.88, 1452.26, 10.7231, 0.1341, 0, 0),
(7, 2, 1734.45, 1452.54, 10.7039, 0.1341, 0, 0),
(8, 2, 1735.91, 1453.64, 10.6862, 0.1341, 0, 0),
(9, 2, 1729.17, 1451.52, 10.7264, 359.343, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `warrants`
--

CREATE TABLE `warrants` (
  `ID` int(12) NOT NULL,
  `Suspect` varchar(24) DEFAULT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `warrants`
--

INSERT INTO `warrants` (`ID`, `Suspect`, `Username`, `Date`, `Description`) VALUES
(1, 'Baybars_Yucel', 'Mehmet_Akpinar', '18/01/2021, 20:53', 'Alay etmek.'),
(2, 'Alparslan_Aygan', 'Mehmet_Akpinar', '11/03/2021, 13:37', 'Polise mukavamet, polisten kaçmak.'),
(3, 'Alparslan_Aygan', 'Mehmet_Akpinar', '11/03/2021, 13:49', '?'),
(4, 'Alparslan_Aygan', 'Efe_Ak', '13/03/2021, 12:25', 'am sikti'),
(5, 'Thalent_Betaplayer', 'Mehmet_Akpinar', '18/03/2021, 18:33', 'sýkek bunu bulup'),
(6, 'Alparslan_Aygan', 'Efe_Ak', '20/03/2021, 14:00', 'yarak yedý'),
(7, 'Odin_Malford', 'Kukuli', '21/03/2021, 16:23', 'oc mu bu amýk bý sorgulayýn'),
(8, 'Vesa', 'Kukuli', '21/03/2021, 16:31', 'kacmýs polýster'),
(9, 'Kukuli', 'Vesa', '21/03/2021, 16:36', 'aktif olmayan rolde afk'),
(10, 'Odin_Alford', 'Odin_Malford', '24/03/2021, 18:25', 'Yaralýk'),
(11, 'Alec_Wilson', 'Odin_Alford', '23/05/2021, 13:04', 'Polisten kaçmak.'),
(12, 'Odin_Alford', 'Auggie_Trammell', '02/06/2021, 20:51', 'yaraki kokluor'),
(13, 'Odin_Alford', 'William_Jester', '06/06/2021, 11:19', 'HILE'),
(14, 'William_Jester', 'Odin_Alford', '06/06/2021, 11:20', 'Yarka yalýor dýor kukulý'),
(15, 'Odin_Alford', 'William_Jester', '06/06/2021, 11:20', 'INanmayin knk'),
(16, 'William_Jester', 'William_Jester', '06/06/2021, 11:20', 'Inanmayýn knk o leb ýr sey ok'),
(17, 'Odin_Alford', 'William_Jester', '06/06/2021, 11:20', 'Geylýk yok berlýn sert.'),
(18, 'Odin_Alford', 'Bob_Scott', '06/06/2021, 11:47', '5'),
(19, 'Richard_Preston', 'Sistem', '16/02/2023, 00:31', 'Gecikmiþ Ceza'),
(20, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 19:52', 'Gecikmiþ Ceza'),
(21, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 19:53', 'Gecikmiþ Ceza'),
(22, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 19:55', 'Gecikmiþ Ceza'),
(23, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 20:03', 'Gecikmiþ Ceza'),
(24, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 20:17', 'Gecikmiþ Ceza'),
(25, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 20:19', 'Gecikmiþ Ceza'),
(26, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 20:27', 'Gecikmiþ Ceza'),
(27, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 22:15', 'Gecikmiþ Ceza'),
(28, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 22:16', 'Gecikmiþ Ceza'),
(29, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 22:16', 'Gecikmiþ Ceza'),
(30, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 22:18', 'Gecikmiþ Ceza'),
(31, 'Frooze_Betaplayer', 'Sistem', '25/02/2023, 22:18', 'Gecikmiþ Ceza');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `weaponsettings`
--

CREATE TABLE `weaponsettings` (
  `sOwner` varchar(24) NOT NULL,
  `WeaponID` tinyint(4) NOT NULL,
  `PosX` float DEFAULT -0.116,
  `PosY` float DEFAULT 0.189,
  `PosZ` float DEFAULT 0.088,
  `RotX` float DEFAULT 0,
  `RotY` float DEFAULT 44.5,
  `RotZ` float DEFAULT 0,
  `Bone` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `weaponsettings`
--

INSERT INTO `weaponsettings` (`sOwner`, `WeaponID`, `PosX`, `PosY`, `PosZ`, `RotX`, `RotY`, `RotZ`, `Bone`, `Hidden`) VALUES
('Alsafi_Yasir', 38, -0.201, 0.073, -0.05, -10.5, 75.8, 105.9, 1, 0),
('Tuncay_Kantarci', 31, -0.116, 0.189, 0.088, 0, 91.8, 8.6, 1, 0),
('Tuncay_Kantarci', 24, -0.116, 0.189, 0.088, 0, 44.5, 0, 1, 0),
('Oktay_Dogu', 31, -0.477, -0.325, -0.35, 0, 86.7, 106.1, 1, 0),
('Abbas_Yildirim', 25, -0.535, -0.035, -0.426, 61.4, 38.1, 40.1, 1, 0),
('Hatip_Racih', 31, -0.116, -0.161, -0.037, 0, 5.4, 0, 1, 0),
('Spencer_Dooley', 31, 0.076, 0.189, -0.095, -174.2, 166.4, -2.2, 1, 0),
('Deshawn_Weir', 31, -0.116, -0.133, 0.088, 0, 44.5, 0, 1, 0),
('Dean_McNeville', 24, -0.116, 0.056, 0.068, 59.7, 174.4, 177, 1, 0),
('Spencer_Dooley', 25, 0.262, 0.088, -0.178, 13.5, -118.2, 0, 1, 0),
('Zaurbek_Bataev', 31, 0.211, 0.223, 0.125, 0, 157, 0, 1, 0),
('Jack_Blanton', 31, 0.174, 0.195, 0.088, 0, 157, 0, 1, 0),
('Alsafi_Yasir', 24, -0.045, 0.137, 0.088, 0, 137.8, 11.5, 1, 0),
('Auguste_Arkady', 24, -0.116, 0.081, 0.088, 0, 44.5, 0, 1, 0),
('Harry_Neville', 25, -0.44, -0.224, -0.299, 2.8, 89.6, 98.2, 1, 0),
('Nick_Whan', 25, -0.489, -0.04, -0.287, -8.8, 102.1, 101.3, 1, 0),
('Sherman_Winchester', 24, -0.125, 0.235, -0.131, 0, 20, -157.1, 1, 0),
('Oktay_Dogu', 24, -0.116, 0.158, 0.088, 0, 151, -12.1, 1, 0),
('Frederick_McCartha', 24, -0.116, 0.189, 0.088, 102.9, 177.4, 0, 1, 0),
('Frederick_McCartha', 31, 0.14, 0.189, -0.063, 168.6, -163.2, -8.4, 1, 0),
('Wasschwein_Betaplayer', 31, 0.107, 0.23, 0.11, 0, 179.6, 12.4, 1, 0),
('Electro_Betaplayer', 31, -0.029, -0.105, 0.01, 0, -0.2, 0, 1, 0),
('John_Malivery', 24, -0.088, 0.045, -0.251, 88, 165.9, 3.1, 1, 0),
('Ramon_Devaldes', 31, 0.188, 0.141, -0.066, -16.6, 180, 10.5, 1, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`arrestID`);

--
-- Tablo için indeksler `backpackitems`
--
ALTER TABLE `backpackitems`
  ADD PRIMARY KEY (`itemID`);

--
-- Tablo için indeksler `backpacks`
--
ALTER TABLE `backpacks`
  ADD PRIMARY KEY (`backpackID`);

--
-- Tablo için indeksler `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`bbID`);

--
-- Tablo için indeksler `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`bizID`);

--
-- Tablo için indeksler `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`carID`);

--
-- Tablo için indeksler `carstorage`
--
ALTER TABLE `carstorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Tablo için indeksler `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Tablo için indeksler `dealervehicles`
--
ALTER TABLE `dealervehicles`
  ADD PRIMARY KEY (`vehID`);

--
-- Tablo için indeksler `detectors`
--
ALTER TABLE `detectors`
  ADD PRIMARY KEY (`detectorID`);

--
-- Tablo için indeksler `dropped`
--
ALTER TABLE `dropped`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`entranceID`);

--
-- Tablo için indeksler `fabrikalar`
--
ALTER TABLE `fabrikalar`
  ADD PRIMARY KEY (`fabrikaID`);

--
-- Tablo için indeksler `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Tablo için indeksler `faction_uniforms`
--
ALTER TABLE `faction_uniforms`
  ADD PRIMARY KEY (`faction_id`);

--
-- Tablo için indeksler `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`furnitureID`);

--
-- Tablo için indeksler `furnitures`
--
ALTER TABLE `furnitures`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `garbage`
--
ALTER TABLE `garbage`
  ADD PRIMARY KEY (`garbageID`);

--
-- Tablo için indeksler `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Tablo için indeksler `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`locationID`);

--
-- Tablo için indeksler `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`);

--
-- Tablo için indeksler `gunracks`
--
ALTER TABLE `gunracks`
  ADD PRIMARY KEY (`rackID`);

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`haberID`);

--
-- Tablo için indeksler `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`houseID`);

--
-- Tablo için indeksler `housestorage`
--
ALTER TABLE `housestorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Tablo için indeksler `impoundlots`
--
ALTER TABLE `impoundlots`
  ADD PRIMARY KEY (`impoundID`);

--
-- Tablo için indeksler `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invID`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobID`);

--
-- Tablo için indeksler `kuponlar`
--
ALTER TABLE `kuponlar`
  ADD PRIMARY KEY (`kuponID`);

--
-- Tablo için indeksler `loaded_furnitures`
--
ALTER TABLE `loaded_furnitures`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `maclar`
--
ALTER TABLE `maclar`
  ADD PRIMARY KEY (`macID`);

--
-- Tablo için indeksler `marketlog`
--
ALTER TABLE `marketlog`
  ADD PRIMARY KEY (`LOGID`);

--
-- Tablo için indeksler `mezarlar`
--
ALTER TABLE `mezarlar`
  ADD PRIMARY KEY (`mezarID`);

--
-- Tablo için indeksler `namechanges`
--
ALTER TABLE `namechanges`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`objectID`);

--
-- Tablo için indeksler `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plantID`);

--
-- Tablo için indeksler `pumps`
--
ALTER TABLE `pumps`
  ADD PRIMARY KEY (`pumpID`);

--
-- Tablo için indeksler `sandiklar`
--
ALTER TABLE `sandiklar`
  ADD PRIMARY KEY (`sandikID`),
  ADD KEY `sandikID` (`sandikID`),
  ADD KEY `sandikID_2` (`sandikID`);

--
-- Tablo için indeksler `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Tablo için indeksler `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketID`);

--
-- Tablo için indeksler `turfs`
--
ALTER TABLE `turfs`
  ADD PRIMARY KEY (`turfID`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`urunID`),
  ADD UNIQUE KEY `urunID` (`urunID`),
  ADD KEY `urunID_2` (`urunID`);

--
-- Tablo için indeksler `user_objects`
--
ALTER TABLE `user_objects`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- Tablo için indeksler `warrants`
--
ALTER TABLE `warrants`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `weaponsettings`
--
ALTER TABLE `weaponsettings`
  ADD UNIQUE KEY `weapon` (`sOwner`,`WeaponID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- Tablo için AUTO_INCREMENT değeri `application`
--
ALTER TABLE `application`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `arrestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `backpackitems`
--
ALTER TABLE `backpackitems`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `backpacks`
--
ALTER TABLE `backpacks`
  MODIFY `backpackID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `billboards`
--
ALTER TABLE `billboards`
  MODIFY `bbID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Tablo için AUTO_INCREMENT değeri `businesses`
--
ALTER TABLE `businesses`
  MODIFY `bizID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Tablo için AUTO_INCREMENT değeri `cars`
--
ALTER TABLE `cars`
  MODIFY `carID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=865;

--
-- Tablo için AUTO_INCREMENT değeri `carstorage`
--
ALTER TABLE `carstorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `characters`
--
ALTER TABLE `characters`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `dealervehicles`
--
ALTER TABLE `dealervehicles`
  MODIFY `vehID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `detectors`
--
ALTER TABLE `detectors`
  MODIFY `detectorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `dropped`
--
ALTER TABLE `dropped`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Tablo için AUTO_INCREMENT değeri `entrances`
--
ALTER TABLE `entrances`
  MODIFY `entranceID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `fabrikalar`
--
ALTER TABLE `fabrikalar`
  MODIFY `fabrikaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `factions`
--
ALTER TABLE `factions`
  MODIFY `factionID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Tablo için AUTO_INCREMENT değeri `faction_uniforms`
--
ALTER TABLE `faction_uniforms`
  MODIFY `faction_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `furniture`
--
ALTER TABLE `furniture`
  MODIFY `furnitureID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `furnitures`
--
ALTER TABLE `furnitures`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2127;

--
-- Tablo için AUTO_INCREMENT değeri `garbage`
--
ALTER TABLE `garbage`
  MODIFY `garbageID` int(12) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `gps`
--
ALTER TABLE `gps`
  MODIFY `locationID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `gunracks`
--
ALTER TABLE `gunracks`
  MODIFY `rackID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `haberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `houses`
--
ALTER TABLE `houses`
  MODIFY `houseID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Tablo için AUTO_INCREMENT değeri `housestorage`
--
ALTER TABLE `housestorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `impoundlots`
--
ALTER TABLE `impoundlots`
  MODIFY `impoundID` int(12) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `kuponlar`
--
ALTER TABLE `kuponlar`
  MODIFY `kuponID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `loaded_furnitures`
--
ALTER TABLE `loaded_furnitures`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `maclar`
--
ALTER TABLE `maclar`
  MODIFY `macID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `marketlog`
--
ALTER TABLE `marketlog`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mezarlar`
--
ALTER TABLE `mezarlar`
  MODIFY `mezarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Tablo için AUTO_INCREMENT değeri `namechanges`
--
ALTER TABLE `namechanges`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=842;

--
-- Tablo için AUTO_INCREMENT değeri `objects`
--
ALTER TABLE `objects`
  MODIFY `objectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `plants`
--
ALTER TABLE `plants`
  MODIFY `plantID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Tablo için AUTO_INCREMENT değeri `pumps`
--
ALTER TABLE `pumps`
  MODIFY `pumpID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `sandiklar`
--
ALTER TABLE `sandiklar`
  MODIFY `sandikID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Tablo için AUTO_INCREMENT değeri `turfs`
--
ALTER TABLE `turfs`
  MODIFY `turfID` int(15) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `urunID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Tablo için AUTO_INCREMENT değeri `user_objects`
--
ALTER TABLE `user_objects`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `warrants`
--
ALTER TABLE `warrants`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
