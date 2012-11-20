/*
Navicat MySQL Data Transfer

Source Server         : localhost-MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sikcc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2012-11-21 03:21:04
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
  `gclass` int(11) NOT NULL COMMENT '小组的分类，类别',
  `join` int(11) NOT NULL DEFAULT '1' COMMENT '1无限制2审核3邀请码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group
-- ----------------------------
INSERT INTO `g_group` VALUES ('1', null, '测试小组', '1', '1/1.png', '0', '1');
INSERT INTO `g_group` VALUES ('2', null, '测试小组2', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('3', null, '测试小组3', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('4', null, '测试小组4', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('5', null, '测试小组5', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('6', null, '测试小组6', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('7', null, '测试小组7', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('8', null, '测试小组8', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('9', null, '测试小组9', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('10', null, '测试小组10', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('11', null, '测试小组11', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('12', null, '测试小组12', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('13', null, '测试小组13', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('14', null, '测试小组14', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('15', null, '测试小组15', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('16', null, '测试小组16', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('17', null, '测试小组17', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('18', null, '测试小组18', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('19', null, '测试小组19', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('20', null, '测试小组20', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('21', null, '测试小组21', '1', 'defined.png', '0', '1');
INSERT INTO `g_group` VALUES ('22', null, '测试小组22', '1', 'defined.png', '0', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_admin
-- ----------------------------
INSERT INTO `g_group_admin` VALUES ('3', '1', '1', '1', '1351661612');

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
INSERT INTO `g_group_ex` VALUES ('1', '0', '1351661612');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_tags
-- ----------------------------

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

-- ----------------------------
-- Records of g_group_topic_type
-- ----------------------------
INSERT INTO `g_group_topic_type` VALUES ('1', '1', '2', '3', '11');

-- ----------------------------
-- Table structure for `g_group_topic_type_name`
-- ----------------------------
DROP TABLE IF EXISTS `g_group_topic_type_name`;
CREATE TABLE `g_group_topic_type_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(21) NOT NULL COMMENT '帖子分类的名字',
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_group_topic_type_name
-- ----------------------------
INSERT INTO `g_group_topic_type_name` VALUES ('1', '提问', '1');
INSERT INTO `g_group_topic_type_name` VALUES ('2', '讨论', '1');
INSERT INTO `g_group_topic_type_name` VALUES ('3', '你猜', '1');
INSERT INTO `g_group_topic_type_name` VALUES ('4', '教程', '1');
INSERT INTO `g_group_topic_type_name` VALUES ('11', '教程', '1');

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

-- ----------------------------
-- Records of g_g_about
-- ----------------------------
INSERT INTO `g_g_about` VALUES ('1', '这个是小组简介。', '1353080036');
INSERT INTO `g_g_about` VALUES ('2', '出生ffyuffo', '1351086186');
INSERT INTO `g_g_about` VALUES ('3', '测试 sikcc 抓紧时间', '1351661612');

-- ----------------------------
-- Table structure for `g_g_admin_log_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_0`;
CREATE TABLE `g_g_admin_log_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_admin_log_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_1`;
CREATE TABLE `g_g_admin_log_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_1
-- ----------------------------
INSERT INTO `g_g_admin_log_1` VALUES ('7', '1', 'Admin操作了帖子分类“提问”', '1353080198');
INSERT INTO `g_g_admin_log_1` VALUES ('8', '1', 'Admin修改加入小组方式为不限制', '1353080238');
INSERT INTO `g_g_admin_log_1` VALUES ('9', '1', 'Admin添加关键字18大', '1353081836');
INSERT INTO `g_g_admin_log_1` VALUES ('10', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('11', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('12', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('13', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('14', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('15', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('16', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('17', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('18', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('19', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('20', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('21', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('22', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('23', '1', '1', '1');
INSERT INTO `g_g_admin_log_1` VALUES ('24', '1', '1', '1');

-- ----------------------------
-- Table structure for `g_g_admin_log_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_2`;
CREATE TABLE `g_g_admin_log_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_admin_log_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_3`;
CREATE TABLE `g_g_admin_log_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_admin_log_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_4`;
CREATE TABLE `g_g_admin_log_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_admin_log_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_5`;
CREATE TABLE `g_g_admin_log_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_admin_log_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_6`;
CREATE TABLE `g_g_admin_log_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_admin_log_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_7`;
CREATE TABLE `g_g_admin_log_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_admin_log_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_8`;
CREATE TABLE `g_g_admin_log_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_admin_log_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_admin_log_9`;
CREATE TABLE `g_g_admin_log_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `log` char(255) NOT NULL COMMENT '日志内容',
  `date` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_admin_log_9
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_apply`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_apply`;
CREATE TABLE `g_g_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_class`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_class`;
CREATE TABLE `g_g_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` char(255) NOT NULL COMMENT '分类名',
  `father` int(11) NOT NULL DEFAULT '0' COMMENT '父级分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_class
-- ----------------------------
INSERT INTO `g_g_class` VALUES ('1', '地区', '0');
INSERT INTO `g_g_class` VALUES ('2', '影视', '0');
INSERT INTO `g_g_class` VALUES ('3', '互联网', '0');
INSERT INTO `g_g_class` VALUES ('4', '华北', '1');
INSERT INTO `g_g_class` VALUES ('5', '华中', '1');
INSERT INTO `g_g_class` VALUES ('6', '华南', '1');
INSERT INTO `g_g_class` VALUES ('7', 'web相关', '3');

-- ----------------------------
-- Table structure for `g_g_fordib`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_fordib`;
CREATE TABLE `g_g_fordib` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '被禁止加入小组的用户Id',
  `group_id` int(11) NOT NULL COMMENT '被禁止加入的小组',
  `date` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_fordib
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_0`;
CREATE TABLE `g_g_keywords_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_1`;
CREATE TABLE `g_g_keywords_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_1
-- ----------------------------
INSERT INTO `g_g_keywords_1` VALUES ('3', '1', '我靠');
INSERT INTO `g_g_keywords_1` VALUES ('4', '1', '18大');

-- ----------------------------
-- Table structure for `g_g_keywords_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_2`;
CREATE TABLE `g_g_keywords_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_3`;
CREATE TABLE `g_g_keywords_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_4`;
CREATE TABLE `g_g_keywords_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_5`;
CREATE TABLE `g_g_keywords_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_6`;
CREATE TABLE `g_g_keywords_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_7`;
CREATE TABLE `g_g_keywords_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_8`;
CREATE TABLE `g_g_keywords_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_keywords_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_keywords_9`;
CREATE TABLE `g_g_keywords_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `word` char(21) NOT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_keywords_9
-- ----------------------------

-- ----------------------------
-- Table structure for `g_g_tags`
-- ----------------------------
DROP TABLE IF EXISTS `g_g_tags`;
CREATE TABLE `g_g_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签Id',
  `name` char(21) NOT NULL COMMENT '标签名字',
  `date` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_g_tags
-- ----------------------------
INSERT INTO `g_g_tags` VALUES ('5', '测试', '1351661611');
INSERT INTO `g_g_tags` VALUES ('6', 'sikcc', '1351661611');
INSERT INTO `g_g_tags` VALUES ('7', '抓紧时间', '1351661611');
INSERT INTO `g_g_tags` VALUES ('8', '你才', '1352188924');
INSERT INTO `g_g_tags` VALUES ('9', '考试', '1352188924');
INSERT INTO `g_g_tags` VALUES ('10', '清新', '1352188924');
INSERT INTO `g_g_tags` VALUES ('11', 'fuck', '1352457153');
INSERT INTO `g_g_tags` VALUES ('12', '考x试', '1352457290');
INSERT INTO `g_g_tags` VALUES ('13', 'fuckc', '1352457315');
INSERT INTO `g_g_tags` VALUES ('14', '你好', '1352953530');
INSERT INTO `g_g_tags` VALUES ('15', '小组', '1352953530');
INSERT INTO `g_g_tags` VALUES ('16', '简介', '1352953530');
INSERT INTO `g_g_tags` VALUES ('17', '标签', '1352953531');

-- ----------------------------
-- Table structure for `g_linkman`
-- ----------------------------
DROP TABLE IF EXISTS `g_linkman`;
CREATE TABLE `g_linkman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` int(11) NOT NULL COMMENT '接收Id',
  `sender` int(11) NOT NULL COMMENT '发送者Id',
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_linkman
-- ----------------------------
INSERT INTO `g_linkman` VALUES ('2', '1', '3', '1111');
INSERT INTO `g_linkman` VALUES ('3', '1', '4', '1232');
INSERT INTO `g_linkman` VALUES ('11', '2', '1', '1352817279');

-- ----------------------------
-- Table structure for `g_login_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_login_1`;
CREATE TABLE `g_login_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '登陆日志，计数',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `login_date` int(11) NOT NULL COMMENT '登陆时间',
  `login_ip` char(255) NOT NULL COMMENT '登陆IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_login_1
-- ----------------------------
INSERT INTO `g_login_1` VALUES ('2', '1', '1351661394', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('3', '1', '1351666570', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('4', '1', '1351670613', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('5', '1', '1351696416', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('6', '1', '1351728681', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('7', '1', '1351738063', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('8', '2', '1351950192', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('9', '2', '1351997603', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('10', '2', '1352036708', '192.168.0.2');
INSERT INTO `g_login_1` VALUES ('11', '1', '1352039792', '192.168.0.3');
INSERT INTO `g_login_1` VALUES ('12', '2', '1352183663', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('13', '2', '1352188770', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('14', '1', '1352202099', '192.168.0.3');
INSERT INTO `g_login_1` VALUES ('15', '3', '1352202839', '192.168.0.3');
INSERT INTO `g_login_1` VALUES ('16', '2', '1352203830', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('17', '2', '1352204024', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('18', '2', '1352260770', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('19', '1', '1352280397', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('20', '1', '1352280607', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('21', '1', '1352300428', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('22', '1', '1352301841', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('23', '1', '1352346774', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('24', '1', '1352348491', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('25', '1', '1352353173', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('26', '1', '1352361103', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('27', '1', '1352373008', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('28', '4', '1352376037', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('29', '5', '1352376857', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('30', '4', '1352377199', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('31', '5', '1352377230', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('32', '1', '1352379217', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('33', '1', '1352381359', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('34', '1', '1352385936', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('35', '1', '1352391722', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('36', '3', '1352392509', '192.168.0.3');
INSERT INTO `g_login_1` VALUES ('37', '1', '1352393451', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('38', '1', '1352429609', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('39', '1', '1352435131', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('40', '1', '1352437114', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('41', '1', '1352451839', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('42', '1', '1352457075', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('43', '1', '1352462878', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('44', '1', '1352520528', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('45', '1', '1352766601', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('46', '1', '1352772123', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('47', '1', '1352774288', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('48', '1', '1352787312', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('49', '1', '1352793506', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('50', '1', '1352798296', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('51', '1', '1352807169', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('52', '1', '1352953268', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('53', '1', '1352991001', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('54', '1', '1353041109', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('55', '1', '1353047671', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('56', '1', '1353048180', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('57', '1', '1353072893', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('58', '1', '1353135424', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('59', '3', '1353141959', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('60', '1', '1353430342', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('61', '1', '1353437685', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('62', '1', '1353437755', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('63', '1', '1353437884', '127.0.0.1');
INSERT INTO `g_login_1` VALUES ('64', '1', '1353438049', '127.0.0.1');

-- ----------------------------
-- Table structure for `g_member_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_0`;
CREATE TABLE `g_member_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_1`;
CREATE TABLE `g_member_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_1
-- ----------------------------
INSERT INTO `g_member_1` VALUES ('4', '1', '1', '1353135446');

-- ----------------------------
-- Table structure for `g_member_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_2`;
CREATE TABLE `g_member_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_3`;
CREATE TABLE `g_member_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_4`;
CREATE TABLE `g_member_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_5`;
CREATE TABLE `g_member_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_6`;
CREATE TABLE `g_member_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_7`;
CREATE TABLE `g_member_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_8`;
CREATE TABLE `g_member_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_member_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_member_9`;
CREATE TABLE `g_member_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_member_9
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_0`;
CREATE TABLE `g_message_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_0
-- ----------------------------
INSERT INTO `g_message_0` VALUES ('2', '1', '1', '恭喜你！测试小组小组创建成功！', '1351661613');

-- ----------------------------
-- Table structure for `g_message_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_1`;
CREATE TABLE `g_message_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_1
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_2`;
CREATE TABLE `g_message_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_3`;
CREATE TABLE `g_message_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_3
-- ----------------------------
INSERT INTO `g_message_3` VALUES ('1', '1', '2', '这个是测试的', '122312312');
INSERT INTO `g_message_3` VALUES ('2', '1', '2', '这个意思的飞机都受到', '126328176');
INSERT INTO `g_message_3` VALUES ('3', '2', '1', '的是阿松isdajso奥斯阿第克', '389837294');
INSERT INTO `g_message_3` VALUES ('4', '1', '2', '这个是', '1352815714');
INSERT INTO `g_message_3` VALUES ('5', '1', '2', '分为去微软认为人权为荣二人台日', '1352815788');
INSERT INTO `g_message_3` VALUES ('6', '1', '2', '怎么是失败的 啊？', '1352816058');
INSERT INTO `g_message_3` VALUES ('7', '1', '2', '怎么是失败的 啊？', '1352816088');
INSERT INTO `g_message_3` VALUES ('8', '1', '2', 'vsdf', '1352816197');
INSERT INTO `g_message_3` VALUES ('9', '1', '2', '你哦打算弄死大苏打死凹洞啊电话iash', '1352816397');
INSERT INTO `g_message_3` VALUES ('10', '1', '2', '你哦打算弄死大苏打死凹洞啊电话iash', '1352816457');
INSERT INTO `g_message_3` VALUES ('11', '1', '2', 'asfddadsdfasdf', '1352816886');
INSERT INTO `g_message_3` VALUES ('12', '1', '2', 'dfsdfasdf', '1352817263');
INSERT INTO `g_message_3` VALUES ('13', '1', '2', 'daSDAsdaSDasdasddfsd', '1352817278');

-- ----------------------------
-- Table structure for `g_message_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_4`;
CREATE TABLE `g_message_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_5`;
CREATE TABLE `g_message_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_6`;
CREATE TABLE `g_message_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_7`;
CREATE TABLE `g_message_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_8`;
CREATE TABLE `g_message_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_message_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_message_9`;
CREATE TABLE `g_message_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL COMMENT '纸条发送者',
  `receiver` int(11) NOT NULL COMMENT '纸条接收者',
  `content` char(255) NOT NULL COMMENT '纸条内容',
  `date` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_message_9
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_0`;
CREATE TABLE `g_mygroup_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_1`;
CREATE TABLE `g_mygroup_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_1
-- ----------------------------
INSERT INTO `g_mygroup_1` VALUES ('1', '1', '1', '1351666776');

-- ----------------------------
-- Table structure for `g_mygroup_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_2`;
CREATE TABLE `g_mygroup_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_3`;
CREATE TABLE `g_mygroup_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_4`;
CREATE TABLE `g_mygroup_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_5`;
CREATE TABLE `g_mygroup_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_6`;
CREATE TABLE `g_mygroup_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_7`;
CREATE TABLE `g_mygroup_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_8`;
CREATE TABLE `g_mygroup_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_mygroup_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_mygroup_9`;
CREATE TABLE `g_mygroup_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组Id',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `date` int(11) NOT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_mygroup_9
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_new_group
-- ----------------------------
INSERT INTO `g_new_group` VALUES ('1', '这个是测试一下新模板', '你才 测试 考试 清新', '这个是测试一下新模板这个是测试一下新模板这个是测试一下新模板', '0', '2', '1352188800');

-- ----------------------------
-- Table structure for `g_not_say`
-- ----------------------------
DROP TABLE IF EXISTS `g_not_say`;
CREATE TABLE `g_not_say` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `remark` char(255) DEFAULT NULL COMMENT '备注，禁止发言备注',
  `admin` int(11) NOT NULL COMMENT '禁言操作的管理员',
  `date` int(11) NOT NULL COMMENT '禁言时间',
  `long` int(11) NOT NULL DEFAULT '0' COMMENT '被禁言时长',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_not_say
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_0`;
CREATE TABLE `g_retopic_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_1`;
CREATE TABLE `g_retopic_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_1
-- ----------------------------
INSERT INTO `g_retopic_1` VALUES ('1', '你好 这个是回复的额', '2', '1000001', '1352183668', '0');
INSERT INTO `g_retopic_1` VALUES ('2', '再来一个测试胰腺癌的  大法师V', '2', '1000001', '1352183906', '0');
INSERT INTO `g_retopic_1` VALUES ('3', '欢迎来到sikcc的小组 哈哈 daasd\r\nad\r\nas\r\ndas\r\ndasda', '2', '1000001', '1352183931', '0');
INSERT INTO `g_retopic_1` VALUES ('4', '欢迎来到sikcc的小组 哈哈 daasd ad as das dasda欢迎来到sikcc的小组 哈哈 daasd ad as das dasda欢迎来到sikcc的小组 哈哈 daasd ad as das dasda欢迎来到sikcc的小组 哈哈 daasd ad as das dasda欢迎来到sikcc的小组 哈哈 daasd ad as das dasda欢迎来到sikcc的小组 哈哈 daasd ad as das dasda欢迎来到sikcc的小组 哈哈 daasd ad as das d', '2', '1000001', '1352183957', '0');
INSERT INTO `g_retopic_1` VALUES ('5', '哈 daasd ad as das dasda欢迎来到sikcc的小组 哈哈 daasd ad as das dasda欢迎来到sikcc的小组 哈哈 daasd ad a', '2', '1000001', '1352189169', '0');

-- ----------------------------
-- Table structure for `g_retopic_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_2`;
CREATE TABLE `g_retopic_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_3`;
CREATE TABLE `g_retopic_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_4`;
CREATE TABLE `g_retopic_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_5`;
CREATE TABLE `g_retopic_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_5
-- ----------------------------
INSERT INTO `g_retopic_5` VALUES ('1', 'hehe', '1', '1000005', '1352202238', '0');
INSERT INTO `g_retopic_5` VALUES ('2', 'haha', '3', '1000005', '1352203054', '0');

-- ----------------------------
-- Table structure for `g_retopic_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_6`;
CREATE TABLE `g_retopic_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_7`;
CREATE TABLE `g_retopic_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_8`;
CREATE TABLE `g_retopic_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_retopic_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_retopic_9`;
CREATE TABLE `g_retopic_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复Id',
  `content` char(255) NOT NULL COMMENT '回复的内容',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `topic_id` int(11) NOT NULL COMMENT '帖子的Id',
  `date` int(11) NOT NULL COMMENT '回复时间',
  `brother` int(11) NOT NULL DEFAULT '0' COMMENT '回复的兄弟Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_retopic_9
-- ----------------------------

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

-- ----------------------------
-- Records of g_session
-- ----------------------------
INSERT INTO `g_session` VALUES ('ebkj215hg6ohrn5n7pbl2710r6', '1353441656', 'user_id|s:1:\"1\";');

-- ----------------------------
-- Table structure for `g_topic_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_0`;
CREATE TABLE `g_topic_0` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_1`;
CREATE TABLE `g_topic_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000028 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_1
-- ----------------------------
INSERT INTO `g_topic_1` VALUES ('1000001', '这个是测试的哈哈', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000002', 'dfsdgsdgsdgd', '1', '1', '1351738946', '1351738946', '1351738947', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000003', 'jioj和丢的', '1', '1', '1351738946', '1351738946', '1351738948', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000004', '这个是标题这个是标题这个是标题这个是标题这个是标题这个是标题这个是标题这个是标题', '1', '1', '1351738536', '1351738536', '1351738549', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000005', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738950', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000006', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738951', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000007', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738952', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000008', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000009', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000010', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000011', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000012', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000013', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000014', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000015', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000016', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000017', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000018', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000019', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000020', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000021', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000022', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000024', '多福多寿士大夫告诉', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000025', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000026', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');
INSERT INTO `g_topic_1` VALUES ('1000027', '这个是标题dierr', '1', '1', '1351738946', '1351738946', '1351738946', '0', '0', '0');

-- ----------------------------
-- Table structure for `g_topic_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_2`;
CREATE TABLE `g_topic_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_3`;
CREATE TABLE `g_topic_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_4`;
CREATE TABLE `g_topic_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_5`;
CREATE TABLE `g_topic_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_6`;
CREATE TABLE `g_topic_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_7`;
CREATE TABLE `g_topic_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_8`;
CREATE TABLE `g_topic_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_9`;
CREATE TABLE `g_topic_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子Id',
  `title` char(255) NOT NULL COMMENT '话题标题',
  `group_id` int(11) NOT NULL COMMENT '帖子所属的小组Id',
  `user_id` int(11) NOT NULL COMMENT '发帖用户Id',
  `creat_time` int(11) NOT NULL COMMENT '最初发帖时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `last_time` int(11) NOT NULL COMMENT '最后更新时间，包括回帖的时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型，默认为0可以不写',
  `read` int(11) NOT NULL DEFAULT '0' COMMENT '已经被阅读次数',
  `retopic` int(11) NOT NULL DEFAULT '0' COMMENT '所有回复统计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_9
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_0`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_0`;
CREATE TABLE `g_topic_content_0` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_0
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_1`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_1`;
CREATE TABLE `g_topic_content_1` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_1
-- ----------------------------
INSERT INTO `g_topic_content_1` VALUES ('1000001', '欢迎来到sikcc的小组 哈哈  daasd<br/>ad<br/>as<br/>das<br/>dasda');
INSERT INTO `g_topic_content_1` VALUES ('1000002', 'nasakslaslansakslak');

-- ----------------------------
-- Table structure for `g_topic_content_2`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_2`;
CREATE TABLE `g_topic_content_2` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_2
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_3`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_3`;
CREATE TABLE `g_topic_content_3` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_3
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_4`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_4`;
CREATE TABLE `g_topic_content_4` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_4
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_5`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_5`;
CREATE TABLE `g_topic_content_5` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_5
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_6`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_6`;
CREATE TABLE `g_topic_content_6` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_6
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_7`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_7`;
CREATE TABLE `g_topic_content_7` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_7
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_8`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_8`;
CREATE TABLE `g_topic_content_8` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_8
-- ----------------------------

-- ----------------------------
-- Table structure for `g_topic_content_9`
-- ----------------------------
DROP TABLE IF EXISTS `g_topic_content_9`;
CREATE TABLE `g_topic_content_9` (
  `topic_id` int(11) NOT NULL COMMENT '帖子Id',
  `content` tinytext NOT NULL COMMENT '帖子内容',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_topic_content_9
-- ----------------------------

-- ----------------------------
-- Table structure for `g_user`
-- ----------------------------
DROP TABLE IF EXISTS `g_user`;
CREATE TABLE `g_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `url` char(255) DEFAULT NULL COMMENT '个性url',
  `name` char(255) NOT NULL COMMENT '用户昵称',
  `email` char(255) NOT NULL COMMENT '登陆邮箱',
  `password` char(255) NOT NULL COMMENT '密码',
  `head` char(255) NOT NULL DEFAULT 'head.png' COMMENT '用户头像',
  `signature` char(255) DEFAULT NULL,
  `qr` char(255) DEFAULT NULL COMMENT '二维码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_user
-- ----------------------------
INSERT INTO `g_user` VALUES ('1', null, 'Admin', 'admin@admin.com', 'admin', '1/1.png', '我是管我是管理员哈哈哈哈哈我是管理员哈哈哈哈哈我是管理员哈哈哈哈哈理员哈哈哈哈哈理员哈哈哈哈哈理员哈哈哈哈哈理员哈哈哈哈哈理员哈哈哈哈哈理员哈哈哈', '1/1_qr.png');
INSERT INTO `g_user` VALUES ('2', null, '小马', '562600828@qq.com', '12345', 'head.png', null, null);
INSERT INTO `g_user` VALUES ('3', null, 'root', 'root@root.com', 'sudoroot', 'head.png', null, null);
INSERT INTO `g_user` VALUES ('4', null, '&lt;br/&gt;', 'dhsak@ds.com', 'admin', 'head.png', null, null);
INSERT INTO `g_user` VALUES ('5', null, 'where 1=1#', 'asjdl@dsa.com', 'admin', 'head.png', null, null);

-- ----------------------------
-- Table structure for `g_user_ex`
-- ----------------------------
DROP TABLE IF EXISTS `g_user_ex`;
CREATE TABLE `g_user_ex` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `is_not_say` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被禁止发言',
  `regdate` int(11) NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_user_ex
-- ----------------------------
INSERT INTO `g_user_ex` VALUES ('1', '0', '1351085981');
INSERT INTO `g_user_ex` VALUES ('2', '0', '1351950192');
INSERT INTO `g_user_ex` VALUES ('3', '0', '1352202839');
INSERT INTO `g_user_ex` VALUES ('4', '0', '1352376037');
INSERT INTO `g_user_ex` VALUES ('5', '0', '1352376857');
