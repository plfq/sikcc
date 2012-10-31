/*
Navicat MySQL Data Transfer

用户扩展信息表

Date: 2012-10-24 21:51:21
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
