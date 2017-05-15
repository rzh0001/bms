/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : bms

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-15 11:05:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_ad`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ad`;
CREATE TABLE `tb_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `is_show` int(11) DEFAULT NULL COMMENT '1显示  2隐藏',
  `content` text,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `local_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

-- ----------------------------
-- Records of tb_ad
-- ----------------------------
INSERT INTO `tb_ad` VALUES ('1', 'Tab1', null, '/CMS/resources/upload/image/1.jpg', '100', '1', null, '2016-12-15 15:14:20', '234448626@qq.com', null, null, 'zh_CN');
INSERT INTO `tb_ad` VALUES ('2', 'Tab2', null, '/CMS/resources/upload/image/2.jpg', '100', '1', null, '2016-12-15 15:14:46', '234448626@qq.com', null, null, 'zh_CN');
INSERT INTO `tb_ad` VALUES ('3', 'Tab3', null, '/CMS/resources/upload/image/3.jpg', '100', '1', null, '2016-12-16 18:19:06', '234448626@qq.com', null, null, 'zh_CN');

-- ----------------------------
-- Table structure for `tb_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pids` varchar(5000) DEFAULT NULL,
  `simplename` varchar(45) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1', '0', '0,', 'AA科技', 'AA科技(深圳)有限公司', '', '2');
INSERT INTO `tb_dept` VALUES ('2', '1', '0,1,', '深圳', 'AA科技深圳办事处', null, '2');
INSERT INTO `tb_dept` VALUES ('3', '2', '0,1,2,', '技服部1', '技术服务部', '', '2');
INSERT INTO `tb_dept` VALUES ('4', '2', '0,1,2,', '客服部', '客户服务部', null, '1');
INSERT INTO `tb_dept` VALUES ('5', '2', '0,1,2,', '销售部', '销售部', null, '1');
INSERT INTO `tb_dept` VALUES ('6', '2', '0,1,2,', '综合管理部', '综合管理部', null, '1');
INSERT INTO `tb_dept` VALUES ('7', '1', '0,1,', '香港', 'AA科技香港办事处', null, '2');
INSERT INTO `tb_dept` VALUES ('8', '7', '0,1,7,', '产品部', '产品部', null, '1');
INSERT INTO `tb_dept` VALUES ('9', '7', '0,1,7,', '研发部', '研发部', null, '1');
INSERT INTO `tb_dept` VALUES ('10', '7', '0,1,7,', '项目部', '项目部', 'dsdddddd12aa', '4');
INSERT INTO `tb_dept` VALUES ('11', '7', '0,1,7,', '运维部', '运维部', null, '1');
INSERT INTO `tb_dept` VALUES ('12', '7', '0,1,7,', '销售部', '销售部', null, '1');
INSERT INTO `tb_dept` VALUES ('13', '7', '0,1,7,', '行政部', '行政部', null, '1');
INSERT INTO `tb_dept` VALUES ('14', '1', '0,1,', '北京', 'AA科技北京办事处', '', '1');
INSERT INTO `tb_dept` VALUES ('15', '14', '0,1,14,', '产品部', '产品部门', '', '1');
INSERT INTO `tb_dept` VALUES ('16', '15', '0,1,14,15,', '产品2部', '产品2部产品2部', '产品2部产品2部', null);
INSERT INTO `tb_dept` VALUES ('17', '6', '0,1,2,6,', '综合1部', '综合1部综合1部', '综合1部综合1部综合1部综合1部1', null);
INSERT INTO `tb_dept` VALUES ('18', '15', '0,1,14,15,', '产品1部', '产品1部产品1部', '', null);

-- ----------------------------
-- Table structure for `tb_login_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_login_info`;
CREATE TABLE `tb_login_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_login_info
-- ----------------------------
INSERT INTO `tb_login_info` VALUES ('1', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 12:01:43', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('2', '234448626@qq.com', '0:0:0:0:0:0:0:1', '2017-05-08 14:36:52', '账户不存在！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('3', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 14:36:56', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('4', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 15:24:43', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('5', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 15:26:52', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('6', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 15:32:54', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('7', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 15:36:02', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('8', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 15:37:30', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('9', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 16:00:38', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('10', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 16:15:35', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('11', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-08 19:05:14', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('12', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 12:07:40', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('13', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 12:25:50', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('14', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 12:34:29', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('15', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 12:40:06', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('16', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 14:16:25', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('17', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 15:05:23', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('18', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 15:19:51', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('19', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 15:39:08', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('20', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 18:12:32', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('21', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-09 18:58:14', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('22', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 10:45:45', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('23', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 11:19:08', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('24', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 11:52:32', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('25', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 11:56:36', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('26', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 11:58:20', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('27', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 12:03:30', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('28', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 14:47:54', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('29', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 16:56:37', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('30', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 18:50:49', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('31', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 18:55:18', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('32', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 18:57:48', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('33', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 19:06:43', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('34', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 19:50:11', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('35', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 19:53:00', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('36', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 19:55:23', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('37', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 19:57:17', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('38', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 19:58:50', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('39', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 20:24:04', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('40', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 20:32:27', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('41', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-10 20:39:01', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('42', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-10 20:44:54', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('43', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-10 20:45:16', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('44', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 11:04:46', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('45', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-11 11:04:59', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('46', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 11:10:52', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('47', 'test', '0:0:0:0:0:0:0:1', '2017-05-11 11:16:29', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('48', 'zonghe1', '0:0:0:0:0:0:0:1', '2017-05-11 11:16:55', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('49', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 11:17:42', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('50', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 12:07:15', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('51', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 12:07:33', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('52', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 12:11:25', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('53', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 12:11:34', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('54', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 12:50:39', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('55', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 12:50:43', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('56', 'zonghe1', '0:0:0:0:0:0:0:1', '2017-05-11 12:50:55', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('57', 'zonghe1', '0:0:0:0:0:0:0:1', '2017-05-11 14:55:14', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('58', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 14:55:21', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('59', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 14:55:33', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('60', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 14:56:36', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('61', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 15:07:20', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('62', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 15:07:26', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('63', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 15:24:53', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('64', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 15:25:02', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('65', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 15:37:37', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('66', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 15:37:44', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('67', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 15:51:39', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('68', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 15:51:48', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('69', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-11 15:58:11', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('70', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-11 15:58:53', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('71', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-11 16:01:45', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('72', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-11 16:02:04', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('73', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-11 16:03:54', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('74', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-11 16:04:55', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('75', 'zonghe2', '0:0:0:0:0:0:0:1', '2017-05-11 16:05:51', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('76', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:23:28', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('77', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:23:41', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('78', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:30:42', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('79', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:30:59', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('80', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:35:52', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('81', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:40:09', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('82', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:44:03', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('83', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:44:10', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('84', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:46:13', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('85', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:52:32', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('86', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 16:52:57', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('87', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 17:04:47', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('88', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 17:04:56', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('89', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:16:59', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('90', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:17:18', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('91', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:17:47', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('92', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:17:56', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('93', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:22:15', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('94', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:22:23', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('95', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:24:25', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('96', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:24:40', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('97', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:28:24', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('98', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:28:30', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('99', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:32:18', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('100', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:37:23', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('101', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:37:34', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('102', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:38:43', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('103', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:38:56', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('104', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:43:21', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('105', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:43:38', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('106', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:48:48', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('107', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:48:52', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('108', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:51:26', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('109', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 18:52:09', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('110', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:15:17', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('111', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:15:24', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('112', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:16:23', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('113', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:16:28', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('114', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:17:30', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('115', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:17:36', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('116', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:18:59', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('117', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:19:05', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('118', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:21:24', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('119', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:21:29', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('120', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:22:36', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('121', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:22:43', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('122', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:22:59', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('123', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:26:06', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('124', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:26:15', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('125', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:30:22', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('126', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:30:32', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('127', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:31:26', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('128', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:31:31', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('129', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:32:03', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('130', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:32:08', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('131', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:34:56', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('132', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:35:01', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('133', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:35:32', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('134', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:36:30', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('135', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:38:41', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('136', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-11 19:38:48', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('137', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 10:05:37', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('138', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 10:05:57', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('139', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 10:07:01', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('140', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:04:15', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('141', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:09:28', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('142', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:12:30', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('143', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:14:03', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('144', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:16:47', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('145', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:20:50', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('146', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:27:12', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('147', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:28:48', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('148', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:57:16', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('149', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 11:57:57', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('150', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 12:17:37', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('151', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 12:19:34', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('152', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 12:20:11', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('153', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 12:35:09', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('154', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 12:35:16', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('155', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 12:36:13', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('156', 'administrator', '0:0:0:0:0:0:0:1', '2017-05-12 12:42:39', null, '登录成功');

-- ----------------------------
-- Table structure for `tb_log_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_log_info`;
CREATE TABLE `tb_log_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `method_args` varchar(255) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `operate_ip` varchar(100) DEFAULT NULL,
  `operate_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log_info
-- ----------------------------
INSERT INTO `tb_log_info` VALUES ('1', null, 'administrator', 'index', '[{}]', '操作成功', '成功', '0:0:0:0:0:0:0:1', '2017-01-03 20:09:08');
INSERT INTO `tb_log_info` VALUES ('2', null, 'administrator', 'listUI', '[{}, null, null]', '操作成功', '成功', '0:0:0:0:0:0:0:1', '2017-01-03 20:09:19');
INSERT INTO `tb_log_info` VALUES ('3', null, 'administrator', 'listUI', '[{}, null, admin]', '操作成功', '成功', '0:0:0:0:0:0:0:1', '2017-01-03 20:09:30');
INSERT INTO `tb_log_info` VALUES ('4', null, 'administrator', 'select', '[{}, 33]', '操作成功', '成功', '0:0:0:0:0:0:0:1', '2017-01-03 20:09:46');
INSERT INTO `tb_log_info` VALUES ('5', null, 'administrator', 'add', '[{tbUser=com.xj.bms.base.user.entity.TbUser@13ff4d58, org.springframework.validation.BindingResult.tbUser=org.springframework.validation.BeanPropertyBindingResult: 0 errors}, com.xj.bms.base.user.entity.TbUser@13ff4d58]', '操作成功', '成功', '0:0:0:0:0:0:0:1', '2017-01-03 20:09:48');
INSERT INTO `tb_log_info` VALUES ('6', null, 'administrator', 'listUI', '[{}, null, null]', '操作成功', '成功', '0:0:0:0:0:0:0:1', '2017-01-03 20:09:48');

-- ----------------------------
-- Table structure for `tb_news`
-- ----------------------------
DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `key_words` varchar(255) DEFAULT NULL COMMENT '关键词',
  `cover_img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `is_show` int(11) DEFAULT NULL COMMENT '是否显示  1是  2否',
  `descs` varchar(500) DEFAULT NULL,
  `content` text,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='栏目管理';

-- ----------------------------
-- Records of tb_news
-- ----------------------------
INSERT INTO `tb_news` VALUES ('15', null, '777', '777', 'upload/other/38773.jpg', '1', '777', '<p>777</p>\r\n', '2017-03-14 16:22:46', 'administrator', '2017-04-10 16:51:21', 'administrator');
INSERT INTO `tb_news` VALUES ('16', null, '888', '888', null, '2', '888', '<p>888</p>\r\n', '2017-03-14 16:22:51', 'administrator', '2017-03-14 16:22:51', null);
INSERT INTO `tb_news` VALUES ('17', null, '999', '999', null, '2', '999', '<p>999</p>\r\n', '2017-03-14 16:22:56', 'administrator', '2017-03-14 16:22:56', null);
INSERT INTO `tb_news` VALUES ('18', null, '000', '000', null, '2', '000', '<p>000</p>\r\n', '2017-03-14 16:23:01', 'administrator', '2017-03-14 16:23:01', null);
INSERT INTO `tb_news` VALUES ('19', null, 'aaa', 'aaa', null, '2', 'aaa', '<p>aaa</p>\r\n', '2017-03-14 16:23:11', 'administrator', '2017-03-14 16:23:11', null);
INSERT INTO `tb_news` VALUES ('20', null, 'bbb', 'bbb', null, '2', 'bbb', '<p>bbb</p>\r\n', '2017-03-14 16:23:15', 'administrator', '2017-03-14 16:23:15', null);
INSERT INTO `tb_news` VALUES ('21', null, 'ccc', 'ccc', null, '2', 'ccc', '<p>ccc</p>\r\n', '2017-03-14 16:23:26', 'administrator', '2017-03-14 16:23:26', null);
INSERT INTO `tb_news` VALUES ('23', null, 'eee', 'eee', null, '2', 'eee', '<p>eee</p>\r\n', '2017-03-14 16:23:36', 'administrator', '2017-03-14 16:23:36', null);
INSERT INTO `tb_news` VALUES ('24', null, 'fff', 'fff', null, '2', 'fff', '<p>fff</p>\r\n', '2017-03-14 16:23:41', 'administrator', '2017-03-14 16:23:41', null);
INSERT INTO `tb_news` VALUES ('25', null, 'ggg', 'ggg', null, '2', 'ggg', '<p>ggg</p>\r\n', '2017-03-14 16:23:48', 'administrator', '2017-03-14 16:23:48', null);
INSERT INTO `tb_news` VALUES ('26', null, 'hhh', 'hhh', null, '2', 'hhh', '<p>hhh</p>\r\n', '2017-03-14 16:23:54', 'administrator', '2017-03-14 16:23:54', null);
INSERT INTO `tb_news` VALUES ('27', null, 'iii', 'iii', null, '2', 'iii', '<p>iii</p>\r\n', '2017-03-14 16:23:59', 'administrator', '2017-03-14 16:23:59', null);
INSERT INTO `tb_news` VALUES ('28', null, 'jjj', 'jjj', null, '2', 'jjj', '<p>jjj</p>\r\n', '2017-03-14 16:24:05', 'administrator', '2017-03-14 16:24:05', null);
INSERT INTO `tb_news` VALUES ('29', null, 'kkk', 'kkk', null, '2', 'kkk', '<p>kkk</p>\r\n', '2017-03-14 16:24:09', 'administrator', '2017-03-14 16:24:09', null);
INSERT INTO `tb_news` VALUES ('30', null, 'lll', 'lll', null, '2', 'lll', '<p>lll</p>\r\n', '2017-03-14 16:24:15', 'administrator', '2017-03-14 16:24:15', null);
INSERT INTO `tb_news` VALUES ('31', null, 'mmm', 'mmm', null, '2', 'mmm', '<p>mmm</p>\r\n', '2017-03-14 16:24:22', 'administrator', '2017-03-14 16:24:22', null);
INSERT INTO `tb_news` VALUES ('32', null, 'nnn', 'nnn', null, '2', 'nnn', '<p>nnn</p>\r\n', '2017-03-14 16:24:28', 'administrator', '2017-03-14 16:24:28', null);
INSERT INTO `tb_news` VALUES ('33', null, 'ooo', 'ooo', null, '2', 'ooo', '<p>ooo</p>\r\n', '2017-03-14 16:24:33', 'administrator', '2017-03-14 16:24:33', null);
INSERT INTO `tb_news` VALUES ('34', null, 'ppp', 'ppp', null, '2', 'ppp', '<p>ppp</p>\r\n', '2017-03-14 16:24:38', 'administrator', '2017-03-14 16:24:38', null);
INSERT INTO `tb_news` VALUES ('35', null, 'qqq', 'qqq', null, '2', 'qqq', '<p>qqq</p>\r\n', '2017-03-14 16:24:43', 'administrator', '2017-03-14 16:24:43', null);
INSERT INTO `tb_news` VALUES ('36', null, 'rrr', 'rrr', null, '2', 'rrr', '<p>rrr</p>\r\n', '2017-03-14 16:24:48', 'administrator', '2017-03-14 16:24:48', null);
INSERT INTO `tb_news` VALUES ('37', null, 'sss', 'sss', null, '2', 'sss', '<p>sss</p>\r\n', '2017-03-14 16:24:53', 'administrator', '2017-03-14 16:24:53', null);
INSERT INTO `tb_news` VALUES ('38', null, 'ttt', 'ttt', null, '2', 'ttt', '<p>ttt</p>\r\n', '2017-03-14 16:24:58', 'administrator', '2017-03-14 16:24:58', null);
INSERT INTO `tb_news` VALUES ('39', null, 'uuu', 'uuu', null, '2', 'uuu', '<p>uuu</p>\r\n', '2017-03-14 16:25:03', 'administrator', '2017-03-14 16:25:03', null);
INSERT INTO `tb_news` VALUES ('40', null, 'vvv', 'vvv', null, '2', 'vvv', '<p>vvv</p>\r\n', '2017-03-14 16:25:09', 'administrator', '2017-03-14 16:25:09', null);
INSERT INTO `tb_news` VALUES ('41', null, 'www', 'www', null, '2', 'www', '<p>www</p>\r\n', '2017-03-14 16:25:14', 'administrator', '2017-03-14 16:25:14', null);
INSERT INTO `tb_news` VALUES ('42', null, 'xxx', 'xxx', null, '2', 'xxx', '<p>xxx</p>\r\n', '2017-03-14 16:25:22', 'administrator', '2017-03-14 16:25:22', null);
INSERT INTO `tb_news` VALUES ('43', null, 'yyy', 'yyy', null, '2', 'yyy', '<p>yyy</p>\r\n', '2017-03-14 16:25:27', 'administrator', '2017-03-14 16:25:27', null);
INSERT INTO `tb_news` VALUES ('44', null, 'zzz', 'zzz', null, '2', 'zzz', '<p>zzz</p>\r\n', '2017-03-14 16:25:33', 'administrator', '2017-03-14 16:25:33', null);
INSERT INTO `tb_news` VALUES ('45', null, 'fddds', 'sdfds', 'upload/other/30408.jpg', '1', 'ffdsf', '<p>sadasdasd</p>\r\n', '2017-04-10 16:52:34', 'administrator', '2017-04-10 17:10:03', 'administrator');

-- ----------------------------
-- Table structure for `tb_resource`
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '资源id',
  `s_parent_id` int(11) DEFAULT NULL COMMENT '资源父id',
  `s_name` varchar(100) NOT NULL COMMENT '资源名称',
  `s_source_key` varchar(100) NOT NULL COMMENT '资源唯一标识',
  `s_type` int(11) NOT NULL COMMENT '资源类型,0:目录;1:菜单;2:按钮',
  `s_source_url` varchar(500) DEFAULT NULL COMMENT '资源url',
  `s_icon` varchar(100) DEFAULT '' COMMENT '图标',
  `s_is_hide` int(11) DEFAULT '0' COMMENT '是否隐藏',
  `s_description` varchar(100) DEFAULT NULL COMMENT '描述',
  `s_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `s_update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('1', '0', '系统基础管理', 'system', '0', '', 'am-icon-list', '0', '系统基础管理', '2016-01-05 12:11:12', '2016-02-25 14:07:46');
INSERT INTO `tb_resource` VALUES ('2', '1', '用户管理', 'system:user', '1', 'user/listUI', '', '0', '用户管理', '2016-01-08 12:37:10', '2016-01-22 11:06:59');
INSERT INTO `tb_resource` VALUES ('3', '1', '角色管理', 'system:role', '1', 'role/listUI', '', '0', '角色管理', '2016-01-11 22:51:07', '2016-01-22 11:07:04');
INSERT INTO `tb_resource` VALUES ('4', '1', '资源管理', 'system:resource', '1', 'resource/listUI', '', '0', '资源管理', '2016-01-11 22:51:55', '2016-01-22 11:07:10');
INSERT INTO `tb_resource` VALUES ('5', '0', '系统监控管理', 'monitor', '0', '', 'am-icon-pencil', '0', '系统监控管理', '2016-01-05 12:11:12', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('6', '5', 'Druid监控', 'monitor:druid', '1', 'druid', '', '0', 'Druid监控', '2016-01-11 22:45:27', '2016-03-20 15:00:53');
INSERT INTO `tb_resource` VALUES ('7', '2', '添加', 'user:add', '2', '', '', '0', '添加用户', '2016-01-22 00:18:40', '2016-01-22 11:06:13');
INSERT INTO `tb_resource` VALUES ('8', '2', '编辑', 'user:edit', '2', '', '', '0', '编辑用户', '2016-01-22 00:18:40', '2016-01-22 11:06:22');
INSERT INTO `tb_resource` VALUES ('9', '2', '删除', 'user:delete', '2', '', null, '0', '删除用户', '2016-02-05 15:26:32', '2016-02-25 15:27:51');
INSERT INTO `tb_resource` VALUES ('10', '2', '重置密码', 'user:resetPassword', '2', '', null, '0', '重置密码', '2016-02-27 23:55:13', null);
INSERT INTO `tb_resource` VALUES ('11', '3', '添加', 'role:add', '2', '', null, '0', '添加', '2016-02-27 23:56:52', null);
INSERT INTO `tb_resource` VALUES ('12', '3', '编辑', 'role:edit', '2', '', null, '0', '编辑', '2016-02-27 23:57:35', null);
INSERT INTO `tb_resource` VALUES ('13', '3', '删除', 'role:delete', '2', '', null, '0', '删除', '2016-02-27 23:58:02', null);
INSERT INTO `tb_resource` VALUES ('14', '3', '分配权限', 'role:permission', '2', '', null, '0', '分配权限', '2016-02-27 23:59:20', null);
INSERT INTO `tb_resource` VALUES ('15', '4', '添加', 'resource:add', '2', '', null, '0', '添加', '2016-02-28 00:01:15', null);
INSERT INTO `tb_resource` VALUES ('16', '4', '编辑', 'resource:edit', '2', '', null, '0', '编辑', '2016-02-28 00:02:01', null);
INSERT INTO `tb_resource` VALUES ('17', '4', '删除', 'resource:delete', '2', '', null, '0', '删除', '2016-02-28 00:03:03', null);
INSERT INTO `tb_resource` VALUES ('21', '0', '日志管理', 'logininfo', '0', null, 'am-icon-tag', '0', '日志管理', '2017-01-04 17:54:59', '2017-01-04 17:54:59');
INSERT INTO `tb_resource` VALUES ('22', '21', '用户登录日志', 'logininfo:userLogin', '1', 'loginlog/listUI', '', '0', null, '2017-01-04 17:55:52', '2017-01-04 17:55:52');
INSERT INTO `tb_resource` VALUES ('23', '0', 'CMS管理', 'cms', '0', null, 'am-icon-newspaper-o', '0', null, '2017-01-05 18:20:00', '2017-01-05 18:20:00');
INSERT INTO `tb_resource` VALUES ('24', '23', '新闻管理', 'cms:news', '1', 'news/listUI', '', '0', null, '2017-01-05 18:20:27', '2017-01-05 18:20:27');
INSERT INTO `tb_resource` VALUES ('25', '1', '部门管理', 'dept', '1', 'dept/listUI', '', '0', '', '2017-05-08 19:07:46', '2017-05-08 19:07:46');
INSERT INTO `tb_resource` VALUES ('26', '25', '新增', 'dept:add', '2', '', '', '0', '', '2017-05-10 12:05:34', '2017-05-10 12:05:34');
INSERT INTO `tb_resource` VALUES ('27', '25', '编辑', 'dept:edit', '2', '', '', '0', '', '2017-05-10 12:06:00', '2017-05-10 12:06:31');
INSERT INTO `tb_resource` VALUES ('28', '25', '删除', 'dept:delete', '2', '', '', '0', '', '2017-05-10 12:06:15', '2017-05-10 12:06:48');

-- ----------------------------
-- Table structure for `tb_resources_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_resources_role`;
CREATE TABLE `tb_resources_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL COMMENT '资源id',
  `r_id` int(11) DEFAULT NULL COMMENT '角色id',
  `t_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_r_resource_role` (`s_id`),
  KEY `FK_r_role_resource` (`r_id`),
  CONSTRAINT `tb_resources_role_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `tb_resource` (`s_id`),
  CONSTRAINT `tb_resources_role_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `tb_role` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='角色权限映射表';

-- ----------------------------
-- Records of tb_resources_role
-- ----------------------------
INSERT INTO `tb_resources_role` VALUES ('1', '1', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('2', '2', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('3', '3', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('4', '4', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('5', '5', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('7', '8', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('8', '9', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('9', '10', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('10', '11', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('11', '12', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('12', '13', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('13', '14', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('14', '15', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('15', '16', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('16', '17', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('17', '6', '1', '2016-12-29 12:49:21');
INSERT INTO `tb_resources_role` VALUES ('18', '7', '1', '2016-12-29 16:37:16');
INSERT INTO `tb_resources_role` VALUES ('19', '1', '2', '2016-12-29 16:37:35');
INSERT INTO `tb_resources_role` VALUES ('20', '2', '2', '2016-12-29 16:37:35');
INSERT INTO `tb_resources_role` VALUES ('21', '3', '2', '2016-12-29 16:37:35');
INSERT INTO `tb_resources_role` VALUES ('22', '4', '2', '2016-12-29 16:37:35');
INSERT INTO `tb_resources_role` VALUES ('23', '7', '2', '2016-12-29 16:37:35');
INSERT INTO `tb_resources_role` VALUES ('24', '11', '2', '2016-12-29 16:37:35');
INSERT INTO `tb_resources_role` VALUES ('25', '15', '2', '2016-12-29 16:37:35');
INSERT INTO `tb_resources_role` VALUES ('26', '21', '1', '2017-01-04 17:56:02');
INSERT INTO `tb_resources_role` VALUES ('27', '22', '1', '2017-01-04 17:56:02');
INSERT INTO `tb_resources_role` VALUES ('28', '23', '1', '2017-01-05 18:56:38');
INSERT INTO `tb_resources_role` VALUES ('29', '24', '1', '2017-01-05 18:56:38');
INSERT INTO `tb_resources_role` VALUES ('30', '1', '3', '2017-04-07 17:49:56');
INSERT INTO `tb_resources_role` VALUES ('31', '2', '3', '2017-04-07 17:49:56');
INSERT INTO `tb_resources_role` VALUES ('32', '7', '3', '2017-04-07 17:49:56');
INSERT INTO `tb_resources_role` VALUES ('33', '25', '1', '2017-05-08 19:07:53');
INSERT INTO `tb_resources_role` VALUES ('34', '26', '1', '2017-05-10 12:06:56');
INSERT INTO `tb_resources_role` VALUES ('35', '27', '1', '2017-05-10 12:06:56');
INSERT INTO `tb_resources_role` VALUES ('36', '28', '1', '2017-05-10 12:06:56');
INSERT INTO `tb_resources_role` VALUES ('37', '1', '4', '2017-05-10 20:38:23');
INSERT INTO `tb_resources_role` VALUES ('38', '3', '4', '2017-05-10 20:38:23');
INSERT INTO `tb_resources_role` VALUES ('39', '11', '4', '2017-05-10 20:38:23');
INSERT INTO `tb_resources_role` VALUES ('40', '2', '4', '2017-05-10 20:45:06');
INSERT INTO `tb_resources_role` VALUES ('41', '7', '4', '2017-05-10 20:45:06');

-- ----------------------------
-- Table structure for `tb_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `r_name` varchar(50) NOT NULL COMMENT '角色名称',
  `r_key` varchar(50) NOT NULL COMMENT '角色key',
  `r_status` int(11) DEFAULT '0' COMMENT '角色状态,0：正常；1：删除',
  `r_description` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `r_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `r_update_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `r_dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '超级管理员', 'administrator', '0', '超级管理员', '2016-01-05 12:07:42', '2016-02-27 22:30:15', '1');
INSERT INTO `tb_role` VALUES ('2', '管理员', 'admin', '0', '管理员', '2016-01-05 12:07:42', '2016-12-26 19:17:05', '1');
INSERT INTO `tb_role` VALUES ('3', '普通用户', 'customer', '0', '普通用户', '2016-02-28 17:09:40', '2017-05-11 11:13:23', '3');
INSERT INTO `tb_role` VALUES ('4', '深圳综合1角色', 'szzonghe1role', '0', '', '2017-05-10 20:37:27', '2017-05-10 20:37:27', '17');

-- ----------------------------
-- Table structure for `tb_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_user`;
CREATE TABLE `tb_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL COMMENT '角色id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `t_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_r_role_user` (`r_id`),
  KEY `FK_r_user_role` (`u_id`),
  CONSTRAINT `tb_role_user_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `tb_role` (`r_id`),
  CONSTRAINT `tb_role_user_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `tb_user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户角色映射表';

-- ----------------------------
-- Records of tb_role_user
-- ----------------------------
INSERT INTO `tb_role_user` VALUES ('1', '1', '1', '2017-05-01 11:25:56');
INSERT INTO `tb_role_user` VALUES ('6', '3', '37', '2017-05-11 11:14:08');
INSERT INTO `tb_role_user` VALUES ('7', '3', '38', '2017-05-10 18:51:41');
INSERT INTO `tb_role_user` VALUES ('8', '4', '39', '2017-05-10 20:38:53');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `u_name` varchar(100) NOT NULL COMMENT '真实姓名',
  `u_account_name` varchar(100) NOT NULL COMMENT '账户名称',
  `u_password` varchar(100) NOT NULL COMMENT '用户密码',
  `u_delete_status` int(11) DEFAULT '0' COMMENT '逻辑删除状态',
  `u_locked` int(11) DEFAULT '0' COMMENT '是否锁定',
  `u_description` varchar(200) DEFAULT NULL COMMENT '用户描述',
  `u_credentials_salt` varchar(500) NOT NULL COMMENT '加密盐',
  `u_creator_name` varchar(100) NOT NULL COMMENT '创建者',
  `u_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `u_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `u_dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_account_name_unique` (`u_account_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='用户账户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'Administrator', 'administrator', '5043b4d12c263931476370851cd86f5f', '0', '0', '2211', 'f0e2fb5537cbf46e7af9ca5ab5ab3629', 'admin', '2016-12-23 11:08:55', '2017-05-12 11:25:48', '1');
INSERT INTO `tb_user` VALUES ('37', 'test', 'test', '85b6b52156eec9d365b7aad3fb19f631', '0', '0', '123123', '8d9a7ac5f7944ff91414cb66cb578848', 'administrator', '2017-04-07 17:49:22', '2017-05-11 11:14:07', '3');
INSERT INTO `tb_user` VALUES ('38', '综合user1', 'zonghe1', '6d0c045423781687f7284edc0341be4a', '0', '0', '', 'bbfcca003d2957c67a829b9b273c7286', 'administrator', '2017-05-10 18:51:41', '2017-05-10 18:51:41', '17');
INSERT INTO `tb_user` VALUES ('39', 'zonghe2', 'zonghe2', '333eb6bce67b7bf12a3ef52286b04032', '0', '0', '', '9655a76ca4a8d5bd67aa1ec9f5b3e17f', 'administrator', '2017-05-10 20:38:53', '2017-05-10 20:38:53', '6');
