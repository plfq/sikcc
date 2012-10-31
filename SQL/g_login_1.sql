/*
Navicat MySQL Data Transfer

登陆日志表，记录成员的登陆日志

Date: 2012-10-24 21:50:11
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

