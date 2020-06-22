/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : mobileshop

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2020-06-11 10:52:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mobileclassify`
-- ----------------------------
DROP TABLE IF EXISTS `mobileclassify`;
CREATE TABLE `mobileclassify` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` char(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobileclassify
-- ----------------------------
INSERT INTO `mobileclassify` VALUES ('1', 'iphone手机');
INSERT INTO `mobileclassify` VALUES ('2', 'abdroid手机');
INSERT INTO `mobileclassify` VALUES ('3', 'Winphone');

-- ----------------------------
-- Table structure for `mobileform`
-- ----------------------------
DROP TABLE IF EXISTS `mobileform`;
CREATE TABLE `mobileform` (
  `mobile_version` char(50) NOT NULL,
  `mobile_name` char(50) DEFAULT NULL,
  `mobile_made` char(200) DEFAULT NULL,
  `mobile_price` float(4,0) DEFAULT NULL,
  `mobile_mess` char(255) DEFAULT NULL,
  `mobile_pic` char(200) NOT NULL DEFAULT '',
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mobile_version`,`mobile_pic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobileform
-- ----------------------------
INSERT INTO `mobileform` VALUES ('A89S6', '苹果S5手机', '苹果公司', '9999', '高清大屏幕', 'apple.jpg', '1');
INSERT INTO `mobileform` VALUES ('小米6', '小米手机', '小米公司', '5555', '超高清', 'bb.jpg', '2');

-- ----------------------------
-- Table structure for `orderform`
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
  `id` int(10) NOT NULL,
  `logname` char(255) DEFAULT NULL,
  `mess` char(255) DEFAULT NULL,
  `sum` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderform
-- ----------------------------
INSERT INTO `orderform` VALUES ('0', '333', '1:(A89S6,苹果S5手机,苹果公司,9999)', '9999');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `logname` char(255) NOT NULL DEFAULT '',
  `password` char(50) DEFAULT NULL,
  `phone` char(50) DEFAULT NULL,
  `address` char(50) DEFAULT NULL,
  `realname` char(50) DEFAULT NULL,
  PRIMARY KEY (`logname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('', null, null, null, null);
INSERT INTO `user` VALUES ('111', '111', '111', '111', '111');
INSERT INTO `user` VALUES ('22', '333', '44', '666', '777');
INSERT INTO `user` VALUES ('333', '333', '333', '333', '333');
