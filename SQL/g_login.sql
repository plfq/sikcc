/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:35:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_login_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_login_1`;
CREATE TABLE `g_login_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '登陆日志，计数',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `login_date` int(11) NOT NULL COMMENT '登陆时间',
  `login_ip` char(255) NOT NULL COMMENT '登陆IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_login_1
-- ----------------------------

