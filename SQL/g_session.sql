/*
Navicat MySQL Data Transfer

数据库session表

Date: 2012-10-24 21:51:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_session`
-- ----------------------------
DROP TABLE IF EXISTS `g_session`;
CREATE TABLE `g_session` (
  `session_id` varchar(255) NOT NULL,
  `session_expire` int(11) NOT NULL,
  `session_data` char(255) DEFAULT NULL,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


