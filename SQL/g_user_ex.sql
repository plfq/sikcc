/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:40:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_user_ex`
-- ----------------------------
DROP TABLE IF EXISTS `g_user_ex`;
CREATE TABLE `g_user_ex` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `is_not_say` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被禁止发言',
  `regdate` int(11) NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_user_ex
-- ----------------------------

