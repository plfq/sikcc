/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:35:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_topic_type_name`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_topic_type_name`;
CREATE TABLE `g_group_topic_type_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(21) NOT NULL COMMENT '帖子分类的名字',
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_topic_type_name
-- ----------------------------
