/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:35:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_topic_type`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_topic_type`;
CREATE TABLE `g_group_topic_type` (
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `topic_type_1` int(11) NOT NULL DEFAULT '0',
  `topic_type_2` int(11) NOT NULL DEFAULT '0',
  `topic_type_3` int(11) NOT NULL DEFAULT '0',
  `topic_type_4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_topic_type
-- ----------------------------

