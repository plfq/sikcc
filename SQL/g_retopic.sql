/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:38:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_retopic_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_0`;
CREATE TABLE `g_retopic_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_1`;
CREATE TABLE `g_retopic_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_1
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_2`;
CREATE TABLE `g_retopic_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_3`;
CREATE TABLE `g_retopic_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_4`;
CREATE TABLE `g_retopic_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_5`;
CREATE TABLE `g_retopic_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_6`;
CREATE TABLE `g_retopic_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_7`;
CREATE TABLE `g_retopic_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_8`;
CREATE TABLE `g_retopic_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_9`;
CREATE TABLE `g_retopic_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_9
-- ----------------------------
