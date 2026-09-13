-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2026. Sze 13. 09:00
-- Kiszolgáló verziója: 8.4.7
-- PHP verzió: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `projektmunka`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dolgozok`
--

DROP TABLE IF EXISTS `dolgozok`;
CREATE TABLE IF NOT EXISTS `dolgozok` (
  `dolgozo_id` int NOT NULL AUTO_INCREMENT,
  `dolgozo_nev` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_as_cs NOT NULL,
  `beosztas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_as_cs NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_as_cs NOT NULL,
  `telefon` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_as_cs NOT NULL,
  `kilepett` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dolgozo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hu_0900_as_cs;

--
-- A tábla adatainak kiíratása `dolgozok`
--

INSERT INTO `dolgozok` (`dolgozo_id`, `dolgozo_nev`, `beosztas`, `email`, `telefon`, `kilepett`) VALUES
(1, 'Molnár Tamás', 'Portás', 'memot@example.com', '06201234567', NULL),
(2, 'Kiss Enikő', 'Tulajdonos', 'enci@example.com', '06701234567', NULL),
(3, 'Szemán Miklós', 'Raktáros', 'szemik@example.com', '06301234567', NULL),
(4, 'Kabai Beatrix', 'Raktáros', 'kabbea@example.com', '06207654321', NULL),
(5, 'Fodor László', 'Raktáros', 'fodlas@example.com', '06703456789', NULL),
(6, 'Varga Boldizsár', 'Leolvasó', 'vargab@example.com', '06309876543', NULL),
(7, 'Kiss Noémi', 'Adminisztrátor', 'kissno@example.com', '06203456789', NULL),
(8, 'Horváth Petra', 'Könyvelő', 'horpet@example.com', '06707651234', NULL),
(9, 'Molnár Gergő', 'Leolvasó', 'molger@example.com', '06304561234', '2026-09-08 18:07:00'),
(10, 'Lakatos Eszter', 'Leolvasó', 'lakesz@example.com', '06207894561', NULL),
(11, 'Balogh Adrienn', 'Beolvasó', 'baladr@example.com', '06702345678', NULL),
(12, 'Tamási Sándor', 'Leolvasó', 'tamsan@example.com', '06306789456', NULL),
(13, 'Szujó Júlia', 'Leolvasó', 'szujul@example.com', '06205678943', NULL),
(14, 'Fekete Márton', 'Leolvasó', 'fermar@example.com', '06701239876', '2026-08-26 11:39:37'),
(15, 'Bodnár Katalin', 'Leolvasó', 'bodkat@example.com', '06307891234', NULL),
(16, 'Szabó Kálmán', 'Leolvasó', 'szabo.kalman@hotmail.com', '06201548798', NULL),
(17, 'Soós Patrícia', 'Irodai adminisztrátor', 'sos@patricia.hu', '06705566789', NULL),
(18, 'Makra Andrea', 'Egyéb ügyintéző', 'andrea@makra.hu', '06907788695', NULL),
(19, 'Kis Csilla', 'Recepciós', 'csilla@kis.com', '06906587132', NULL),
(20, 'Admin', 'Admin', 'admin@admin.com', '06701245789', NULL),
(21, 'Operator', 'Operator', 'operator@operator.com', '06203265987', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eszkozok`
--

DROP TABLE IF EXISTS `eszkozok`;
CREATE TABLE IF NOT EXISTS `eszkozok` (
  `eszkoz_id` int NOT NULL AUTO_INCREMENT,
  `azonosito` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kategoria_id` tinyint NOT NULL,
  `tipus_id` tinyint NOT NULL,
  `allapot_id` tinyint NOT NULL,
  `meret` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `megjegyzes` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Az eszközhöz bejegyezhető, opcionális',
  PRIMARY KEY (`eszkoz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `eszkozok`
--

INSERT INTO `eszkozok` (`eszkoz_id`, `azonosito`, `kategoria_id`, `tipus_id`, `allapot_id`, `meret`, `megjegyzes`) VALUES
(1, 'ts10_imei4578659812', 1, 5, 3, '10', '1 órát bír, gomb lekopott'),
(2, 'ms22_imei4578659813', 1, 4, 3, '6', ''),
(3, 'eso_xl', 2, 2, 1, 'XL', 'piros'),
(4, 'c_nike_54', 2, 1, 1, '54', 'levált a talpa'),
(5, 'c_adidas_52', 2, 1, 3, '52', 'hamis'),
(6, 'c_uvex_54', 2, 1, 2, '54', 'hétmérföldes, ok'),
(7, 'ms23_imei4578659813', 1, 4, 3, '8', ''),
(8, 'mi10x_imei4578659814', 1, 4, 4, '4,3', 'túl gyors'),
(9, 'eso_xl', 2, 2, 2, 'XL', ''),
(10, 'c_uvex_39', 2, 1, 3, '39', 'piros,'),
(11, 'tip_imei4578659816', 1, 5, 3, '10,6', 'Töltő elveszett'),
(21, 'eso_m', 2, 2, 3, 'M', 'nincs kapucnija'),
(22, 'mmv3_imei4578659817', 1, 4, 2, '4,3', 'motorola_v3'),
(23, 'LM_L', 2, 3, 2, 'L', ''),
(24, 'ms23_imei4578659812', 1, 4, 2, '6', 'nem vízálló'),
(25, 'LM_S', 2, 3, 4, 'S', 'láthatatlan lett, szétszakadt'),
(26, 'LM-XL', 2, 3, 3, 'XL', 'lekopott'),
(27, 'ms11_imei4578659822', 1, 4, 3, '4,7', 'Betört a kijelző'),
(28, 'eso_s', 2, 2, 1, 'S', ''),
(29, 'LM_M', 2, 3, 1, 'M', ''),
(30, 'tlen_imei4578659823', 1, 5, 3, '10,6', 'Kopott, még kopottabb'),
(31, 'tlen_imei4578660814', 1, 5, 3, '12', 'Az alma leesett'),
(32, 'ts26_imei4578659999', 1, 5, 1, '12', ''),
(33, 'c_dunlop_40', 2, 1, 3, '40', 'kopott'),
(34, 'eso_m', 2, 2, 2, 'M', ''),
(35, 'eso_l', 2, 2, 2, 'L', 'Egyszer használt'),
(36, 'ts25_imei5578659969', 1, 5, 1, '10', ''),
(37, 'ts10_imei2568659999', 1, 5, 4, '10', 'tönkrement'),
(38, 'ms22_imei6668659999', 1, 4, 3, '10', 'lekoptak a gombok'),
(39, 'imei44981168768', 1, 5, 1, '10', ''),
(40, 'LM_S', 2, 3, 2, 'S', ''),
(41, 'LM_M', 2, 3, 3, 'M', ''),
(42, 'LM_XL', 2, 3, 1, 'XL', ''),
(43, 'LM_XL', 2, 3, 2, 'XL', ''),
(44, 'LM_M', 2, 3, 1, 'M', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eszkoz_allapot`
--

DROP TABLE IF EXISTS `eszkoz_allapot`;
CREATE TABLE IF NOT EXISTS `eszkoz_allapot` (
  `allapot_id` tinyint NOT NULL AUTO_INCREMENT,
  `allapot` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_ai_ci NOT NULL,
  PRIMARY KEY (`allapot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hu_0900_ai_ci;

--
-- A tábla adatainak kiíratása `eszkoz_allapot`
--

INSERT INTO `eszkoz_allapot` (`allapot_id`, `allapot`) VALUES
(1, 'Új'),
(2, 'Újszerű'),
(3, 'Használt'),
(4, 'Selejtezett');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eszkoz_kategoria`
--

DROP TABLE IF EXISTS `eszkoz_kategoria`;
CREATE TABLE IF NOT EXISTS `eszkoz_kategoria` (
  `kategoria_id` tinyint NOT NULL AUTO_INCREMENT,
  `kategoria` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_ai_ci NOT NULL,
  PRIMARY KEY (`kategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hu_0900_ai_ci;

--
-- A tábla adatainak kiíratása `eszkoz_kategoria`
--

INSERT INTO `eszkoz_kategoria` (`kategoria_id`, `kategoria`) VALUES
(1, 'PDA'),
(2, 'Védőeszköz');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eszkoz_tipus`
--

DROP TABLE IF EXISTS `eszkoz_tipus`;
CREATE TABLE IF NOT EXISTS `eszkoz_tipus` (
  `tipus_id` tinyint NOT NULL AUTO_INCREMENT,
  `megnevezes` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_ai_ci NOT NULL,
  `kategoria_id` int NOT NULL,
  PRIMARY KEY (`tipus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hu_0900_ai_ci;

--
-- A tábla adatainak kiíratása `eszkoz_tipus`
--

INSERT INTO `eszkoz_tipus` (`tipus_id`, `megnevezes`, `kategoria_id`) VALUES
(1, 'Védőcipő', 2),
(2, 'Esőkabát', 2),
(3, 'Láthatósági mellény', 2),
(4, 'Telefon', 1),
(5, 'Tablet', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kiadas`
--

DROP TABLE IF EXISTS `kiadas`;
CREATE TABLE IF NOT EXISTS `kiadas` (
  `kiad_id` int NOT NULL AUTO_INCREMENT,
  `ki_vette_fel` tinyint NOT NULL COMMENT 'dolgozo_id',
  `ki_adta_ki` tinyint NOT NULL COMMENT 'user_id',
  `kiadas_datum` datetime NOT NULL,
  PRIMARY KEY (`kiad_id`),
  KEY `fk_kivettefel` (`ki_vette_fel`),
  KEY `fk_kiadtaki` (`ki_adta_ki`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hu_0900_ai_ci;

--
-- A tábla adatainak kiíratása `kiadas`
--

INSERT INTO `kiadas` (`kiad_id`, `ki_vette_fel`, `ki_adta_ki`, `kiadas_datum`) VALUES
(1, 4, 1, '2026-06-23 16:45:42'),
(2, 7, 2, '2026-06-23 16:47:10'),
(3, 6, 2, '2026-06-27 16:29:51'),
(4, 9, 3, '2026-06-27 16:31:52'),
(5, 14, 5, '2026-06-27 16:34:49'),
(6, 13, 1, '2026-09-12 11:10:20'),
(7, 4, 1, '2026-09-12 11:25:24'),
(8, 12, 21, '2026-09-13 07:57:43');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reszletek`
--

DROP TABLE IF EXISTS `reszletek`;
CREATE TABLE IF NOT EXISTS `reszletek` (
  `reszletek_id` int NOT NULL AUTO_INCREMENT,
  `kiad_id` int NOT NULL,
  `eszkoz_id` int NOT NULL,
  `kiadas_allapot` tinyint NOT NULL,
  `kiadas_megjegyzes` varchar(255) COLLATE utf8mb4_hu_0900_ai_ci NOT NULL,
  `ki_vette_vissza` tinyint DEFAULT NULL COMMENT 'user_id',
  `visszavet_datum` datetime DEFAULT NULL,
  `visszavet_allapot` int DEFAULT NULL,
  `megjegyzes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`reszletek_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hu_0900_ai_ci;

--
-- A tábla adatainak kiíratása `reszletek`
--

INSERT INTO `reszletek` (`reszletek_id`, `kiad_id`, `eszkoz_id`, `kiadas_allapot`, `kiadas_megjegyzes`, `ki_vette_vissza`, `visszavet_datum`, `visszavet_allapot`, `megjegyzes`) VALUES
(1, 1, 1, 1, '', 1, '2026-06-27 18:19:57', 2, 'elso teszt megjegyzes a visszavett eszközhoz'),
(2, 1, 2, 1, '', 1, '2026-06-27 18:54:21', 1, 'új volt, újként vettük vissza'),
(3, 2, 3, 2, '', 2, '2026-06-27 18:19:57', 3, '2->3'),
(4, 3, 4, 2, '', 1, '2026-08-20 10:18:06', 3, 'ez a proba update 2->3'),
(5, 3, 6, 2, '', 2, '2026-06-27 18:54:21', 2, NULL),
(6, 4, 8, 3, '', 1, '2026-08-20 11:26:43', 3, ''),
(7, 4, 7, 3, '', 3, '2026-06-23 18:40:19', 4, 'tönkretette!'),
(8, 5, 5, 1, '', 4, '2026-06-27 18:54:21', 3, '1->3'),
(9, 6, 33, 3, 'kopott', 1, '2026-09-12 13:18:04', 3, ''),
(10, 6, 38, 3, 'lekoptak a gombok', NULL, NULL, NULL, NULL),
(11, 7, 32, 1, '', NULL, NULL, NULL, NULL),
(12, 8, 30, 3, 'Kopott, még kopottabb', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `dolgozo_id` int NOT NULL COMMENT 'a dolgozo azonositoja',
  `usernev` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_as_cs NOT NULL,
  `jelszo_hash` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_as_cs DEFAULT NULL,
  `jogkor` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_hu_0900_as_cs NOT NULL COMMENT 'a-admin, o-operator',
  `torolve` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hu_0900_as_cs;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`user_id`, `dolgozo_id`, `usernev`, `jelszo_hash`, `jogkor`, `torolve`) VALUES
(1, 1, 'memot', '$2y$10$djHRcXSLp/MA4IBnGDoKruaGp8SUloJ8p.1OJVtd9D64TQidjDYO2', 'a', NULL),
(2, 2, 'enci', '$2y$10$EE/1j5DJnUZavwzCtsih4OmEvgbnzCtR/oFAr3EZ0ZD6AwONYhARm', 'a', NULL),
(3, 3, 'szemik', '$2y$10$JKnIL5Z4HmXLU2bLlgvzw.LO7KmLJqp3Ip7h8LF5d1Sk0KmBXHShG', 'o', NULL),
(4, 4, 'tobbeat', '$2y$10$QVTSIkLgu6NJ7VQhlutFquXGR6TAbDrYWfRCkhKqd1ec12srLbT9i', 'o', NULL),
(5, 5, 'fodger', '$2y$10$2VuP4Yx9l31G.euTwQfjfuuvpOygi7z9fdv.9j3txjeoVCYg6clcu', 'a', '2026-09-07 21:05:52'),
(6, 20, 'admin', '$2y$10$kI/6Q4SrEnfrjf.Gw25YRen3e38bwIwBBXojbx9guYcIRGLi76AoK', 'a', NULL),
(7, 21, 'operator', '$2y$10$nOpvD8S6MtRE2YRE54W06ekgzBwHfYCOTp5q7luTA6pK1tpcu.Rqq', 'o', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
