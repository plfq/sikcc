/*
Navicat MySQL Data Transfer

纸条（消息）表，保存纸条相关

Date: 2012-10-24 21:50:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_message_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_0`;
CREATE TABLE `g_message_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_1`;
CREATE TABLE `g_message_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_1
-- ----------------------------
