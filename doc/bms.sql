/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : bms

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-29 17:36:45
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('1', null, '系统基础管理', 'system', '0', '', 'am-icon-list', '0', '系统基础管理', '2016-01-05 12:11:12', '2016-02-25 14:07:46');
INSERT INTO `tb_resource` VALUES ('2', '1', '用户管理', 'system:user', '1', '/user/listUI', '', '0', '用户管理', '2016-01-08 12:37:10', '2016-01-22 11:06:59');
INSERT INTO `tb_resource` VALUES ('3', '1', '角色管理', 'system:role', '1', '/role/listUI', '', '0', '角色管理', '2016-01-11 22:51:07', '2016-01-22 11:07:04');
INSERT INTO `tb_resource` VALUES ('4', '1', '资源管理', 'system:resource', '1', '/resource/listUI', '', '0', '资源管理', '2016-01-11 22:51:55', '2016-01-22 11:07:10');
INSERT INTO `tb_resource` VALUES ('5', null, '系统监控管理', 'monitor', '0', '', 'am-icon-pencil', '0', '系统监控管理', '2016-01-05 12:11:12', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('6', '5', 'Druid监控', 'monitor:druid', '1', '/druid', '', '0', 'Druid监控', '2016-01-11 22:45:27', '2016-03-20 15:00:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='角色权限映射表';

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
INSERT INTO `tb_role` VALUES ('3', '普通用户', 'customer', '0', '普通用户1', '2016-02-28 17:09:40', '2016-12-28 11:36:08');

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
INSERT INTO `tb_role_user` VALUES ('1', '1', '23', '2016-12-29 17:29:35');
INSERT INTO `tb_role_user` VALUES ('2', '2', '33', '2016-12-29 17:30:08');

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
INSERT INTO `tb_user` VALUES ('23', 'Administrator', 'administrator', '55e15e1c086ef0b2f6f81b713d500e28', '0', '0', '22', '8d78869f470951332959580424d4bf4f', 'admin', '2016-12-23 11:08:55', '2016-12-29 17:32:50');
INSERT INTO `tb_user` VALUES ('33', 'Admin', 'admin', '033f34a794bfdc00b95da2144217e490', '0', '0', 'Admin', 'dcb07895c376453a52bcf3d7903d7eaa', 'admin', '2016-12-29 17:30:08', '2016-12-29 17:30:08');


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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='新闻管理';
