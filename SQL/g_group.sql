/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:35:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group`
-- ----------------------------
DROP TABLE IF EXISTS `g_group`;
CREATE TABLE `g_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` char(255) DEFAULT NULL COMMENT '小组自定义url',
  `name` char(255) NOT NULL COMMENT '小组名字',
  `master_id` int(11) NOT NULL COMMENT '小组长Id',
  `icon` char(255) NOT NULL DEFAULT 'defined.png' COMMENT '小组图标',
  `gclass`  int(11) NOT NULL COMMENT '小组的分类，类别',


  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group
-- ----------------------------
