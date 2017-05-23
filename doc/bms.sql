/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : bms

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-23 17:13:27
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
INSERT INTO `tb_dept` VALUES ('7', '1', '0,1,', '香港', 'AA科技香港办事处', null, '2');
INSERT INTO `tb_dept` VALUES ('8', '7', '0,1,7,', '产品部', '产品部', null, '1');
INSERT INTO `tb_dept` VALUES ('9', '7', '0,1,7,', '研发部', '研发部', null, '1');
INSERT INTO `tb_dept` VALUES ('10', '7', '0,1,7,', '项目部', '项目部', 'dsdddddd12aa', '4');
INSERT INTO `tb_dept` VALUES ('14', '1', '0,1,', '北京', 'AA科技北京办事处', '', '1');
INSERT INTO `tb_dept` VALUES ('15', '14', '0,1,14,', '产品部', '产品部门', '', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_login_info
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_log_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_log_info`;
CREATE TABLE `tb_log_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `method_args` varchar(255) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `operate_ip` varchar(100) DEFAULT NULL,
  `times` varchar(100) DEFAULT NULL,
  `exception` text,
  `operate_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log_info
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='资源表';

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
INSERT INTO `tb_resource` VALUES ('29', '1', '定时任务', 'schedule', '1', 'schedule/listUI', '', '0', '', '2017-05-15 15:45:32', '2017-05-15 18:28:53');
INSERT INTO `tb_resource` VALUES ('30', '21', '操作日志', 'loginfo', '1', 'loginfo/listUI', '', '0', '', '2017-05-23 16:49:40', '2017-05-23 16:49:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='角色权限映射表';

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
INSERT INTO `tb_resources_role` VALUES ('33', '25', '1', '2017-05-08 19:07:53');
INSERT INTO `tb_resources_role` VALUES ('34', '26', '1', '2017-05-10 12:06:56');
INSERT INTO `tb_resources_role` VALUES ('35', '27', '1', '2017-05-10 12:06:56');
INSERT INTO `tb_resources_role` VALUES ('36', '28', '1', '2017-05-10 12:06:56');
INSERT INTO `tb_resources_role` VALUES ('42', '29', '1', '2017-05-15 15:45:39');
INSERT INTO `tb_resources_role` VALUES ('43', '30', '1', '2017-05-23 16:49:48');

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
  PRIMARY KEY (`r_id`),
  KEY `r_dept_id_fk` (`r_dept_id`),
  CONSTRAINT `r_dept_id_fk` FOREIGN KEY (`r_dept_id`) REFERENCES `tb_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '超级管理员', 'administrator', '0', '超级管理员', '2016-01-05 12:07:42', '2016-02-27 22:30:15', '1');
INSERT INTO `tb_role` VALUES ('2', '管理员', 'admin', '0', '管理员', '2016-01-05 12:07:42', '2016-12-26 19:17:05', '1');
INSERT INTO `tb_role` VALUES ('3', '普通用户', 'customer', '0', '普通用户', '2016-02-28 17:09:40', '2017-05-11 11:13:23', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户角色映射表';

-- ----------------------------
-- Records of tb_role_user
-- ----------------------------
INSERT INTO `tb_role_user` VALUES ('1', '1', '1', '2017-05-01 11:25:56');
INSERT INTO `tb_role_user` VALUES ('9', '3', '40', '2017-05-15 16:55:37');

-- ----------------------------
-- Table structure for `tb_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `tb_schedule`;
CREATE TABLE `tb_schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务分组',
  `cron` varchar(200) DEFAULT NULL COMMENT 'cron表达式',
  `bean_name` varchar(500) DEFAULT NULL COMMENT '任务执行时调用哪个BEAN',
  `is_concurrent` char(1) DEFAULT NULL COMMENT '是否有状态',
  `method_name` varchar(200) DEFAULT NULL COMMENT '任务调用的方法名',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `remarks` varchar(200) DEFAULT NULL COMMENT '描述',
  `status` char(1) DEFAULT NULL COMMENT '任务状态 0禁用 1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='任务调度';

-- ----------------------------
-- Records of tb_schedule
-- ----------------------------
INSERT INTO `tb_schedule` VALUES ('1', '测试任务', '测试', '0/1 * * * * ?', 'taskTest', '2', 'run', '1', '2016-07-15 09:44:53', 'administrator', '2017-05-16 17:48:32', '每一秒执行一次123', '0');
INSERT INTO `tb_schedule` VALUES ('5', '测试', '123123', '0 0/5 * * * ?', '12312', '2', 'run', 'administrator', '2017-05-16 18:13:28', null, null, '', '0');

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
  `u_img` varchar(255) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_account_name_unique` (`u_account_name`) USING BTREE,
  KEY `u_dept_id_fk` (`u_dept_id`),
  CONSTRAINT `u_dept_id_fk` FOREIGN KEY (`u_dept_id`) REFERENCES `tb_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='用户账户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'Eric', 'administrator', '5043b4d12c263931476370851cd86f5f', '0', '0', 'desc123213', 'f0e2fb5537cbf46e7af9ca5ab5ab3629', 'admin', '2016-12-23 11:08:55', '2017-05-22 17:57:59', '1', 'upload/other/57639.jpg', '234448626@qq.com');
INSERT INTO `tb_user` VALUES ('40', '技服1', 'jifu1', '8ec8acf3e3130cf22688ed3cc5c1b244', '0', '0', '', '49245faddc44fd752326484148ab8fa6', 'administrator', '2017-05-15 16:55:37', '2017-05-15 16:55:37', '3', null, null);
