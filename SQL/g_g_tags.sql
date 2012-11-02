/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:34:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_g_tags`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_tags`;
CREATE TABLE `g_g_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签Id',
  `name` char(21) NOT NULL COMMENT '标签名字',
  `date` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_tags
-- ----------------------------
