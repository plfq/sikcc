/*
Navicat MySQL Data Transfer

小组表

Date: 2012-10-24 21:48:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group`
-- ----------------------------
DROP TABLE IF EXISTS `g_group`;
CREATE TABLE `g_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` char(255) DEFAULT NULL COMMENT '小组自定义url',
  `name` char(255) NOT NULL COMMENT '小组名字',
  `master_id` int(11) NOT NULL COMMENT '小组长Id',
  `icon` char(255) NOT NULL DEFAULT 'defined.png' COMMENT '小组图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

