/*
Navicat MySQL Data Transfer

小组标签表，用以保存标签的信息

Date: 2012-10-24 21:47:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_g_tags`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_tags`;
CREATE TABLE `g_g_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签Id',
  `name` char(21) NOT NULL COMMENT '标签名字',
  `date` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
