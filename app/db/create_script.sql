-- Check if the database exists
DROP DATABASE IF EXISTS `mvc2209aHERKP4toets`;

-- Create a new Database
CREATE DATABASE IF NOT EXISTS `mvc2209aHERKP4toets`;

USE mvc2209aHERKP4toets;

DROP TABLE IF EXISTS `LeerlingPerLesPakket`;
DROP TABLE IF EXISTS `Leerling`;
DROP TABLE IF EXISTS `LesPakket`;

CREATE TABLE IF NOT EXISTS `Leerling` (
  `Id` INT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Voornaam` VARCHAR(60) NOT NULL,
  `Tussenvoegsel` VARCHAR(10),
  `Achternaam` VARCHAR(60) NOT NULL,
  `Mobiel` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Leerling
(
     Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Mobiel
)
VALUES
     ('Bas', 'De', 'Bakker', '06-28493827'),
    ('Terence', '', 'Draaijer', '06-39398734'),
    ('Samuel', '', 'Werchter', '06-24383291'),
    ('Sharida', '', 'Tetehuka', '06-48293823'),
    ('Fatima', '', 'Yilmaz', '06-34291234');
    
CREATE TABLE IF NOT EXISTS `LesPakket` (
  `Id` INT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PakketNaam` VARCHAR(50) NOT NULL,
  `AantalLessen` INT(5) NOT NULL,
  `Rijbewijscategorie` VARCHAR(50) NOT NULL,
  `Prijs` INT(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO LesPakket
(
     PakketNaam
    ,AantalLessen
    ,Rijbewijscategorie
    ,Prijs
)
VALUES
     ('Personenauto Extra', '40', 'B', '2700'),
     ('Vrachtwagen Subliem', '60', 'C', '5400'),
     ('Bus Extraordinaire', '80', 'D', '7300'),
     ('Bromfiets Deluxe', '10', 'AM', '230');

CREATE TABLE IF NOT EXISTS `LeerlingPerLesPakket` (
  `Id` INT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `LesPakketId` INT(3) UNSIGNED NOT NULL,
  `LeerlingId` INT(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`LesPakketId`) REFERENCES `LesPakket`(`Id`),
  FOREIGN KEY (`LeerlingId`) REFERENCES `Leerling`(`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO LeerlingPerLesPakket
(
     LesPakketId
    ,LeerlingId
)
VALUES
     ('1', '5'),
    ('4', '1'),
    ('1', '1'),
    ('3', '4'),
    ('1', '2'),
    ('2', '3');
