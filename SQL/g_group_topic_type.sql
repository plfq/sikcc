/*
Navicat MySQL Data Transfer

限制和记录小组的帖子类型关系

Date: 2012-10-24 21:49:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_topic_type`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_topic_type`;
CREATE TABLE `g_group_topic_type` (
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `topic_type_1` int(11) NOT NULL DEFAULT '0',
  `topic_type_2` int(11) NOT NULL DEFAULT '0',
  `topic_type_3` int(11) NOT NULL DEFAULT '0',
  `topic_type_4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
