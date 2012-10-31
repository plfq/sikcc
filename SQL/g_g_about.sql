/*
Navicat MySQL Data Transfer

小组简介表

Date: 2012-10-24 21:47:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_g_about`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_about`;
CREATE TABLE `g_g_about` (
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `about` text COMMENT '简介内容',
  `date` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

