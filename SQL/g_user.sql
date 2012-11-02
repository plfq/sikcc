/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-02 18:40:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_user`
-- ----------------------------
DROP TABLE IF EXISTS `g_user`;
CREATE TABLE `g_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `url` char(255) DEFAULT NULL COMMENT '个性url',
  `name` char(255) NOT NULL COMMENT '用户昵称',
  `email` char(255) NOT NULL COMMENT '登陆邮箱',
  `password` char(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_user
-- ----------------------------

