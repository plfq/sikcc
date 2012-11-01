/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-01 08:53:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_topic_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_0`;
CREATE TABLE `g_topic_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_1`;
CREATE TABLE `g_topic_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_1
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_2`;
CREATE TABLE `g_topic_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_3`;
CREATE TABLE `g_topic_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_4`;
CREATE TABLE `g_topic_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_5`;
CREATE TABLE `g_topic_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_6`;
CREATE TABLE `g_topic_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_7`;
CREATE TABLE `g_topic_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_8`;
CREATE TABLE `g_topic_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_9`;
CREATE TABLE `g_topic_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_9
-- ----------------------------
