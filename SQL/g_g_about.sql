/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:34:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_g_about`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_about`;
CREATE TABLE `g_g_about` (
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `about` text COMMENT '简介内容',
  `date` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_about
-- ----------------------------
