CREATE DATABASE IF NOT EXISTS `wordbank`;
USE `wordbank`;

DROP TABLE IF EXISTS `words`;
DROP TABLE IF EXISTS `tags`;
DROP TABLE IF EXISTS `tags_to_words`;

CREATE TABLE words (
	word_id int(11) AUTO_INCREMENT PRIMARY KEY, 
	word varchar(50) NOT NULL,
	pair varchar(50)
);

CREATE TABLE tags (
	tag_id int(11) AUTO_INCREMENT PRIMARY KEY,
	tag varchar(50) NOT NULL UNIQUE
);

CREATE TABLE tags_to_words (
	tag_id int(11),
	word_id int(11),
	
	FOREIGN KEY (tag_id) REFERENCES tags(tag_Id),
	FOREIGN KEY (word_id) REFERENCES words(word_Id)
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

INSERT INTO `tags` (`tag`) VALUES ("Verb");
INSERT INTO `tags` (`tag`) VALUES ("Trait");
INSERT INTO `tags` (`tag`) VALUES ("Emotion");
INSERT INTO `tags` (`tag`) VALUES ("Thing");
INSERT INTO `tags` (`tag`) VALUES ("Clothing");

INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (2,1);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (2,2);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (3,2);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (2,3);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (3,3);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (2,4);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (2,5);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (2,6);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (2,7);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (4,8);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (5,8);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (2,9);
INSERT INTO `tags_to_words` (`tag_id`, `word_id`) VALUES (1,10);

