/*
Navicat MySQL Data Transfer

用户表

Date: 2012-10-24 21:51:14
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
