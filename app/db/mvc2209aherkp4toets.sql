-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 13 jun 2023 om 12:09
-- Serverversie: 5.7.36
-- PHP-versie: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc2209aherkp4toets`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leerling`
--

DROP TABLE IF EXISTS `leerling`;
CREATE TABLE IF NOT EXISTS `leerling` (
  `Id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(60) NOT NULL,
  `Tussenvoegsel` varchar(10) DEFAULT NULL,
  `Achternaam` varchar(60) NOT NULL,
  `Mobiel` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `leerling`
--

INSERT INTO `leerling` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`) VALUES
(1, 'Bas', 'De', 'Bakker', '06-28493827'),
(2, 'Terence', '', 'Draaijer', '06-39398734'),
(3, 'Samuel', '', 'Werchter', '06-24383291'),
(4, 'Sharida', '', 'Tetehuka', '06-48293823'),
(5, 'Fatima', '', 'Yilmaz', '06-34291234');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leerlingperlespakket`
--

DROP TABLE IF EXISTS `leerlingperlespakket`;
CREATE TABLE IF NOT EXISTS `leerlingperlespakket` (
  `Id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `LesPakketId` int(3) UNSIGNED NOT NULL,
  `LeerlingId` int(3) UNSIGNED NOT NULL,
  `StartDatumRijlessen` date DEFAULT NULL,
  `DatumRijbewijsBehaald` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `LesPakketId` (`LesPakketId`),
  KEY `LeerlingId` (`LeerlingId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `leerlingperlespakket`
--

INSERT INTO `leerlingperlespakket` (`Id`, `LesPakketId`, `LeerlingId`, `StartDatumRijlessen`, `DatumRijbewijsBehaald`) VALUES
(1, 1, 5, '2023-05-23', NULL),
(2, 4, 1, '2022-06-03', '2022-08-05'),
(3, 1, 1, '2023-06-02', NULL),
(4, 3, 4, '2023-01-01', NULL),
(5, 1, 2, '2022-11-30', '2023-05-23'),
(6, 2, 3, '2022-06-06', '2023-06-06');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lespakket`
--

DROP TABLE IF EXISTS `lespakket`;
CREATE TABLE IF NOT EXISTS `lespakket` (
  `Id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PakketNaam` varchar(50) NOT NULL,
  `AantalLessen` int(5) NOT NULL,
  `Rijbewijscategorie` varchar(50) NOT NULL,
  `Prijs` int(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lespakket`
--

INSERT INTO `lespakket` (`Id`, `PakketNaam`, `AantalLessen`, `Rijbewijscategorie`, `Prijs`) VALUES
(1, 'Personenauto Extra', 40, 'B', 2700),
(2, 'Vrachtwagen Subliem', 60, 'C', 5400),
(3, 'Bus Extraordinaire', 80, 'D', 7300),
(4, 'Bromfiets Deluxe', 10, 'AM', 230);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `leerlingperlespakket`
--
ALTER TABLE `leerlingperlespakket`
  ADD CONSTRAINT `leerlingperlespakket_ibfk_1` FOREIGN KEY (`LesPakketId`) REFERENCES `lespakket` (`Id`),
  ADD CONSTRAINT `leerlingperlespakket_ibfk_2` FOREIGN KEY (`LeerlingId`) REFERENCES `leerling` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
