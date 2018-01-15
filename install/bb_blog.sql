/*
Navicat MySQL Data Transfer

Source Server         : local-centos65
Source Server Version : 50551
Source Host           : 127.0.0.1:3306
Source Database       : beeblog

Target Server Type    : MYSQL
Target Server Version : 50551
File Encoding         : 65001

Date: 2018-01-15 16:37:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bb_blog
-- ----------------------------
DROP TABLE IF EXISTS `bb_blog`;
CREATE TABLE `bb_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(128) DEFAULT NULL,
  `content` text,
  `status` tinyint(4) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bb_blog
-- ----------------------------
INSERT INTO `bb_blog` VALUES ('1', '第一篇', '1', '1', 'redis', 'redis基础啊啊啊啊啊', '0', null, null);

-- ----------------------------
-- Table structure for bb_user
-- ----------------------------
DROP TABLE IF EXISTS `bb_user`;
CREATE TABLE `bb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bb_user
-- ----------------------------
INSERT INTO `bb_user` VALUES ('1', 'libiying', '123456', null, null);
