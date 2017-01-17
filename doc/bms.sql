/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : bms

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-01-17 14:30:33
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_login_info
-- ----------------------------
INSERT INTO `tb_login_info` VALUES ('16', 'admin', '127.0.0.1', '2017-01-04 15:48:35', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('17', 'admin', '127.0.0.1', '2017-01-04 16:00:41', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('18', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-04 17:16:41', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('19', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-04 17:17:06', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('20', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-04 17:18:12', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('21', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-04 17:18:53', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('22', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-04 17:21:05', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('23', 'Administrator', '0:0:0:0:0:0:0:1', '2017-01-04 17:23:56', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('24', 'Administrator123', '0:0:0:0:0:0:0:1', '2017-01-04 17:24:01', '账户不存在！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('25', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-04 17:24:05', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('26', 'admin', '0:0:0:0:0:0:0:1', '2017-01-04 18:03:16', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('27', 'Administrator', '0:0:0:0:0:0:0:1', '2017-01-04 18:03:20', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('28', 'Administrator123', '0:0:0:0:0:0:0:1', '2017-01-04 18:03:23', '账户不存在！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('29', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-04 18:03:27', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('30', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-04 18:46:48', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('31', 'Administrator', '0:0:0:0:0:0:0:1', '2017-01-05 18:18:31', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('32', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-05 18:18:34', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('33', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-05 18:56:31', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('34', 'Administratora', '0:0:0:0:0:0:0:1', '2017-01-06 15:25:16', '账户不存在！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('35', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-06 15:25:21', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('36', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-06 16:03:06', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('37', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-06 17:34:27', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('38', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-06 20:02:15', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('39', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-06 20:24:18', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('40', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-06 20:37:02', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('41', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-06 20:38:29', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('42', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 10:11:41', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('43', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 10:25:37', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('44', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 10:28:22', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('45', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 10:32:27', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('46', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 10:34:05', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('47', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 11:01:32', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('48', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 12:46:26', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('49', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 15:26:50', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('50', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 16:39:55', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('51', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 18:00:43', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('52', 'administratora', '0:0:0:0:0:0:0:1', '2017-01-09 18:29:11', '账户不存在！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('53', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-09 18:29:16', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('54', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-10 10:56:29', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('55', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-10 11:36:05', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('56', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-10 13:01:55', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('57', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-10 15:52:16', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('58', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-10 15:52:23', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('59', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-11 10:03:25', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('60', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-11 10:03:32', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('61', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-11 10:36:22', '密码错误！', '登录失败');
INSERT INTO `tb_login_info` VALUES ('62', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-11 10:36:28', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('63', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-11 10:38:59', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('64', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-11 11:03:48', null, '登录成功');
INSERT INTO `tb_login_info` VALUES ('65', 'administrator', '0:0:0:0:0:0:0:1', '2017-01-11 11:51:34', null, '登录成功');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='栏目管理';

-- ----------------------------
-- Records of tb_news
-- ----------------------------
INSERT INTO `tb_news` VALUES ('9', null, '数码国庆7天乐', '999a', 'upload/other/85489.png', '1', '这是描述', '<p><em><strong>&aacute;dfdfdfdfdf</strong></em></p>\r\n', '2017-01-09 18:35:51', 'administrator', '2017-01-10 12:18:02', 'administrator');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('1', null, '系统基础管理', 'system', '0', '', 'am-icon-list', '0', '系统基础管理', '2016-01-05 12:11:12', '2016-02-25 14:07:46');
INSERT INTO `tb_resource` VALUES ('2', '1', '用户管理', 'system:user', '1', 'user/listUI', '', '0', '用户管理', '2016-01-08 12:37:10', '2016-01-22 11:06:59');
INSERT INTO `tb_resource` VALUES ('3', '1', '角色管理', 'system:role', '1', 'role/listUI', '', '0', '角色管理', '2016-01-11 22:51:07', '2016-01-22 11:07:04');
INSERT INTO `tb_resource` VALUES ('4', '1', '资源管理', 'system:resource', '1', 'resource/listUI', '', '0', '资源管理', '2016-01-11 22:51:55', '2016-01-22 11:07:10');
INSERT INTO `tb_resource` VALUES ('5', null, '系统监控管理', 'monitor', '0', '', 'am-icon-pencil', '0', '系统监控管理', '2016-01-05 12:11:12', '2016-02-25 14:07:48');
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
INSERT INTO `tb_resource` VALUES ('21', null, '日志管理', 'logininfo', '0', null, 'am-icon-tag', '0', '日志管理', '2017-01-04 17:54:59', '2017-01-04 17:54:59');
INSERT INTO `tb_resource` VALUES ('22', '21', '用户登录日志', 'logininfo:userLogin', '1', 'loginlog/listUI', '', '0', null, '2017-01-04 17:55:52', '2017-01-04 17:55:52');
INSERT INTO `tb_resource` VALUES ('23', null, 'CMS管理', 'cms', '0', null, 'am-icon-newspaper-o', '0', null, '2017-01-05 18:20:00', '2017-01-05 18:20:00');
INSERT INTO `tb_resource` VALUES ('24', '23', '新闻管理', 'cms:news', '1', 'news/listUI', '', '0', null, '2017-01-05 18:20:27', '2017-01-05 18:20:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='角色权限映射表';

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
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '超级管理员', 'administrator', '0', '超级管理员', '2016-01-05 12:07:42', '2016-02-27 22:30:15');
INSERT INTO `tb_role` VALUES ('2', '管理员', 'admin', '0', '管理员', '2016-01-05 12:07:42', '2016-12-26 19:17:05');
INSERT INTO `tb_role` VALUES ('3', '普通用户', 'customer', '0', '普通用户1', '2016-02-28 17:09:40', '2017-01-03 12:18:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户角色映射表';

-- ----------------------------
-- Records of tb_role_user
-- ----------------------------
INSERT INTO `tb_role_user` VALUES ('1', '1', '23', '2017-01-03 12:18:26');
INSERT INTO `tb_role_user` VALUES ('2', '2', '33', '2017-01-03 20:09:48');

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
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_account_name_unique` (`u_account_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='用户账户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('23', 'Administrator', 'administrator', '5043b4d12c263931476370851cd86f5f', '0', '0', '2211', 'f0e2fb5537cbf46e7af9ca5ab5ab3629', 'admin', '2016-12-23 11:08:55', '2017-01-03 14:18:28');
INSERT INTO `tb_user` VALUES ('33', 'Admin', 'admin', '033f34a794bfdc00b95da2144217e490', '0', '0', 'Admin111', 'dcb07895c376453a52bcf3d7903d7eaa', 'admin', '2016-12-29 17:30:08', '2017-01-03 20:09:47');
