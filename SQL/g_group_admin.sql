/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:35:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_admin`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_admin`;
CREATE TABLE `g_group_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `master` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是组长',
  `date` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_admin
-- ----------------------------
