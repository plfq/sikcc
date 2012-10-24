/*
Navicat MySQL Data Transfer

小组管理员表，记录小组的管理员信息

Date: 2012-10-24 21:48:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_admin`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_admin`;
CREATE TABLE `g_group_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `master` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是组长',
  `date` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_admin
-- ----------------------------
