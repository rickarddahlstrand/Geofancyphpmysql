SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `actions`;
CREATE TABLE `actions` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `desc` varchar(200) DEFAULT NULL,
  `enabled` int(1) DEFAULT '0',
  `device` varchar(200) DEFAULT NULL,
  `lastexec` datetime DEFAULT NULL,
  `locationid` varchar(200) DEFAULT NULL,
  `trigger` varchar(20) DEFAULT NULL,
  `connectiontype` varchar(20) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `postdata` varchar(200) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pubkey` varchar(50) DEFAULT NULL,
  `privkey` varchar(50) DEFAULT NULL,
  `privkeypass` varchar(50) DEFAULT NULL,
  `cmd` varchar(200) DEFAULT NULL,
  `expreturn` varchar(200) DEFAULT NULL,
  `onfail` varchar(200) DEFAULT NULL,
  `onsuccess` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `actions`
-- ----------------------------
BEGIN;
INSERT INTO `actions` VALUES ('1', 'Touch a file on homeserver on enter..', '1', '00000000-0000-0000-0000-000000000000', null, 'home', 'enter', 'ssh', 'server.home.com', null, '22', 'root', '/.ssh/id_rsa.pub', '/.ssh/id_rsa', null, 'touch test.tmp;ls -la', 'est.tmp', 'ssh didnt work..', 'ssh worked..'), ('2', 'Send pushover to wife when I\'m home', '1', '00000000-0000-0000-0000-000000000000', null, 'home', 'enter', 'http', 'https://api.pushover.net/1/messages.json', 'token=XXXXXXXXXXXXXXXXXXXXXX&user=XXXXXXXXXXXXXXXXXXXXXXX&sound=pushover&message=Rickard%20is%20home%21', null, null, null, null, null, null, 'tatus\":1', 'Pushover dont work..', 'she knows..'), ('3', 'Send pushover to wife when I leave home', '1', '00000000-0000-0000-0000-000000000000', null, 'home', 'exit', 'http', 'https://api.pushover.net/1/messages.json', 'token=XXXXXXXXXXXXXXXXXXXXXXXXXXXXX&user=XXXXXXXXXXXXXXXXXXXXXX&sound=pushover&message=Rickard%20has%20left%20home', null, null, null, null, null, null, 'tatus\":1', 'Pushover dont work..', 'she knows..');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
