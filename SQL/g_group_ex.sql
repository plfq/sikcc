/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:35:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_ex`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_ex`;
CREATE TABLE `g_group_ex` (
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `join` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_ex
-- ----------------------------
