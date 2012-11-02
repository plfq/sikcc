/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:32:56
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for `g_message_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_2`;
CREATE TABLE `g_message_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_3`;
CREATE TABLE `g_message_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_4`;
CREATE TABLE `g_message_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_5`;
CREATE TABLE `g_message_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_6`;
CREATE TABLE `g_message_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_7`;
CREATE TABLE `g_message_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_8`;
CREATE TABLE `g_message_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_9`;
CREATE TABLE `g_message_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_9
-- ----------------------------
