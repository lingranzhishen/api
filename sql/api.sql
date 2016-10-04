/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : api

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-10-04 09:53:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_api_config
-- ----------------------------
DROP TABLE IF EXISTS `t_api_config`;
CREATE TABLE `t_api_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `versionCode` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '版本号',
  `apiPath` varchar(50) DEFAULT NULL,
  `hostCode` varchar(20) DEFAULT NULL,
  `hostRestApi` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '需要转发的地址',
  `createTime` datetime DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `maintainer` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '接口维护人',
  `description` text CHARACTER SET utf8 COMMENT '接口文档',
  `hostName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '转发的应用名称',
  `requestMethod` varchar(20) CHARACTER SET utf8 DEFAULT 'GET',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_ix` (`versionCode`,`hostCode`,`apiPath`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_api_config
-- ----------------------------
INSERT INTO `t_api_config` VALUES ('1', '获取权限树', 'v1', 'getAuthTree', 'uc', 'api/auth/getAuthTree.json', null, null, null, null, null, '用户中心', 'POST');

-- ----------------------------
-- Table structure for t_sys_code
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_code`;
CREATE TABLE `t_sys_code` (
  `code` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '类型 host,version',
  `codeName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `updateTime` datetime DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`code`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_sys_code
-- ----------------------------
INSERT INTO `t_sys_code` VALUES ('uc', 'host', '用户中心', null, '1', null, 'http://localhost:8080');
