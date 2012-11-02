/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:38:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_not_say`
-- ----------------------------
DROP TABLE IF EXISTS `g_not_say`;
CREATE TABLE `g_not_say` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `remark` char(255) DEFAULT NULL COMMENT '备注，禁止发言备注',
  `admin` int(11) NOT NULL COMMENT '禁言操作的管理员',
  `date` int(11) NOT NULL COMMENT '禁言时间',
  `long` int(11) NOT NULL DEFAULT '0' COMMENT '被禁言时长',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_not_say
-- ----------------------------
