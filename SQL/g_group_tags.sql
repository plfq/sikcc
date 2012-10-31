/*
Navicat MySQL Data Transfer

记录小组和标签之间关系的表

Date: 2012-10-24 21:49:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_tags`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_tags`;
CREATE TABLE `g_group_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `tag_id` int(11) NOT NULL COMMENT '标签Id',
  `date` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
