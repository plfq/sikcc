/*
Navicat MySQL Data Transfer

小组成员表，记录小组与成员关系

Date: 2012-10-24 21:50:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_member_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_0`;
CREATE TABLE `g_member_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_1`;
CREATE TABLE `g_member_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_1
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_2`;
CREATE TABLE `g_member_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_3`;
CREATE TABLE `g_member_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_4`;
CREATE TABLE `g_member_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_5`;
CREATE TABLE `g_member_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_6`;
CREATE TABLE `g_member_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_7`;
CREATE TABLE `g_member_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_8`;
CREATE TABLE `g_member_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_9`;
CREATE TABLE `g_member_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_9
-- ----------------------------
