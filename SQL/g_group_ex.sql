/*
Navicat MySQL Data Transfer

小组信息扩展表，保存小组的扩展信息

Date: 2012-10-24 21:49:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_group_ex`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_ex`;
CREATE TABLE `g_group_ex` (
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `join` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_ex
-- ----------------------------
