/*
Navicat MySQL Data Transfer

申请创建的小组信息，后台查看

Date: 2012-10-24 21:50:53
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_new_group
-- ----------------------------
