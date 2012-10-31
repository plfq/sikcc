/*
Navicat MySQL Data Transfer

小组帖子分类表（使用小组Id防止跨小组查看）

Date: 2012-10-24 21:49:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_topic_type_name`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_topic_type_name`;
CREATE TABLE `g_group_topic_type_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(21) NOT NULL COMMENT '帖子分类的名字',
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
