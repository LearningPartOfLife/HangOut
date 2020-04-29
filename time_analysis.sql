/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : time_analysis

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-01-28 10:02:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `unid` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `datatime` varchar(30) DEFAULT NULL COMMENT 'å‘å¸ƒæ—¶é—´',
  `createtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dataaddress` varchar(255) DEFAULT NULL,
  `datapoint` varchar(255) DEFAULT NULL COMMENT 'åæ ‡',
  `publishaddress` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `isshow` tinyint(4) DEFAULT '0' COMMENT 'æ˜¯å¦æ˜¾ç¤º',
  `username` varchar(100) DEFAULT NULL COMMENT 'å‘å¸ƒäºº',
  `phone` varchar(20) DEFAULT NULL,
  `zan` int(11) unsigned DEFAULT '0',
  `cai` int(11) unsigned DEFAULT '0',
  `comment` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`unid`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('72', 'ä¸å¯‚å¯ž', 'éœ€è¦æ‰“å°ä¹ˆï¼Œæˆ‘æœ‰ï¼', ' 2017-11-11 10:10', '2017-11-16 19:46:03', 'ç¦å»ºçœç¦å·žå¸‚é—½ä¾¯åŽ¿', '{\"longitude\":119.2543411254883,\"latitude\":26.1142520904541}', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0713.JPG', '1', 'zzz', '17689963810', '8', '5', '0');
INSERT INTO `activity` VALUES ('74', 'å¤´åƒä¸Šä¼ ', 'éœ€è¦æ‰“å°ä¹ˆï¼Œæˆ‘æœ‰ï¼', ' 2017-11-11 11:31', '2017-11-16 14:48:41', 'ç¦å»ºçœç¦å·žå¸‚é¼“æ¥¼åŒºæ¨æ¡¥è¥¿è·¯118å·', '{\"longitude\":119.2713623046875,\"latitude\":26.08293724060059}', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0242.JPG', '1', 'zzz', '17689963810', '4', '7', '0');
INSERT INTO `activity` VALUES ('81', 'ä»€ä¹ˆæƒ…å†µ', 'æ¥ä¸€æ¬¡è¯´èµ°å°±èµ°çš„æ—…è¡Œï¼Œå¦‚ä½•ï¼Ÿ', ' 2017-11-15 15:15', '2017-11-16 14:48:43', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0841.JPG', '1', 'zzz', '17689963818', '1', '1', '0');
INSERT INTO `activity` VALUES ('87', 'åèª‰è¯ºåŸºäºšå’¯å’¯', 'å…¬ä¸»å±‹', ' 2017-11-13 21:06', '2017-11-25 11:08:02', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0460.JPG', '1', 'llb', '17689963810', '2', '0', '0');
INSERT INTO `activity` VALUES ('93', 'æµ‹è¯•bug', 'è¦ä¸ï¼Œä»Šå¤©åŽ»ä¸‰åŠä¸ƒå··ã€‚', ' 2017-11-14 14:38', '2017-11-16 14:48:47', 'ç¦å»ºçœç¦å·žå¸‚é—½ä¾¯åŽ¿X115(æ´ªç”˜è·¯)', '{\"longitude\":119.2517776489258,\"latitude\":26.1047534942627}', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0060.JPG', '1', 'llb', '17689963810', '1', '0', '0');
INSERT INTO `activity` VALUES ('94', 'ç¦å·žå¤§å­¦çº¦å®š', 'éœ€è¦æ‰“å°ä¹ˆï¼Œæˆ‘æœ‰ï¼', ' 2017-11-14 14:43', '2017-11-16 14:48:48', 'ç¦å»ºçœç¦å·žå¸‚é¼“æ¥¼åŒºé»Žæ˜Žå•†åœˆå·¥ä¸šè·¯543å·', '{\"longitude\":119.2814025878906,\"latitude\":26.08135604858398}', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0664.JPG', '1', 'llb', '17689963810', '2', '0', '0');
INSERT INTO `activity` VALUES ('95', 'å“ˆèŽ‰å¥ŽèŒµæ´ªç ´å', 'æ¥ä¸€æ¬¡è¯´èµ°å°±èµ°çš„æ—…è¡Œï¼Œå¦‚ä½•ï¼Ÿ', ' 2017-11-14 15:19', '2017-11-16 14:48:49', 'çº¿ä¸Šç›¸çº¦', '{\"longitude\":119.2814025878906,\"latitude\":26.08135604858398}', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0748.PNG', '1', 'llb', '17689963810', '2', '0', '0');
INSERT INTO `activity` VALUES ('96', 'llbå‘å¸ƒæ´»åŠ¨zzzå‚åŠ ..llbå°†èŽ·å¾—ä¸€æ¡å‚åŠ è®°å½•', 'è¦ä¸ï¼Œä»Šå¤©åŽ»ä¸‰åŠä¸ƒå··ã€‚', ' 2017-11-14 20:10', '2017-11-16 14:48:51', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0725.JPG', '1', 'llb', '17689963810', '3', '1', '0');
INSERT INTO `activity` VALUES ('97', 'æ™šä¸Šå°æ´»åŠ¨', 'éœ€è¦æ‰“å°ä¹ˆï¼Œæˆ‘æœ‰ï¼', ' 2017-11-14 23:42', '2017-11-16 14:48:52', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šæ‘©å®žè¾¾', 'IMG_0800.JPG', '1', 'åœ¨æ ¡æ†¨ç”Ÿ', '17689963810', '2', '0', '0');
INSERT INTO `activity` VALUES ('101', 'å¡å˜‰èŽ‰å¹¶å¯¹', 'éœ€è¦æ‰“å°ä¹ˆï¼Œæˆ‘æœ‰ï¼', ' 2017-11-16 14:51', '2017-12-22 14:35:00', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0466.JPG', '1', 'åœ¨æ ¡æ†¨ç”Ÿ', '17689963810', '1', '1', '15');
INSERT INTO `activity` VALUES ('112', 'è€é©´å¤´å± é¾™è®°', 'éœ€è¦æ‰“å°ä¹ˆï¼Œæˆ‘æœ‰ï¼', ' 2017-11-23 09:34', '2017-12-11 08:55:05', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0890.PNG', '2', 'zzz', '17689963810', '0', '0', '0');
INSERT INTO `activity` VALUES ('113', 'éš†éš†éš†', 'éœ€è¦æ‰“å°ä¹ˆï¼Œæˆ‘æœ‰ï¼', ' 2017-11-23 09:38', '2017-11-23 09:33:05', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0877.JPG', '0', 'test', '17689963358', '0', '0', '0');
INSERT INTO `activity` VALUES ('114', 'è¾£ä¹ˆè´µå¿ƒ', 'éœ€è¦æ‰“å°ä¹ˆï¼Œæˆ‘æœ‰ï¼', '2017-12-04 16:38', '2017-12-04 16:16:40', 'ç¦å»ºçœç¦å·žå¸‚é¼“æ¥¼åŒºæ•°å­—è·¯', '{\"longitude\":119.2694473266602,\"latitude\":26.11210250854492}', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_0723.JPG', '0', 'zzz', '17689963816', '0', '0', '0');
INSERT INTO `activity` VALUES ('115', 'å…¬å¸é™„è¿‘äº†', 'å£å¯å£å¯å’¯', ' 2017-12-11 08:56', '2017-12-11 08:57:39', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šæ³‰å·žç”µé•€åŽ‚', 'IMG_0967.PNG', '1', 'zzz', '17689963810', '0', '0', '0');
INSERT INTO `activity` VALUES ('116', 'æ¶ˆæ¯æŽ¨é€æµ‹è¯•', 'è¦ä¸ï¼Œä»Šå¤©åŽ»ä¸‰åŠä¸ƒå··ã€‚', ' 2018-01-05 08:57', '2018-01-05 09:00:13', 'ç¦å»ºçœæ³‰å·žå¸‚ä¸°æ³½åŒºç»ä¸‰è·¯', '{\"longitude\":118.6425323486328,\"latitude\":24.87945556640625}', 'æˆ‘åœ¨ï¼šåŽåŽè·¯', 'IMG_1044.JPG', '1', 'zzz', '17689963810', '1', '0', '0');
INSERT INTO `activity` VALUES ('117', 'ggfffc', 'qqqqqqè¦ä¸ï¼Œä»Šå¤©åŽ»ä¸‰åŠä¸ƒå··ã€‚', ' 2018-01-22 21:02', '2018-01-22 22:49:06', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', '2C8E38AD-C8FD-402E-9A05-EF45A1DDEEBC-39270-00001A9ABA2BC58A_tmp[1].jpg', '1', 'çŸ³ä½³é‘«å°æœ‹å‹', '17689963810', '1', '0', '0');
INSERT INTO `activity` VALUES ('118', 'å®¶é‡Œä»Šå¤©æ˜¯', 'è¦ä¸ï¼Œä»Šå¤©åŽ»ä¸‰åŠä¸ƒå··ã€‚', '2018-01-22 22:11', '2018-01-23 10:12:04', 'çº¿ä¸Šç›¸çº¦', '', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', '7644E08E-46C8-4D69-B6E3-5CE229A01624-31325-0000156D36960AF4_tmp.jpg', '1', 'test1', '17689963810', '2', '0', '3');
INSERT INTO `activity` VALUES ('119', 'å¯å£å¯ä¹äº†äº†', 'è¦ä¸ï¼Œä»Šå¤©åŽ»ä¸‰åŠä¸ƒå··ã€‚', ' 2018-01-23 10:08', '2018-01-23 10:09:03', 'ç¦å»ºçœç¦å·žå¸‚é—½ä¾¯åŽ¿æ•°å­—è·¯', '{\"longitude\":119.2686004638672,\"latitude\":26.11153793334961}', 'æˆ‘åœ¨ï¼šç¦å»ºå·¥ç¨‹å­¦é™¢è½¯ä»¶å­¦é™¢(é“œç›˜æ ¡åŒº)', 'IMG_1077[1].JPG', '1', '111111', '17689963810', '0', '0', '0');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `unid` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('101', 'test', 'æŒºç‰›å…¬äº¤æ˜Žæ˜Ž', '2017/11/16 ä¸‹åˆ7:44:09');
INSERT INTO `comment` VALUES ('101', 'zzz', '5å¡å…«å¤©äº†å’¯ä¹ˆ', '2017/11/17 ä¸‹åˆ3:26:24');
INSERT INTO `comment` VALUES ('111', 'zzz', 'å®¶é‡Œå¼€ç©ºè°ƒ', '2017/11/23 ä¸‹åˆ12:17:20');
INSERT INTO `comment` VALUES ('116', 'zzz', 'éš†éš†éš†æ‹’ç»', '2017/11/23 ä¸‹åˆ12:19:55');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å‡ å¥è¯5ç±³æ•æ•', '2017/11/25 ä¸‹åˆ10:06:38');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:19');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:19');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:20');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:20');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:25');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:25');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:26');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:27');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:27');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:28');
INSERT INTO `comment` VALUES ('101', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2017/12/22 ä¸‹åˆ2:34:28');
INSERT INTO `comment` VALUES ('101', 'zzz', 'è€ƒè™‘è€ƒè™‘æ¬§ç¼‡ä¸½', '2017/12/22 ä¸‹åˆ2:34:54');
INSERT INTO `comment` VALUES ('101', 'zzz', 'è€ƒè™‘è€ƒè™‘æ¬§ç¼‡ä¸½', '2017/12/22 ä¸‹åˆ2:34:52');
INSERT INTO `comment` VALUES ('118', 'test1', '5å¥å¤ªå¯æ€œäº†', '2018/1/22 ä¸‹åˆ10:38:00');
INSERT INTO `comment` VALUES ('118', 'test1', 'æµé‡ç›‘æŽ§äº†', '2018/1/22 ä¸‹åˆ10:38:16');
INSERT INTO `comment` VALUES ('118', 'zzz', 'å¥å¥åº·åº·å¥å¥åº·åº·', '2018/1/23 ä¸Šåˆ10:12:05');

-- ----------------------------
-- Table structure for dian_zan
-- ----------------------------
DROP TABLE IF EXISTS `dian_zan`;
CREATE TABLE `dian_zan` (
  `username` varchar(30) NOT NULL,
  `unid` int(11) NOT NULL,
  `zan` tinyint(4) DEFAULT NULL,
  `cai` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dian_zan
-- ----------------------------
INSERT INTO `dian_zan` VALUES ('zzz', '74', null, '1');
INSERT INTO `dian_zan` VALUES ('zzz', '72', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '64', null, '1');
INSERT INTO `dian_zan` VALUES ('zzz', '65', '1', null);
INSERT INTO `dian_zan` VALUES ('null', '74', '1', null);
INSERT INTO `dian_zan` VALUES ('123', '74', null, '1');
INSERT INTO `dian_zan` VALUES ('123', '72', null, '1');
INSERT INTO `dian_zan` VALUES ('zzz', '81', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '67', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '83', null, '1');
INSERT INTO `dian_zan` VALUES ('', '0', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '85', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '86', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '86', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '72', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '67', null, '1');
INSERT INTO `dian_zan` VALUES ('llb', '74', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '87', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '91', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '93', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '85', null, '1');
INSERT INTO `dian_zan` VALUES ('llb', '83', null, '1');
INSERT INTO `dian_zan` VALUES ('llb', '81', null, '1');
INSERT INTO `dian_zan` VALUES ('llb', '65', null, '1');
INSERT INTO `dian_zan` VALUES ('llb', '64', null, '1');
INSERT INTO `dian_zan` VALUES ('llb', '94', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '95', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '95', '1', null);
INSERT INTO `dian_zan` VALUES ('llb', '96', '1', null);
INSERT INTO `dian_zan` VALUES ('null', '96', null, '1');
INSERT INTO `dian_zan` VALUES ('zzz', '96', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '94', '1', null);
INSERT INTO `dian_zan` VALUES ('test', '96', '1', null);
INSERT INTO `dian_zan` VALUES ('åœ¨æ ¡æ†¨ç”Ÿ', '97', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '97', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '98', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '90', '1', null);
INSERT INTO `dian_zan` VALUES ('test', '102', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '102', '1', null);
INSERT INTO `dian_zan` VALUES ('test', '105', '1', null);
INSERT INTO `dian_zan` VALUES ('test', '101', '1', null);
INSERT INTO `dian_zan` VALUES ('test', '72', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '106', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '101', null, '1');
INSERT INTO `dian_zan` VALUES ('zzz', '111', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '115', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '116', null, '1');
INSERT INTO `dian_zan` VALUES ('zzz', '87', '1', null);
INSERT INTO `dian_zan` VALUES ('åœ¨æ ¡æ†¨ç”Ÿ', '116', '1', null);
INSERT INTO `dian_zan` VALUES ('test1', '118', '1', null);
INSERT INTO `dian_zan` VALUES ('test1', '117', '1', null);
INSERT INTO `dian_zan` VALUES ('zzz', '118', '1', null);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `username` varchar(30) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isread` tinyint(4) unsigned DEFAULT '0',
  KEY `username1` (`username`),
  CONSTRAINT `username1` FOREIGN KEY (`username`) REFERENCES `user_info` (`USERNAME`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('llb', 'llb', '2017/11/14 ä¸‹åˆ8:00:08', '0');
INSERT INTO `message` VALUES ('llb', 'zzz', '2017/11/14 ä¸‹åˆ8:12:45', '0');
INSERT INTO `message` VALUES ('llb', 'null', '2017/11/14 ä¸‹åˆ8:15:32', '0');
INSERT INTO `message` VALUES ('llb', 'zzz', '2017/11/14 ä¸‹åˆ8:28:27', '0');
INSERT INTO `message` VALUES ('llb', 'test', '2017/11/14 ä¸‹åˆ8:36:18', '0');
INSERT INTO `message` VALUES ('åœ¨æ ¡æ†¨ç”Ÿ', 'zzz', '2017/11/15 ä¸Šåˆ8:43:19', '0');
INSERT INTO `message` VALUES ('zzz', 'zzz', '2017/11/16 ä¸‹åˆ2:17:05', '0');
INSERT INTO `message` VALUES ('åœ¨æ ¡æ†¨ç”Ÿ', 'åœ¨æ ¡æ†¨ç”Ÿ', '2017/11/16 ä¸‹åˆ2:55:56', '0');
INSERT INTO `message` VALUES ('åœ¨æ ¡æ†¨ç”Ÿ', 'åœ¨æ ¡æ†¨ç”Ÿ', '2017/11/16 ä¸‹åˆ3:09:26', '0');
INSERT INTO `message` VALUES ('test', 'test', '2017/11/16 ä¸‹åˆ3:43:53', '0');
INSERT INTO `message` VALUES ('zzz', 'zzz', '2017/11/23 ä¸‹åˆ12:20:49', '0');
INSERT INTO `message` VALUES ('åœ¨æ ¡æ†¨ç”Ÿ', 'zzz', '2017/11/25 ä¸‹åˆ10:29:38', '0');
INSERT INTO `message` VALUES ('zzz', 'zzz', '2017/12/11 ä¸Šåˆ8:58:26', '0');
INSERT INTO `message` VALUES ('zzz', 'åœ¨æ ¡æ†¨ç”Ÿ', '2018/1/5 ä¸Šåˆ9:00:15', '0');
INSERT INTO `message` VALUES ('zzz', 'test1', '2018/1/22 ä¸‹åˆ10:39:17', '0');
INSERT INTO `message` VALUES ('llb', 'test1', '2018/1/23 ä¸Šåˆ9:58:41', '0');
INSERT INTO `message` VALUES ('zzz', '111111', '2018/1/23 ä¸Šåˆ10:09:43', '0');

-- ----------------------------
-- Table structure for paticipate
-- ----------------------------
DROP TABLE IF EXISTS `paticipate`;
CREATE TABLE `paticipate` (
  `unid` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paticipate
-- ----------------------------
INSERT INTO `paticipate` VALUES ('85', 'zzz');
INSERT INTO `paticipate` VALUES ('83', 'zzz');
INSERT INTO `paticipate` VALUES ('81', 'zzz');
INSERT INTO `paticipate` VALUES ('86', 'llb');
INSERT INTO `paticipate` VALUES ('86', 'zzz');
INSERT INTO `paticipate` VALUES ('83', 'llb');
INSERT INTO `paticipate` VALUES ('64', 'llb');
INSERT INTO `paticipate` VALUES ('87', 'llb');
INSERT INTO `paticipate` VALUES ('85', 'llb');
INSERT INTO `paticipate` VALUES ('95', 'llb');
INSERT INTO `paticipate` VALUES ('95', 'zzz');
INSERT INTO `paticipate` VALUES ('94', 'llb');
INSERT INTO `paticipate` VALUES ('65', 'llb');
INSERT INTO `paticipate` VALUES ('93', 'llb');
INSERT INTO `paticipate` VALUES ('96', 'zzz');
INSERT INTO `paticipate` VALUES ('96', 'null');
INSERT INTO `paticipate` VALUES ('94', 'zzz');
INSERT INTO `paticipate` VALUES ('96', 'test');
INSERT INTO `paticipate` VALUES ('97', 'zzz');
INSERT INTO `paticipate` VALUES ('98', 'zzz');
INSERT INTO `paticipate` VALUES ('101', 'åœ¨æ ¡æ†¨ç”Ÿ');
INSERT INTO `paticipate` VALUES ('97', 'åœ¨æ ¡æ†¨ç”Ÿ');
INSERT INTO `paticipate` VALUES ('102', 'test');
INSERT INTO `paticipate` VALUES ('116', 'zzz');
INSERT INTO `paticipate` VALUES ('101', 'zzz');
INSERT INTO `paticipate` VALUES ('115', 'zzz');
INSERT INTO `paticipate` VALUES ('116', 'åœ¨æ ¡æ†¨ç”Ÿ');
INSERT INTO `paticipate` VALUES ('116', 'test1');
INSERT INTO `paticipate` VALUES ('95', 'test1');
INSERT INTO `paticipate` VALUES ('116', '111111');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `UNID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) DEFAULT '',
  `REALNAME` varchar(30) DEFAULT '',
  `PASSWORD` varchar(30) DEFAULT '',
  `HEAD_IMG` varchar(255) DEFAULT 'logo.png',
  `SEX` varchar(10) DEFAULT '',
  `age` int(11) DEFAULT NULL,
  `height` double DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT '',
  `ADDRESS` varchar(255) DEFAULT '',
  `phone` varchar(255) DEFAULT '',
  `PERSON_SIGN` varchar(255) DEFAULT '',
  `CREATE_TIME` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UNID`),
  KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('75', 'zzz', 'ä½ æ˜¯çŒªä¹ˆ', 'zzz', 'IMG_0242.JPG', 'å¥³', '12', '200', '', null, '17689963810', null, '2017-11-23 12:20:39');
INSERT INTO `user_info` VALUES ('78', 'llb', null, 'llb', 'IMG_0713.JPG', null, null, null, null, null, null, null, '2017-11-11 10:37:35');
INSERT INTO `user_info` VALUES ('84', 'test', null, 'test', 'logo.png', null, null, null, null, null, null, null, '2017-11-14 23:37:18');
INSERT INTO `user_info` VALUES ('86', 'åœ¨æ ¡æ†¨ç”Ÿ', 'æž—é‡Œæ–Œ', '123', 'photo_001.jpg', 'ç”·', '22', '175', '770502143', 'å•Šå“­å’¯é­”å›¾', '17689963810', 'æŠ•äº†ç®€åŽ†', '2017-11-25 22:15:24');
INSERT INTO `user_info` VALUES ('87', 'è°¢å—é¾™', 'nullå¿«æ¥äº†', '123', 'IMG_0877.JPG', 'ç”·çœ‹çœ‹', null, null, null, null, null, null, '2018-01-22 20:54:33');
INSERT INTO `user_info` VALUES ('88', 'é™ˆåŠ›å•¦å•¦å•¦', null, '123456', 'IMG_1067.JPG', null, null, null, null, null, null, null, '2018-01-22 20:39:12');
INSERT INTO `user_info` VALUES ('89', 'çŸ³ä½³é‘«å°æœ‹å‹', 'è¿‡å…³çŽ‡', '123456', '2C8E38AD-C8FD-402E-9A05-EF45A1DDEEBC-39270-00001A9ABA2BC58A_tmp.jpg', 'ç”·', '0', '180', '770502143@qq.com', 'å¬ä½ ', '17689963810', 'è€ƒè™‘è€ƒè™‘', '2018-01-22 22:16:23');
INSERT INTO `user_info` VALUES ('90', 'test1', '', '123456', 'photo_002.jpg', '', null, null, '', '', '', '', '2018-01-22 22:17:58');
INSERT INTO `user_info` VALUES ('91', '111111', 'è€ƒè™‘è€ƒè™‘', '111111', 'IMG_0875.JPG', 'ç”·', '15', null, '', '', '', '', '2018-01-23 10:07:26');
