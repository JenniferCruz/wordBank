CREATE DATABASE IF NOT EXISTS `wordbank`;
USE `wordbank`;

DROP TABLE IF EXISTS `words`;

CREATE TABLE words (
	wID int(11) AUTO_INCREMENT PRIMARY KEY, 
	word varchar(50) NOT NULL,
	pair varchar(50)
);

INSERT INTO `words` (`word`, `pair`) VALUES ("Wadded", "arrugado");
INSERT INTO `words` (`word`, `pair`) VALUES ("Stifling", "sofocante");
INSERT INTO `words` (`word`, `pair`) VALUES ("Wiry", "nervioso");
INSERT INTO `words` (`word`, `pair`) VALUES ("Sideburns", "Patillas");
INSERT INTO `words` (`word`, `pair`) VALUES ("Gumption", "Listeza");
INSERT INTO `words` (`word`, `pair`) VALUES ("Squat", "Rechoncho");
INSERT INTO `words` (`word`, `pair`) VALUES ("Natty", "Acicalado o coquetón");
INSERT INTO `words` (`word`, `pair`) VALUES ("Beret", "boina");
INSERT INTO `words` (`word`, `pair`) VALUES ("boisterous", "bullicioso");
INSERT INTO `words` (`word`, `pair`) VALUES ("Bray", "rebuznar");