/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : incidentdb

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2018-03-11 04:28:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `emergency`
-- ----------------------------
DROP TABLE IF EXISTS `emergency`;
CREATE TABLE `emergency` (
  `EMERGENCYID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `PHONE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `LOCATION` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENTTYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMERGENCYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of emergency
-- ----------------------------

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `JOINING_DATE` date DEFAULT NULL,
  `SALARY` decimal(10,0) DEFAULT NULL,
  `SSN` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'baky', '2018-03-05', '10000', 'ssn00000001');
INSERT INTO `employee` VALUES ('3', 'baky', '2018-03-05', '10000', 'ssn00000001');
INSERT INTO `employee` VALUES ('5', 'baky', '2018-03-05', '10000', 'ssn00000001');

-- ----------------------------
-- Table structure for `incident`
-- ----------------------------
DROP TABLE IF EXISTS `incident`;
CREATE TABLE `incident` (
  `INCIDENTID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ITEMVALUE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENTDATE` date DEFAULT NULL,
  `REMARKS` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `LOCATION` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `TYPEID` int(11) DEFAULT NULL,
  `REPORTEDUSER` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `RESULT` varchar(600) COLLATE utf8_bin DEFAULT NULL,
  `SECURITYUSER` int(11) DEFAULT NULL,
  PRIMARY KEY (`INCIDENTID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of incident
-- ----------------------------
INSERT INTO `incident` VALUES ('1', 'OPENED', '1000', '2018-03-05', 'etsar2t', 'MUM', '1', 'aabdelmohsen@mum', null, null);
INSERT INTO `incident` VALUES ('2', 'OPENED', '1000', '2018-03-05', 'etsar2t', 'MUM', '1', 'aabdelmohsen@mum', null, null);
INSERT INTO `incident` VALUES ('3', 'OPENED', '1000', '2018-03-06', 'my mobile was stolen from me ', 'MUM', '2', 'aabdelmohsen@mum', null, null);
INSERT INTO `incident` VALUES ('4', 'Initiated', '123', '2018-03-15', 'asdasda', 'asdadsa', '1', 'youssef@mum.edu', null, null);
INSERT INTO `incident` VALUES ('5', 'Closed', '1200', '2018-03-07', 'fuck to all of you', 'argiro dinning hall', '1', 'youssef@mum.edu', 'Closed', '1');
INSERT INTO `incident` VALUES ('6', 'Initiated', '12321', '2018-03-07', '', '', '2', 'youssef@mum.edu', null, null);

-- ----------------------------
-- Table structure for `incidenttype`
-- ----------------------------
DROP TABLE IF EXISTS `incidenttype`;
CREATE TABLE `incidenttype` (
  `TYPEID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPENAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TYPEID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of incidenttype
-- ----------------------------
INSERT INTO `incidenttype` VALUES ('1', 'Theft');
INSERT INTO `incidenttype` VALUES ('2', 'Complain');

-- ----------------------------
-- Table structure for `note`
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `NOTEID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTEBODY` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENTID` int(11) DEFAULT NULL,
  `USER` int(11) DEFAULT NULL,
  PRIMARY KEY (`NOTEID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('1', 'Starting', '5', '1');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `QUESTIONID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTIONTEXT` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `TYPEID` int(11) DEFAULT NULL,
  PRIMARY KEY (`QUESTIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'Where its happened?', '1');
INSERT INTO `question` VALUES ('2', 'When its happened?', '1');
INSERT INTO `question` VALUES ('3', 'What\'s your complain?', '2');
INSERT INTO `question` VALUES ('4', 'What\'s the target person?', '2');

-- ----------------------------
-- Table structure for `questionanswer`
-- ----------------------------
DROP TABLE IF EXISTS `questionanswer`;
CREATE TABLE `questionanswer` (
  `QAID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTIONBODY` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `ANSWERBODY` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENTID` int(11) DEFAULT NULL,
  PRIMARY KEY (`QAID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of questionanswer
-- ----------------------------
INSERT INTO `questionanswer` VALUES ('1', 'Where its happened?', 'ad', '4');
INSERT INTO `questionanswer` VALUES ('2', 'When its happened?', 'asd', '4');
INSERT INTO `questionanswer` VALUES ('3', 'Where its happened?', '2tsaraaaaaaaaaaaaa2t feh el argiro', '5');
INSERT INTO `questionanswer` VALUES ('4', 'When its happened?', 'today at breakfast', '5');
INSERT INTO `questionanswer` VALUES ('5', 'What\'s your complain?', 'sdfas', '6');
INSERT INTO `questionanswer` VALUES ('6', 'What\'s the target person?', 'asd', '6');

-- ----------------------------
-- Table structure for `requestmoreinfo`
-- ----------------------------
DROP TABLE IF EXISTS `requestmoreinfo`;
CREATE TABLE `requestmoreinfo` (
  `RMINFOID` int(11) NOT NULL AUTO_INCREMENT,
  `REQUESTBODY` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTANSWER` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENTID` int(11) DEFAULT NULL,
  `USER` int(11) DEFAULT NULL,
  `ASNWEREDORNOT` bit(1) DEFAULT NULL,
  PRIMARY KEY (`RMINFOID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of requestmoreinfo
-- ----------------------------
INSERT INTO `requestmoreinfo` VALUES ('1', 'Tell me more?', null, '5', '1', '');
INSERT INTO `requestmoreinfo` VALUES ('2', 'Ok what\'s happened in detailed?', 'ay 7aga', '5', '1', '');
INSERT INTO `requestmoreinfo` VALUES ('3', 'asda', null, '5', '1', '');

-- ----------------------------
-- Table structure for `suspect`
-- ----------------------------
DROP TABLE IF EXISTS `suspect`;
CREATE TABLE `suspect` (
  `SUSPECTID` int(11) NOT NULL AUTO_INCREMENT,
  `SUSPECTNAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENTID` int(11) DEFAULT NULL,
  `USER` int(11) DEFAULT NULL,
  PRIMARY KEY (`SUSPECTID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of suspect
-- ----------------------------
INSERT INTO `suspect` VALUES ('1', 'Hazem', '5', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'ahmed', 'security');
