/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:38:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_new_group`
-- ----------------------------
DROP TABLE IF EXISTS `g_new_group`;
CREATE TABLE `g_new_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL COMMENT '小组名字',
  `tags` char(255) DEFAULT NULL COMMENT '标签,未处理的',
  `about` varchar(255) DEFAULT NULL COMMENT '小组简介',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '小组加入类型，0普通，1审核，2，邀请',
  `master_id` int(11) NOT NULL COMMENT '组长ID',
  `date` int(11) NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_new_group
-- ----------------------------
