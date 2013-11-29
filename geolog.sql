SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `geolog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `device` varchar(200) DEFAULT NULL,
  `locationid` varchar(200) DEFAULT '',
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `trigger` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
