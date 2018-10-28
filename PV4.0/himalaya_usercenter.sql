/*
Navicat MySQL Data Transfer

Source Server         : 10.0.1.40
Source Server Version : 50718
Source Host           : 10.0.1.40:3306
Source Database       : himalaya_usercenter

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-10-25 18:38:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_element
-- ----------------------------
DROP TABLE IF EXISTS `base_element`;
CREATE TABLE `base_element` (
  `id` varchar(40) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '资源编码',
  `type` varchar(255) DEFAULT NULL COMMENT '资源类型',
  `name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `uri` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `menu_id` varchar(255) DEFAULT NULL COMMENT '资源关联菜单',
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL COMMENT '资源树状检索路径',
  `method` varchar(10) DEFAULT NULL COMMENT '资源请求类型',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_element
-- ----------------------------
INSERT INTO `base_element` VALUES ('10', 'menuManager:btn_add', 'button', '新增', '/admin/menu/{*}', '6', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('11', 'menuManager:btn_edit', 'button', '编辑', '/admin/menu/{*}', '6', '', '', 'PUT', '', null, '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('12', 'menuManager:btn_del', 'button', '删除', '/admin/menu/{*}', '6', '', '', 'DELETE', '', null, '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('13', 'menuManager:btn_element_add', 'button', '新增元素', '/admin/element', '6', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('14', 'menuManager:btn_element_edit', 'button', '编辑元素', '/admin/element/{*}', '6', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('15', 'menuManager:btn_element_del', 'button', '删除元素', '/admin/element/{*}', '6', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('16', 'groupManager:btn_add', 'button', '新增', '/admin/group', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('17', 'groupManager:btn_edit', 'button', '编辑', '/admin/group/{*}', '7', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('18', 'groupManager:btn_del', 'button', '删除', '/admin/group/{*}', '7', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('19', 'groupManager:btn_userManager', 'button', '分配用户', '/admin/group/{*}/user', '7', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('20', 'groupManager:btn_resourceManager', 'button', '分配权限', '/admin/group/{*}/authority', '7', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('21', 'groupManager:menu', 'uri', '分配菜单', '/admin/group/{*}/authority/menu', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('22', 'groupManager:element', 'uri', '分配资源', '/admin/group/{*}/authority/element', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('23', 'userManager:view', 'uri', '查看', '/admin/user/{*}', '1', '', '', 'GET', '', null, '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('24', 'menuManager:view', 'uri', '查看', '/admin/menu/{*}', '6', '', '', 'GET', '', null, '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `base_element` VALUES ('27', 'menuManager:element_view', 'uri', '查看', '/admin/element/{*}', '6', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('28', 'groupManager:view', 'uri', '查看', '/admin/group/{*}', '7', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('3', 'userManager:btn_add', 'button', '新增', '/admin/user', '1', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('32', 'groupTypeManager:view', 'uri', '查看', '/admin/groupType/{*}', '8', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('33', 'groupTypeManager:btn_add', 'button', '新增', '/admin/groupType', '8', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('34', 'groupTypeManager:btn_edit', 'button', '编辑', '/admin/groupType/{*}', '8', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('35', 'groupTypeManager:btn_del', 'button', '删除', '/admin/groupType/{*}', '8', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('4', 'userManager:btn_edit', 'button', '编辑', '/admin/user/{*}', '1', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('41', 'gateLogManager:view', 'button', '查看', '/admin/gateLog', '27', null, null, 'GET', '', null, '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('42', 'serviceManager:view', 'URI', '查看', '/auth/service/{*}', '30', null, null, 'GET', null, null, '2017-12-26 20:17:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('43', 'serviceManager:btn_add', 'button', '新增', '/auth/service', '30', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('44', 'serviceManager:btn_edit', 'button', '编辑', '/auth/service/{*}', '30', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('45', 'serviceManager:btn_del', 'button', '删除', '/auth/service/{*}', '30', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('46', 'serviceManager:btn_clientManager', 'button', '服务授权', '/auth/service/{*}/client', '30', null, null, 'POST', null, null, '2017-12-30 16:32:48', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('5', 'userManager:btn_del', 'button', '删除', '/admin/user/{*}', '1', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_element` VALUES ('9', 'menuManager:element', 'uri', '按钮页面', '/admin/element', '6', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_group
-- ----------------------------
DROP TABLE IF EXISTS `base_group`;
CREATE TABLE `base_group` (
  `id` varchar(40) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '角色编码',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `parent_id` varchar(40) NOT NULL COMMENT '上级节点',
  `path` varchar(2000) DEFAULT NULL COMMENT '树状关系',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `group_type` varchar(40) NOT NULL COMMENT '角色组类型',
  `description` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_group
-- ----------------------------
INSERT INTO `base_group` VALUES ('09faacd7c9c54a2ea490148a145bd9b3', '1003', '33', '-1', null, null, '1', null, '0', '2018-10-18 04:43:12', null, null, null, '2018-10-19 01:31:54', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('1', '1001', '最小访问权限', '-1', '/testGroup/visitorRole', null, '-1', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('10c4c7cfa82c473b890e8c91fc2e4754', '2222', '资料管理员', '-1', null, null, '1', null, '1', '2018-10-21 20:33:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('125bbceb1df04178bbe7b0f852f94090', '1001', '11', '-1', null, null, '1', null, '0', '2018-10-18 04:43:12', null, null, null, '2018-10-19 01:31:54', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('14ada9278d884fd89a694648381ee065', null, 'yanfa', '-1', null, null, '2', null, '0', '2018-10-19 03:30:06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('16', 'visitor1', '游客11', '-1', null, null, '2', null, '0', '2018-09-19 07:06:30', null, 'stri1212ng', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('17', 'test', 'ceshi1', '-1', null, null, '2', null, '0', '2018-09-19 07:13:27', null, 'string', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('18', 'jishu', '技术部', '-1', null, null, '2', null, '0', '2018-09-19 07:14:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('1b74ecd771b24b61b25f692069d5c05f', '1002', '测试', '-1', null, null, '1', null, '1', '2018-10-21 21:05:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('24b4b41a5f674cfab47557dbcec26500', null, 'sd', '-1', null, null, '2', null, '0', '2018-10-19 03:44:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('25680efad130428c8a22213f0c954c20', '1002', '水电费', '-1', null, null, '1', null, '1', '2018-10-23 00:48:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('2f75ce15840e4cb098ba8ed9aee8307c', '1003', '数据质控QC', '-1', null, null, '1', null, '0', '2018-10-21 21:02:17', null, null, null, '2018-10-23 22:39:56', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('3256de7114dd4aa986eb39260ed8e138', 'develop', '开发', '-1', null, null, '1', null, '0', '2018-10-16 22:39:47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('3d3982122a76424d971dee157d743e86', null, 'asdsf', '-1', null, null, '2', null, '0', '2018-10-19 03:47:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('4', 'visitorRole', '游客', '3', '/testGroup/visitorRole', null, '1', '', '0', null, null, null, null, '2018-10-14 04:13:19', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('42d2a0d5883a431e815d0dd38a8e3503', '1002', '22', '-1', null, null, '1', null, '0', '2018-10-18 04:43:12', null, null, null, '2018-10-19 01:31:54', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('4627cc9018ad4c8f873581bd2c439d7c', '1002', '水电费', '-1', null, null, '1', null, '0', '2018-10-23 00:58:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('46d1ffa4d0934b639b552008d3fa37eb', null, 'ds', '-1', null, null, '2', null, '0', '2018-10-19 03:42:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('47b5e982a7434bfaa8cfa01aa364b599', null, 'fgh', '-1', null, null, '2', null, '0', '2018-10-22 23:06:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('6', 'company', 'AG集团', '-1', '/company', null, '2', '', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('61222e2d2d78496ab16e9aed7244c22c', '1002', 'sdf', '-1', null, null, '1', null, '0', '2018-10-23 02:06:10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('66014e4e073c4507a40a3672bde23451', '1002', '大声道', '-1', null, null, '1', null, '0', '2018-10-22 05:59:05', null, null, null, '2018-10-22 20:02:42', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('6647a8ab421e4503bcf8a6100394c6a6', null, 'we', '-1', null, null, '2', null, '0', '2018-10-19 03:39:39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('672589ab5d0d42ef846e93e1b0bb7d45', '1002', 'zuifsd', '-1', null, null, '1', null, '0', '2018-10-24 03:20:03', null, null, null, '2018-10-24 21:08:42', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('7', 'financeDepart', '财务部', '6', '/company/financeDepart', null, '2', '', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('711ef8b4fc6946adbbb758084f51fee4', null, '测试部门', '-1', null, null, '2', null, '0', '2018-10-19 02:30:44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('767d8b91c61546edae5b3b62b46e64c2', '1002', '数据录入员', '2fde74f7d692487685e07c5261a01425', null, null, '1', null, '0', '2018-10-17 07:08:38', null, null, null, '2018-10-23 22:39:56', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('7834068722cb417c8c7634a2339af52e', null, 'asd', '-1', null, null, '2', null, '0', '2018-10-19 03:47:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('7a23855aafb140f2a48ca81220592ff5', null, null, '-1', null, null, '2', null, '0', '2018-10-24 03:06:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('8', 'hrDepart', '人力资源部', '6', '/company/hrDepart', null, '2', '', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('914d2200978b4234a56835de859d4e17', '1002', '大声道', '-1', null, null, '1', null, '1', '2018-10-22 02:44:52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('984ac7a33fee44bb8db02b9d7d0254e4', null, null, '-1', null, null, '2', null, '0', '2018-10-17 20:46:47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('98bfe8d007ad44a68c86ddc8d4d7b352', null, 'dfg', '-1', null, null, '2', null, '0', '2018-10-22 23:07:30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('9e5297d82eed4a3285142415b8796a21', null, '研发', '-1', null, null, '2', null, '0', '2018-10-19 01:46:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('a202dc8168db4e0ab237fc4328708699', null, '九芝堂pv', '-1', null, null, '2', null, '0', '2018-10-19 02:37:10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('af14d3f9a5ca4df3bad8ba8beb542ef8', '1002', '权限A', '-1', null, null, '1', null, '0', '2018-10-22 01:54:13', null, null, null, '2018-10-23 02:06:40', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('bdddddd2b79743438e8d9ada0f7d07a3', null, '22', '-1', null, null, '2', null, '0', '2018-10-17 00:38:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('cd8cbe8587534c9690d0004f16bf7070', null, 'er', '-1', null, null, '2', null, '0', '2018-10-23 01:14:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('d8348cee33a943e68e42191a095c74ae', '1002', 'er', '-1', null, null, '1', null, '1', '2018-10-22 03:05:56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('d83accf62e3745f5a06767cfb2417ff1', null, 'df', '-1', null, null, '2', null, '0', '2018-10-19 03:43:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('f1a7422b8bf54eb8bfa15e21faa127c7', null, null, '-1', null, null, '2', null, '0', '2018-10-21 22:38:14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('f638707664934dc8b8a5f422f7dcd151', null, 'qr', '-1', null, null, '2', null, '0', '2018-10-19 03:45:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('f6669b6f607f46a9bed901ca6d9a6d0f', '1003', '佛挡杀佛', '-1', null, null, '1', null, '0', '2018-10-10 04:34:12', null, null, null, '2018-10-14 04:13:19', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('f80e49ab2f3a431f8a4425ecd4734ebe', null, '开发部', '-1', null, null, '2', null, '0', '2018-10-24 02:33:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('fba9676c7f1c4d5898479802d275acde', '1004', '44', '-1', null, null, '1', null, '0', '2018-10-18 04:43:12', null, null, null, '2018-10-19 01:31:54', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('fc20868915b546d483d68d38e36738a5', '001', 'role001', '-1', null, null, '1', null, '0', '2018-10-10 01:19:45', 'string', 'string', 'string', '2018-10-14 04:13:19', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_group_leader
-- ----------------------------
DROP TABLE IF EXISTS `base_group_leader`;
CREATE TABLE `base_group_leader` (
  `id` varchar(40) NOT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_group_leader
-- ----------------------------
INSERT INTO `base_group_leader` VALUES ('13', '1', '1', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_leader` VALUES ('6', '9', '4', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_group_member
-- ----------------------------
DROP TABLE IF EXISTS `base_group_member`;
CREATE TABLE `base_group_member` (
  `id` varchar(40) NOT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_group_member
-- ----------------------------
INSERT INTO `base_group_member` VALUES ('0077a386acef4c739d485b0a8346f587', 'f638707664934dc8b8a5f422f7dcd151', '399afa6351dc40ffa4707a44c6886bfa', null, '0', '2018-10-19 03:45:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('0ad5e9957d5b4392b597cad3e2e73a41', 'bdddddd2b79743438e8d9ada0f7d07a3', '1d7ccac3673742738ef3bdcde79f3350', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('10', '9', '22', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('102ad42a77d74b9989eb5004a2353709', 'f80e49ab2f3a431f8a4425ecd4734ebe', '5b390cca0b9745ea83c7e690ce3b2aaa', null, '0', '2018-10-24 02:33:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('11', '4', '50', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('12', '4', '51', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('13', '4', '59', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('1690421c87894667a63dc436b8da857c', '984ac7a33fee44bb8db02b9d7d0254e4', 'bbe241b341ff44caaafd442422eb5b51', null, '0', '2018-10-17 20:46:47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('17', '16', '64', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('18', '16', '65', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('19', '17', '66', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('2', '4', '2', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('20', '18', '67', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('20b0a54de6b44b4b9ce7022b49fda763', 'd83accf62e3745f5a06767cfb2417ff1', 'b5db858612804d109be53d34336d1a8f', null, '0', '2018-10-19 03:43:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('28b78ebd051044868c2db62609a75dba', '3256de7114dd4aa986eb39260ed8e138', '88c9992e46c944c0af378966992d499d', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('31edee6d2ab648358d4826b6811c9890', '3d3982122a76424d971dee157d743e86', '450f5434205049eb9586e664bd29b309', null, '0', '2018-10-19 03:47:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('34f6deeb39834b0787ac7b58b529d3ae', 'f1a7422b8bf54eb8bfa15e21faa127c7', '605595efceeb49de86bfc25d4110b4a6', null, '0', '2018-10-21 22:38:14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('665fb852a6c04eee9a03ea4c19dc0f03', '69807e31bdd146e08febb9e447658cb1', '54ac1a2ac2ee4364adca30a6741c6051', null, '0', '2018-10-19 03:34:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('6aaf3e97bbf44f3c9b918be21dfd45fb', '47b5e982a7434bfaa8cfa01aa364b599', '6513ea7752c04f83a430d1ccd48399df', null, '0', '2018-10-22 23:06:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('7626bc080ccc498fa5a35dbba34f930c', '14ada9278d884fd89a694648381ee065', '7de23f6a6a234fecb6b7fc5879df2f4a', null, '0', '2018-10-19 03:30:06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('7a2a46a5e6a74461b9d7e7ea0268a5ac', '6647a8ab421e4503bcf8a6100394c6a6', 'ccf5736518a24f5abdf353632c2e5028', null, '0', '2018-10-19 03:39:39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('7db402318b7b42e794079fe9826e56bb', '46d1ffa4d0934b639b552008d3fa37eb', 'a14c5aef952f4976aeb9a08859931ec0', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('845fdfad9333449db422135ddb8e04aa', 'cd8cbe8587534c9690d0004f16bf7070', '38b0fd5610524b3db61e7c1e1809bca2', null, '0', '2018-10-23 01:14:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('8e7b7d5dcae24c75b591a55d3a2e2252', '7834068722cb417c8c7634a2339af52e', '3adbf6655e394584830a8e0351034254', null, '0', '2018-10-19 03:47:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('9', '9', '4', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('96f372454ed34908ad08d055bbaa4466', '69807e31bdd146e08febb9e447658cb1', '499bd5a65f8b4cc5a49fc7d55611bf25', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('a01606808bc64ed09d4b1548e9044e95', '7a23855aafb140f2a48ca81220592ff5', 'aeeeae4778f34f90857f33986b25ed99', null, '0', '2018-10-24 03:06:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('a5b126975b9a4b3a8973ae99723d1135', '9e5297d82eed4a3285142415b8796a21', 'c246bc0584e848159f50b43f1e05cdec', null, '0', '2018-10-19 01:46:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('c4d81c276ec54130abb91b64d2862c2b', '46d1ffa4d0934b639b552008d3fa37eb', '825aa76fa03448009aaf7fb59c5d622e', null, '0', '2018-10-19 03:42:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('c620814f85b140a19948fc1c79ae53ba', '9e5297d82eed4a3285142415b8796a21', '56a3f776e1de4e4fae0c0458cb21e3f3', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('cc6331fbc68d4058be5234cf76e4bd5c', '69807e31bdd146e08febb9e447658cb1', '2226c66a2d2b436388ff7a8afd658afb', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('d62e8442756a41629cce82ef87b46954', '711ef8b4fc6946adbbb758084f51fee4', 'd4d58fdb57fd49da9ffd88afdc20ba6f', null, '0', '2018-10-19 02:30:44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('e9898d0764534dd6820fd5b198800569', '9e5297d82eed4a3285142415b8796a21', '2fe21b4f0eb3490097feb686c84b8632', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('eea400cb275e45cea93699c3f54b9858', 'a202dc8168db4e0ab237fc4328708699', '2911ea8b63f64cebb9b17ee5133f1249', null, '0', '2018-10-19 02:37:10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('ef08f506bb6544ee84e705d780156b65', '98bfe8d007ad44a68c86ddc8d4d7b352', 'b35c3bb3ce0447e4af05b887d2fc66f0', null, '0', '2018-10-22 23:07:30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('f284e859767846a5bb37a4376cd1fa6a', '24b4b41a5f674cfab47557dbcec26500', 'b50bce4780d643aa9e8f6c8d41a2a826', null, '0', '2018-10-19 03:44:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('fbfbd17b58ad45918f56ba41ddd6ba6c', '24b4b41a5f674cfab47557dbcec26500', '7ab830fddf724e04ba62befa60b02d36', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_group_type
-- ----------------------------
DROP TABLE IF EXISTS `base_group_type`;
CREATE TABLE `base_group_type` (
  `id` varchar(40) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `delete` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `crt_user` varchar(255) DEFAULT NULL COMMENT '创建人ID',
  `crt_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '创建主机',
  `upd_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `upd_user` varchar(255) DEFAULT NULL COMMENT '最后更新人ID',
  `upd_name` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  `upd_host` varchar(255) DEFAULT NULL COMMENT '最后更新主机',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_group_type
-- ----------------------------
INSERT INTO `base_group_type` VALUES ('-1', 'minRole', '最小角色类型', 'minRole禁止删除', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('1', 'role', '角色类型', 'role', '0', null, null, null, null, '2017-08-25 17:52:37', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('2', 'depart', '部门类型', null, '0', null, null, null, null, '2017-08-25 17:52:43', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_group_type` VALUES ('3', 'free', '自定义类型', 'sadf', '0', null, null, null, null, '2017-08-26 08:22:25', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu` (
  `id` varchar(40) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '路径编码',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `parent_id` varchar(40) NOT NULL COMMENT '父级节点',
  `href` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `type` char(10) DEFAULT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `path` varchar(500) DEFAULT NULL COMMENT '菜单上下级关系',
  `enabled` char(1) DEFAULT NULL COMMENT '启用禁用',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_menu
-- ----------------------------
INSERT INTO `base_menu` VALUES ('1', 'userManager', '用户管理', '5', '/admin/user', 'fa-user', 'menu', '0', '', '/adminSys/baseManager/userManager', null, '0', null, null, null, null, '2017-09-05 21:06:51', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/user/index\')', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('13', 'adminSys', '权限管理系统', '-1', '/base', 'setting', 'dirt', '0', '', '/adminSys', null, '0', null, null, null, null, '2017-09-28 12:09:22', '1', 'Mr.AG', '127.0.0.1', 'Layout', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('21', 'dictManager', '数据字典', '5', '', 'fa fa-book', null, '0', '', '/adminSys/baseManager/dictManager', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('27', 'gateLogManager', '操作日志', '5', '/admin/gateLog', 'viewlist', 'menu', '0', '', '/adminSys/baseManager/gateLogManager', null, '0', '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', '2017-09-05 22:32:55', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/gateLog/index\')', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('29', 'authManager', '服务权限管理', '13', '/auth', 'service', null, '0', '服务权限管理', '/adminSys/authManager', null, '0', '2017-12-26 19:54:45', '1', 'Mr.AG', '127.0.0.1', '2017-12-26 19:55:18', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('30', 'serviceManager', '服务管理', '29', '/auth/service', 'client', null, '0', '服务管理', '/adminSys/authManager/serviceManager', null, '0', '2017-12-26 19:56:06', '1', 'Mr.AG', '127.0.0.1', '2017-12-26 19:56:06', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('31', 'monitorManager', '监控模块管理', '13', null, 'service', null, '0', null, '/adminSys/monitorManager', null, '0', '2018-02-25 09:36:35', '1', 'Mr.AG', '127.0.0.1', '2018-02-25 09:38:55', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('32', 'serviceEurekaManager', '服务注册中心', '31', null, 'client', null, '0', null, '/adminSys/monitorManager/serviceEurekaManager', null, '0', '2018-02-25 09:37:04', '1', 'Mr.AG', '127.0.0.1', '2018-02-25 09:37:41', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('33', 'serviceMonitorManager', '服务状态监控', '31', null, 'client', null, '0', null, '/adminSys/monitorManager/serviceEurekaManager', null, '0', '2018-02-25 09:37:05', '1', 'Mr.AG', '127.0.0.1', '2018-02-25 09:37:35', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('34', 'serviceZipkinManager', '服务链路监控', '31', null, 'client', null, '0', null, '/adminSys/monitorManager/serviceZipkinManager', null, '0', '2018-02-25 09:38:05', '1', 'Mr.AG', '127.0.0.1', '2018-02-25 09:38:05', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('5', 'baseManager', '基础配置管理', '13', '/admin', 'setting', 'dirt', '0', '', '/adminSys/baseManager', null, '0', null, null, null, null, '2017-09-05 21:46:11', '1', 'Mr.AG', '127.0.0.1', 'Layout', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('6', 'menuManager', '菜单管理', '5', '/admin/menu', 'category', 'menu', '0', '', '/adminSys/baseManager/menuManager', null, '0', null, null, null, null, '2017-09-05 21:10:25', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/menu/index\')', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('7', 'groupManager', '角色权限管理', '5', '/admin/group', 'group_fill', 'menu', '0', '', '/adminSys/baseManager/groupManager', null, '0', null, null, null, null, '2017-09-05 21:11:34', '1', 'Mr.AG', '127.0.0.1', 'import(\'admin/group/index\')', null, null, null, null, null, null, null);
INSERT INTO `base_menu` VALUES ('8', 'groupTypeManager', '角色类型管理', '5', '/admin/groupType', 'fa-users', 'menu', '0', '', '/adminSys/baseManager/groupTypeManager', null, '0', null, null, null, null, '2017-09-05 21:12:28', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/groupType/index\')', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_resource_authority
-- ----------------------------
DROP TABLE IF EXISTS `base_resource_authority`;
CREATE TABLE `base_resource_authority` (
  `id` varchar(40) NOT NULL,
  `authority_id` varchar(255) DEFAULT NULL COMMENT '角色ID',
  `authority_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `resource_id` varchar(255) DEFAULT NULL COMMENT '资源ID',
  `resource_type` varchar(255) DEFAULT NULL COMMENT '资源类型',
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_resource_authority
-- ----------------------------
INSERT INTO `base_resource_authority` VALUES ('287', '1', 'group', '5', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('288', '1', 'group', '9', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('289', '1', 'group', '10', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('290', '1', 'group', '11', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('291', '1', 'group', '12', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('294', '1', 'group', '5', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('295', '1', 'group', '9', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('296', '1', 'group', '10', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('297', '1', 'group', '11', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('298', '1', 'group', '12', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('299', '1', 'group', '9', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('300', '1', 'group', '12', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('301', '1', 'group', '10', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('302', '1', 'group', '11', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('303', '1', 'group', '13', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('304', '1', 'group', '14', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('305', '1', 'group', '15', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('306', '1', 'group', '10', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('307', '1', 'group', '11', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('308', '1', 'group', '12', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('309', '1', 'group', '13', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('310', '1', 'group', '14', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('311', '1', 'group', '9', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('312', '1', 'group', '15', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('313', '1', 'group', '16', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('314', '1', 'group', '17', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('315', '1', 'group', '18', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('317', '1', 'group', '20', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('318', '1', 'group', '21', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('319', '1', 'group', '22', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('349', '4', 'group', '9', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('371', '1', 'group', '23', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('372', '1', 'group', '24', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('373', '1', 'group', '27', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('374', '1', 'group', '28', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('375', '1', 'group', '23', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('378', '1', 'group', '5', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('379', '1', 'group', '9', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('380', '1', 'group', '11', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('381', '1', 'group', '14', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('382', '1', 'group', '13', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('383', '1', 'group', '15', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('384', '1', 'group', '12', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('385', '1', 'group', '24', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('386', '1', 'group', '10', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('387', '1', 'group', '27', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('388', '1', 'group', '16', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('389', '1', 'group', '18', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('390', '1', 'group', '17', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('392', '1', 'group', '20', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('393', '1', 'group', '28', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('394', '1', 'group', '22', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('395', '1', 'group', '21', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('396', '4', 'group', '23', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('397', '4', 'group', '9', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('398', '4', 'group', '27', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('399', '4', 'group', '24', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('400', '4', 'group', '28', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('401', '1', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('402', '1', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('403', '1', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('421', '1', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('422', '1', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('423', '4', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('424', '4', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('436', '1', 'group', '32', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('437', '1', 'group', '33', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('438', '1', 'group', '34', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('439', '1', 'group', '35', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('440', '4', 'group', '32', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('464', '1', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('465', '1', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('466', '1', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('467', '1', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('468', '1', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('469', '1', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('470', '1', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('471', '1', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('472', '1', 'group', '40', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('492', '1', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('493', '1', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('494', '1', 'group', '40', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('516', '4', 'group', '41', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('517', '4', 'group', '30', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('518', '4', 'group', '31', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('519', '4', 'group', '40', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('611', '4', 'group', '42', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('612', '4', 'group', '36', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('628', '4', 'group', '13', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('629', '4', 'group', '5', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('630', '4', 'group', '1', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('631', '4', 'group', '6', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('632', '4', 'group', '7', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('633', '4', 'group', '8', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('634', '4', 'group', '27', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('635', '4', 'group', '9', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('636', '4', 'group', '24', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('637', '4', 'group', '22', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('638', '4', 'group', '23', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('639', '4', 'group', '25', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('640', '4', 'group', '26', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('641', '4', 'group', '28', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('666', '1', 'group', '41', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('689', '1', 'group', '43', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('691', '1', 'group', '44', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('710', '9', 'group', '42', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('711', '9', 'group', '43', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('712', '9', 'group', '44', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('713', '9', 'group', '45', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('718', '9', 'group', '42', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('719', '9', 'group', '44', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('720', '9', 'group', '45', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('721', '9', 'group', '43', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('722', '1', 'group', '41', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('749', '10', 'group', '13', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('750', '10', 'group', '14', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('751', '10', 'group', '-1', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('752', '10', 'group', '5', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('753', '10', 'group', '6', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('754', '10', 'group', '17', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('755', '10', 'group', '20', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('774', '1', 'group', '3', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('775', '1', 'group', '4', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('812', '1', 'group', '19', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('924', '1', 'group', '42', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('945', '1', 'group', '45', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('956', '1', 'group', '46', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('967', '1', 'group', '33', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('968', '1', 'group', '34', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('969', '1', 'group', '13', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('970', '1', 'group', '-1', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('971', '1', 'group', '27', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('972', '1', 'group', '29', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('973', '1', 'group', '1', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('974', '1', 'group', '5', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('975', '1', 'group', '6', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('976', '1', 'group', '7', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('977', '1', 'group', '8', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('978', '1', 'group', '30', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('979', '1', 'group', '31', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('980', '1', 'group', '32', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('981', '9', 'group', '23', 'button', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('982', '9', 'group', '1', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('983', '9', 'group', '13', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('984', '9', 'group', '-1', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_resource_authority` VALUES ('985', '9', 'group', '5', 'menu', '-1', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `id` varchar(40) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `tel_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES ('1', 'admin', '$2a$12$1RC.33cLfVcFalHsLappBOSYJOgXXhHXw4La80JbPoQgVljNPa8ky', 'Mr.AG', '', null, '', null, '', '男', null, null, '', '0', null, null, null, null, '2017-11-16 23:23:49', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('2', 'test', '$2a$12$Jt6T0j6nK9YF8VLwqgUCWejdxKBzMt/YyOUFQTZn47XvDQ1C2J6eu', '测试账户', '', null, '', null, '', '男', null, null, '', '0', null, null, null, null, '2017-07-15 19:18:07', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('4', 'blog', '$2a$12$S/yLlj9kzi5Dgsz97H4rAekxrPlk/10eXp1lUJcAVAx.2M9tOpWie', 'Mr.AG(博主)', '', null, '', null, '', '女', null, null, '12', '0', null, null, null, null, '2018-03-07 11:21:10', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('5', 'xiao123', '1111111', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_user` VALUES ('9', 'test111', '1111', null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_user_log
-- ----------------------------
DROP TABLE IF EXISTS `base_user_log`;
CREATE TABLE `base_user_log` (
  `id` int(11) NOT NULL,
  `user_name` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `tenant_name` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `product_name` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `product_version` int(11) DEFAULT NULL,
  `host` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `op_name` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `op_result` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统用户日志';

-- ----------------------------
-- Records of base_user_log
-- ----------------------------
INSERT INTO `base_user_log` VALUES ('1', 'admin', '九芝堂pv', '测试产品', '1', '12.0.0.1', 'www.test.com', '登录', '成功', 'sh', null, '0', '2018-10-15 10:00:10');

-- ----------------------------
-- Table structure for gate_log
-- ----------------------------
DROP TABLE IF EXISTS `gate_log`;
CREATE TABLE `gate_log` (
  `id` varchar(40) NOT NULL COMMENT '序号',
  `menu` varchar(255) DEFAULT NULL COMMENT '菜单',
  `opt` varchar(255) DEFAULT NULL COMMENT '操作',
  `uri` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT NULL COMMENT '操作时间',
  `crt_user` varchar(255) DEFAULT NULL COMMENT '操作人ID',
  `crt_name` varchar(255) DEFAULT NULL COMMENT '操作人',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '操作主机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gate_log
-- ----------------------------
INSERT INTO `gate_log` VALUES ('1', '菜单管理', '新增', '/admin/menu', '0', '2018-02-25 09:36:35', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('10', '菜单管理', '编辑', '/admin/menu', '0', '2018-02-25 09:38:55', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('11', '用户管理', '编辑', '/admin/user', '0', '2018-03-06 11:26:28', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('12', '用户管理', '编辑', '/admin/user', '0', '2018-03-06 11:26:34', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('13', '用户管理', '编辑', '/admin/user', '0', '2018-03-07 11:21:10', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('2', '菜单管理', '新增', '/admin/menu', '0', '2018-02-25 09:37:04', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('3', '菜单管理', '新增', '/admin/menu', '0', '2018-02-25 09:37:04', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('4', '菜单管理', '编辑', '/admin/menu', '0', '2018-02-25 09:37:20', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('5', '菜单管理', '编辑', '/admin/menu', '0', '2018-02-25 09:37:32', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('6', '菜单管理', '编辑', '/admin/menu', '0', '2018-02-25 09:37:35', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('7', '菜单管理', '编辑', '/admin/menu', '0', '2018-02-25 09:37:40', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('8', '菜单管理', '新增', '/admin/menu', '0', '2018-02-25 09:38:04', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `gate_log` VALUES ('9', '角色权限管理', '新增', '/admin/group', '0', '2018-02-25 09:38:21', '1', 'Mr.AG', '127.0.0.1');

-- ----------------------------
-- Table structure for host_contract
-- ----------------------------
DROP TABLE IF EXISTS `host_contract`;
CREATE TABLE `host_contract` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `tenant_id` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '租户Id',
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `effect_date` date DEFAULT NULL COMMENT '生效日期',
  `serial_number` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `upd_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `upd_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of host_contract
-- ----------------------------
INSERT INTO `host_contract` VALUES ('16ad098ca2a64190952b05d580b28e39', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-09-27', '2018-09-28', '2018-09-29', 'dfsdf12', '1', '2018-10-22 22:24:03', null, '2018-10-23 11:24:03', null);
INSERT INTO `host_contract` VALUES ('2ff0521e70f643aa84f3f2ceb9285766', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-10-08', '2018-10-10', '2018-10-16', '124-ceshi', '1', '2018-10-22 03:14:19', null, '2018-10-22 16:14:18', null);
INSERT INTO `host_contract` VALUES ('3f515d224e2846758af2a7355af97c3f', 'da4f5777888d4c749741bdd47981b519', '2018-10-22', '2018-10-29', '2018-10-23', '666666', '0', '2018-10-23 22:41:56', null, '2018-10-24 11:41:55', null);
INSERT INTO `host_contract` VALUES ('401088c4995e4c27b14c1bdfd93e56b6', '2fde74f7d692487685e07c5261a01425', '2018-10-16', '2018-10-30', '2018-10-17', 'T-K-181017123', '1', '2018-10-17 03:32:07', null, '2018-10-17 16:32:06', null);
INSERT INTO `host_contract` VALUES ('480b5fb60ce9433a93a0d44094d0d2fa', 'ff89e683aa88482d8baced036b772999', '2018-10-12', '2018-10-23', '2018-10-12', 'Q-T-181018789', '0', '2018-10-18 03:36:12', null, '2018-10-18 16:36:11', null);
INSERT INTO `host_contract` VALUES ('64b34c0b03514023b6da0e2a2271f138', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-10-01', '2018-10-02', '2018-10-16', '32423', '0', '2018-10-22 06:07:11', null, '2018-10-22 19:07:11', null);
INSERT INTO `host_contract` VALUES ('6d95cf950705442fbf6c6ceee49852cc', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-09-28', '2018-10-06', '2018-10-07', '101', '1', '2018-10-22 03:32:16', null, '2018-10-22 16:32:15', null);
INSERT INTO `host_contract` VALUES ('a91cde03ce34436e9bbeacd239247cd7', '2fde74f7d692487685e07c5261a01425', '2018-10-12', '2018-10-25', '2018-10-12', 'T-PS-181018124', '0', '2018-10-17 20:03:48', null, '2018-10-18 09:03:47', null);
INSERT INTO `host_contract` VALUES ('c797d0795f464ee292a7cb192d90ef81', 'da4f5777888d4c749741bdd47981b519', '2018-10-17', '2018-10-30', '2018-10-17', 'T-U-181018456', '0', '2018-10-17 22:41:38', null, '2018-10-18 11:41:37', null);
INSERT INTO `host_contract` VALUES ('cdc1245e9b1048e2a270d4843b0f089b', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-10-01', '2018-10-02', '2018-10-04', 'nm,', '0', '2018-10-22 22:31:56', null, '2018-10-23 11:31:55', null);
INSERT INTO `host_contract` VALUES ('d34cf9514d92429db646aa3d97760baf', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-10-01', '2018-10-02', '2018-10-03', 'ceshi', '0', '2018-10-24 03:23:16', null, '2018-10-24 16:23:16', null);

-- ----------------------------
-- Table structure for host_product
-- ----------------------------
DROP TABLE IF EXISTS `host_product`;
CREATE TABLE `host_product` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '产品名称',
  `version` int(10) DEFAULT NULL COMMENT '产品版本',
  `roles` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色列表',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `upd_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `upd_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of host_product
-- ----------------------------
INSERT INTO `host_product` VALUES ('0e22840e89944764911f48c298de5be3', 'asd', '3', '第三方;最小访问权限', '1', '2018-10-23 11:53:15', null, '2018-10-23 00:48:17', null);
INSERT INTO `host_product` VALUES ('378dbf1906264945a0dbd43af1f1b46d', 'PV2.0', '3', '权限A;最小访问权限', '0', '2018-10-22 01:54:13', null, '2018-10-23 02:06:40', null);
INSERT INTO `host_product` VALUES ('504e2996f8e94d89a812837874e45f48', '阿萨德', '3', '水电费;最小访问权限', '0', '2018-10-23 00:58:52', null, '2018-10-23 13:58:52', null);
INSERT INTO `host_product` VALUES ('5248b4f01b9141319f403bf1e3b3edce', '测试', '2', '大声道;角色6;最小访问权限', '0', '2018-10-22 05:59:05', null, '2018-10-22 20:02:42', null);
INSERT INTO `host_product` VALUES ('69086a2407fe468aabbfe61b22dd0f4f', '位', '6', '水电费;最小访问权限', '1', '2018-10-23 00:48:40', null, '2018-10-23 13:48:40', null);
INSERT INTO `host_product` VALUES ('76419eb7403e497790aac50af4373f0e', '租房项目', '1', '数据录入员;数据质控QC;医学评审;医学评审QC;报告递交;;最小访问权限', '0', '2018-10-19 01:03:58', null, '2018-10-21 21:29:15', null);
INSERT INTO `host_product` VALUES ('865e7d4a867c48da88f7a5465c1f3688', 'fdfg', null, '最小访问权限', '1', '2018-10-23 12:08:41', null, '2018-10-22 23:09:11', null);
INSERT INTO `host_product` VALUES ('a6723dc7a68241c0a889b1a6dbdb05dc', '今日头条', '1', '数据录入员;数据质控QC;最小访问权限', '0', '2018-10-21 20:33:33', null, '2018-10-23 22:39:56', null);
INSERT INTO `host_product` VALUES ('b33ab178f85547d290e1e98f1c9aeb24', 'asd', '4', 'sdf;最小访问权限', '0', '2018-10-23 02:06:10', null, '2018-10-23 15:06:10', null);
INSERT INTO `host_product` VALUES ('c6609e7b384040479fffeb6633f6f8ce', '快手直播', '2', '数据录入;最小访问权限', '0', '2018-10-21 21:02:17', null, '2018-10-21 21:27:44', null);
INSERT INTO `host_product` VALUES ('da4cc58b9d254751bf0023dc9fc059a6', '教育产品', '1', '数据质控QC;最小访问权限', '0', '2018-10-18 04:43:12', null, '2018-10-22 00:26:19', null);
INSERT INTO `host_product` VALUES ('dadd264e01514ec6bf85f70f6279a5ac', 'ceshi', '9', 'zuifsd;最小访问权限', '0', '2018-10-24 03:20:03', null, '2018-10-24 21:08:42', null);
INSERT INTO `host_product` VALUES ('f2eac01db5f84cf2abfd75f77000679d', 'ceshi', '2', 'er;最小访问权限', '1', '2018-10-22 03:05:56', null, '2018-10-22 16:05:56', null);

-- ----------------------------
-- Table structure for host_project
-- ----------------------------
DROP TABLE IF EXISTS `host_project`;
CREATE TABLE `host_project` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `product_id` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '产品id',
  `serial_number` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `product_version` int(10) DEFAULT NULL COMMENT '产品版本',
  `max_user_num` int(11) DEFAULT '-1' COMMENT '使用人数上限',
  `start_date` date DEFAULT NULL COMMENT '开始时间',
  `end_date` date DEFAULT NULL COMMENT '结束时间',
  `url` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` int(20) DEFAULT NULL COMMENT '状态 0 未开始 1进行中 2已结束',
  `contract_id` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '合同id',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `upd_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `upd_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of host_project
-- ----------------------------
INSERT INTO `host_project` VALUES ('2a467bb9c1144344a356dccc3a6579bd', '7caa10f82e3f435993242e80f7d5336c', '03', '2', '0', '2018-10-12', '2018-10-25', 'http://10.0.1.251:8484/#/dashboard', '0', 'a91cde03ce34436e9bbeacd239247cd7', '0', '2018-10-17 20:03:48', null, '2018-10-18 09:03:47', 'false');
INSERT INTO `host_project` VALUES ('2e38061afa0440a0bf6c69acf4d54c32', 'a6723dc7a68241c0a889b1a6dbdb05dc', '01', '1', '100', '2018-10-04', '2018-10-12', 'http://jhgdsf.com', '0', '6d95cf950705442fbf6c6ceee49852cc', '1', '2018-10-22 03:32:16', null, '2018-10-22 16:32:15', 'false');
INSERT INTO `host_project` VALUES ('438e35665fd2474bb51158858e92c27b', '5248b4f01b9141319f403bf1e3b3edce', '01', '2', '100', '2018-10-14', '2018-10-15', 'http://jhjdsk.com', '1', '64b34c0b03514023b6da0e2a2271f138', '0', '2018-10-22 06:07:11', null, '2018-10-22 19:07:11', 'false');
INSERT INTO `host_project` VALUES ('4cbfb97ce39942e3886c5b7bd4aae9be', null, '03', '4', '4', '2018-10-21', '2018-10-21', 'http://kjkjhfd.com', '2', 'd34cf9514d92429db646aa3d97760baf', '0', '2018-10-24 03:23:16', null, '2018-10-24 16:23:16', 'false');
INSERT INTO `host_project` VALUES ('821f717c763a40ebad0d7c704a31c843', 'fbfc169693374535874a3c61f640d448', '01', '1', '2', '2018-10-12', '2018-10-25', 'http://10.0.1.251:8484/#/dashboard', '0', 'a91cde03ce34436e9bbeacd239247cd7', '0', '2018-10-17 20:03:48', null, '2018-10-18 09:03:47', 'false');
INSERT INTO `host_project` VALUES ('85582b20b49f4262a7fc864fb4db1bb9', '7caa10f82e3f435993242e80f7d5336c', '222', '3', '2', '2018-10-12', '2018-10-23', 'http://10.0.1.251:8484/#/roles/index', '0', '480b5fb60ce9433a93a0d44094d0d2fa', '0', '2018-10-18 03:36:12', null, '2018-10-18 16:36:11', 'false');
INSERT INTO `host_project` VALUES ('9f5b0aba893d4bb6ba5341dbf93bad6e', 'a6723dc7a68241c0a889b1a6dbdb05dc', '01', '1', '100', '2018-09-30', '2018-10-14', 'http://mbmbd.com', '0', 'cdc1245e9b1048e2a270d4843b0f089b', '0', '2018-10-22 22:31:56', null, '2018-10-23 11:31:55', 'false');
INSERT INTO `host_project` VALUES ('aa54172788cd462fb4809410c3854984', null, '02', '9', '7', '2018-10-28', '2018-10-28', 'http://jkhkjd.com', '1', 'd34cf9514d92429db646aa3d97760baf', '0', '2018-10-24 03:23:16', null, '2018-10-24 16:23:16', 'false');
INSERT INTO `host_project` VALUES ('c0a0f6b609bb4e23a4a8a9041dd00f51', 'c99ba07ceda1400fa33d46b93729893a', '02', '1', '3', '2018-10-12', '2018-10-25', 'http://10.0.1.251:8484/#/dashboard', '0', 'a91cde03ce34436e9bbeacd239247cd7', '0', '2018-10-17 20:03:48', null, '2018-10-18 09:03:47', 'false');
INSERT INTO `host_project` VALUES ('d106d3c8327e48d0bf60109bfc0ade2b', null, '02', '2', '100', '2018-10-27', '2018-10-20', 'http://jncj.com', '1', 'cdc1245e9b1048e2a270d4843b0f089b', '0', '2018-10-22 22:31:56', null, '2018-10-23 11:31:55', 'false');
INSERT INTO `host_project` VALUES ('e68c40c841cb4a50b177a1cec24acda3', 'a6723dc7a68241c0a889b1a6dbdb05dc', '01', '2', '100', '2018-10-04', '2018-09-27', 'http://jhjkfd.com', '2', '16ad098ca2a64190952b05d580b28e39', '0', '2018-10-22 22:24:03', null, '2018-10-22 22:30:47', 'false');
INSERT INTO `host_project` VALUES ('ebf33877491d4bc68ba92598ff3e74ee', null, '01', '4', '3', '2018-10-14', '2018-10-22', 'http://kjhfsjkd.com', '1', 'd34cf9514d92429db646aa3d97760baf', '0', '2018-10-24 03:23:16', null, '2018-10-24 16:23:16', 'false');
INSERT INTO `host_project` VALUES ('ec069029443a412e932b4235e34ce575', 'f2eac01db5f84cf2abfd75f77000679d', '123', '2', '-1', '2018-10-21', '2018-10-22', 'http://jhjfd.com', '2', '2ff0521e70f643aa84f3f2ceb9285766', '0', '2018-10-22 03:14:19', null, '2018-10-22 03:31:14', 'false');
INSERT INTO `host_project` VALUES ('fe6576fe2f754710a561d5bde3b05cde', 'a6723dc7a68241c0a889b1a6dbdb05dc', '01', '1', '6', '2018-10-22', '2018-10-29', 'http://10.0.1.253:3327/#/systemMag/contract/add', '1', '3f515d224e2846758af2a7355af97c3f', '0', '2018-10-23 22:41:56', null, '2018-10-24 11:41:55', 'false');

-- ----------------------------
-- Table structure for saas_project
-- ----------------------------
DROP TABLE IF EXISTS `saas_project`;
CREATE TABLE `saas_project` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `tenant_id` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '租户id',
  `host_projectid` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '运营项目id',
  `code` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '项目编号',
  `name` varchar(25) COLLATE utf8mb4_bin NOT NULL COMMENT '项目名称',
  `type` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '项目属性',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `upd_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `crt_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `upd_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of saas_project
-- ----------------------------
INSERT INTO `saas_project` VALUES ('01349500b8f04f38ba4d00cae8207d67', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '03', 'asdsa', 'ceshi', '1', '1', null, '2018-10-22 22:37:48', null, '2018-10-23 11:37:47');
INSERT INTO `saas_project` VALUES ('13', '123', '123', 'bjlh_pv', '白家老号', '1', '0', null, '2018-08-16 13:57:42', null, '2018-08-16 13:57:42');
INSERT INTO `saas_project` VALUES ('46ea3b3e1ef74302abcfa4023603a999', 'da4f5777888d4c749741bdd47981b519', '03', '003', '东方头条', '1', '0', null, '2018-10-22 00:18:44', null, '2018-10-22 13:18:43');
INSERT INTO `saas_project` VALUES ('bf610423b6a9495fb9d2d61761d266ed', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '03', 'sdfsd', 'test', '0', '0', null, '2018-10-22 22:38:30', null, '2018-10-23 11:38:30');
INSERT INTO `saas_project` VALUES ('da2b752e9b4749348dacb031adb04643', 'da4f5777888d4c749741bdd47981b519', '222', '002', '房地产项目', '1', '0', null, '2018-10-18 03:38:37', null, '2018-10-18 16:38:36');
INSERT INTO `saas_project` VALUES ('ea65b0c1bee449b0a84a9cf32e9ab7ec', '2fde74f7d692487685e07c5261a01425', '3', '001', '青青项目', '0', '0', null, '2018-10-17 20:23:34', null, '2018-10-18 09:23:33');

-- ----------------------------
-- Table structure for saas_project_user
-- ----------------------------
DROP TABLE IF EXISTS `saas_project_user`;
CREATE TABLE `saas_project_user` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `saas_project_id` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '项目id',
  `saas_user_id` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '用户id',
  `saas_role_id` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '初始化roleid',
  `saas_user_status` int(10) DEFAULT NULL COMMENT '用户项目状态',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `upd_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `upd_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_user_index` (`saas_project_id`,`saas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of saas_project_user
-- ----------------------------
INSERT INTO `saas_project_user` VALUES ('123123', '13', '33', 'cro', '1', '0', '2018-08-08 16:20:26', null, '2018-08-23 16:20:29', null);
INSERT INTO `saas_project_user` VALUES ('2b48ae9921544454b2ea9b85601c7602', '46ea3b3e1ef74302abcfa4023603a999', '33', '数据质控QC', '1', '0', '2018-10-24 11:42:38', null, '2018-10-24 11:42:38', null);
INSERT INTO `saas_project_user` VALUES ('373c546a68cd43979f6247b7d0c59ab2', 'ea65b0c1bee449b0a84a9cf32e9ab7ec', '865e7d4a867c48da88f7a5465c1f3688', '最小访问权限', '1', '0', '2018-10-22 14:26:08', null, '2018-10-22 14:26:08', null);
INSERT INTO `saas_project_user` VALUES ('68c4519a6cc34532b632e87e0dad5c97', 'ea65b0c1bee449b0a84a9cf32e9ab7ec', 'b2c484bdceb940249eaf7415e286fbfb', '最小访问权限;22', '1', '0', '2018-10-25 09:08:00', null, '2018-10-25 09:08:00', null);
INSERT INTO `saas_project_user` VALUES ('85dfeeec22a14b35baec177033f1c1c5', 'ea65b0c1bee449b0a84a9cf32e9ab7ec', '0e22840e89944764911f48c298de5be3', '资料管理员;最小访问权限;数据录入员', '1', '0', '2018-10-18 15:31:42', null, '2018-10-18 15:31:42', null);
INSERT INTO `saas_project_user` VALUES ('a9ebde433cdd424db8ae9e992f5e2b47', 'da2b752e9b4749348dacb031adb04643', '865e7d4a867c48da88f7a5465c1f3688', '最小访问权限;数据录入', '1', '0', '2018-10-22 10:31:46', null, '2018-10-22 10:31:46', null);
INSERT INTO `saas_project_user` VALUES ('afd6de918c1d4c6db7e5d88ee0de6b03', 'bf610423b6a9495fb9d2d61761d266ed', '8684339eaa6b4d3e8aa78ac0f4651415', '最小访问权限;开发;游客;22', '2', '0', '2018-10-23 11:39:07', null, '2018-10-23 11:39:07', null);
INSERT INTO `saas_project_user` VALUES ('b35d35e26f9c4d05a7014cfcb84ac2a4', '13', '0e22840e89944764911f48c298de5be3', null, '1', '1', '2018-10-22 17:54:58', null, '2018-10-22 17:54:58', null);
INSERT INTO `saas_project_user` VALUES ('bcfff11b031c4e998af27f6ad9041cfd', 'bf610423b6a9495fb9d2d61761d266ed', '0e22840e89944764911f48c298de5be3', '游客', '1', '1', '2018-10-23 11:40:43', null, '2018-10-23 11:40:43', null);
INSERT INTO `saas_project_user` VALUES ('c7e4e6c4f72944e68b4ed9a6cdd6ba24', '46ea3b3e1ef74302abcfa4023603a999', 'da3a9be724924d7097e7914ae9b63832', '最小访问权限;开发', '1', '0', '2018-10-23 10:55:54', null, '2018-10-23 10:55:54', null);
INSERT INTO `saas_project_user` VALUES ('ceb66b9960df44248b472e9c61dc1e31', '46ea3b3e1ef74302abcfa4023603a999', '0e22840e89944764911f48c298de5be3', '最小访问权限', '2', '0', '2018-10-22 14:30:52', null, '2018-10-22 14:30:52', null);
INSERT INTO `saas_project_user` VALUES ('eb6fb9dd9f2044b48db2b26c6dca0a00', '46ea3b3e1ef74302abcfa4023603a999', '2fe2e67f942b45e4b2420383a095ea65', '最小访问权限;开发', '1', '1', '2018-10-23 10:50:01', null, '2018-10-23 10:50:01', null);

-- ----------------------------
-- Table structure for saas_tenant
-- ----------------------------
DROP TABLE IF EXISTS `saas_tenant`;
CREATE TABLE `saas_tenant` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '企业名称',
  `code` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '企业标识',
  `country` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '国家',
  `city` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '城市',
  `address` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '地址',
  `zipcode` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮编',
  `domain_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '域名',
  `tenant_type` int(11) DEFAULT NULL COMMENT '1 药企 2 CRO 3医院',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `upd_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `upd_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  `short_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '名称缩写',
  `logo_fileId` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '公司logoid',
  `report_Mark` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '报告编号企业标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of saas_tenant
-- ----------------------------
INSERT INTO `saas_tenant` VALUES ('123', '九芝堂pv', 'jzt_pv', null, 'null/null', null, null, null, '1', '1', '2018-08-08 15:36:45', null, '2018-10-19 01:57:06', null, null, null, null);
INSERT INTO `saas_tenant` VALUES ('2fde74f7d692487685e07c5261a01425', '青青制药有限公司', '123456789', '中国', '上海市/上海', '上海松江区', '21000', 'http://www.baidu.com', '2', '0', '2018-10-17 02:12:32', null, '2018-10-22 06:09:35', null, 'qingqing', null, null);
INSERT INTO `saas_tenant` VALUES ('400d7c7146a44378bb3d1c0c61ce69c5', '太阳', 'ASDF', '中国', '上海/上海', '浦东新区', '123234', 'http://khshd.com', '1', '1', '2018-10-22 06:00:58', null, '2018-10-22 19:00:57', null, 'ty', null, null);
INSERT INTO `saas_tenant` VALUES ('5bcc0c00e53542429a545c1fe5304afb', '水电费', 'KLOI', '中国', '上海/上海', '浦东新区', '123234354', 'http://jhskjd.com', '2', '1', '2018-10-22 03:09:51', null, '2018-10-22 16:09:50', null, 'jif', null, null);
INSERT INTO `saas_tenant` VALUES ('62', '龙门镖局', 'longmen', '中国', 'null/上海市', '静安区', '200102', 'http://cxjkh.c0m', '1', '0', '2018-08-08 15:48:28', null, '2018-10-23 01:05:05', null, null, null, null);
INSERT INTO `saas_tenant` VALUES ('cc9ac07ba95c4454ba5c8ecff628d6f8', '测试企业名称xiao', 'CSQY', 'China', '上海市/上海市', 'shanghai', '10086', 'www.xiao.com', '2', '0', '2018-10-19 02:26:59', null, '2018-10-22 06:11:24', null, 'CSQY', null, null);
INSERT INTO `saas_tenant` VALUES ('da4f5777888d4c749741bdd47981b519', '青青企业', '666666', '中国', '上海市/上海', '上海松江', '21000', 'http://demo.pv.idrugsafety.cn/login', '3', '0', '2018-10-17 02:15:02', null, '2018-10-18 03:30:50', null, 'qingqi', null, null);
INSERT INTO `saas_tenant` VALUES ('ff89e683aa88482d8baced036b772999', '青青人民医院', 'QQQQ', '中国', '上海市/上海', '上海松江', '21000', 'http://www.baidu.com', '3', '0', '2018-10-19 02:05:11', null, '2018-10-19 03:15:32', null, 'renming', null, null);

-- ----------------------------
-- Table structure for saas_user
-- ----------------------------
DROP TABLE IF EXISTS `saas_user`;
CREATE TABLE `saas_user` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `tenant_id` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '所属企业',
  `user_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名',
  `real_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `mobile_phone` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机号码',
  `email` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `sex` char(1) COLLATE utf8mb4_bin DEFAULT '1' COMMENT '性别: 1 男 / 0 女',
  `user_status` int(10) DEFAULT NULL COMMENT '用户状态：1、正常，2、禁用',
  `description` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `upd_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `upd_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of saas_user
-- ----------------------------
INSERT INTO `saas_user` VALUES ('0e22840e89944764911f48c298de5be3', '2fde74f7d692487685e07c5261a01425', 'Alisa', '艾莉萨', '$2a$12$egp6LgfetEoGDVc2iew/p.PQhFpApmckJi9cJikkrfwjXn3xDmP.m', '13612345678', 'bb@bioon.com', '0', '2', null, '1', '2018-10-18 15:31:42', null, '2018-10-22 22:41:00', null);
INSERT INTO `saas_user` VALUES ('2fe21b4f0eb3490097feb686c84b8632', '2', '测试', '测试', '$2a$12$WAjgdd2D1EeE6plubx5xoOMSpERIY2SSNcxaaKytdpdc/kysGQ8Me', '18163526532', 'sdfs2kjh@fd.com', '1', '1', '水电费', '0', '2018-10-24 03:51:16', null, '2018-10-24 16:51:16', null);
INSERT INTO `saas_user` VALUES ('2fe2e67f942b45e4b2420383a095ea65', 'da4f5777888d4c749741bdd47981b519', 'ceshi', 'sdf', '$2a$12$gK4dVFZ/DBXSwGD68d1jMuhQ1cm/p0coQhCXM7ouFA9q3Oq9IGFCm', '18137633782', 'zxc@ljfk.com', '1', null, null, '1', '2018-10-23 10:50:01', null, '2018-10-23 10:50:01', null);
INSERT INTO `saas_user` VALUES ('33', '123', 'jerry', '33', '$2a$12$iEJQi2gDX9x6Q0fn0j4Wxe5o6kayXO7EQRiUnmRkz5ki/5fCmXWfu', '13112345678', '634@BIOON.COM', '0', '1', '2', '0', '2018-08-29 15:39:32', '12', '2018-10-23 22:42:58', '3');
INSERT INTO `saas_user` VALUES ('38b0fd5610524b3db61e7c1e1809bca2', '2', 'sdf', 'wer', '$2a$12$26n./11LmDqluctXlyR2eOWDGQEThiGnASFFpThvNlYydZo6wasfi', '18127362343', '243@kfd.com', '1', '1', 'asd', '0', '2018-10-23 01:14:41', null, '2018-10-23 14:14:41', null);
INSERT INTO `saas_user` VALUES ('53827bd6baeb493c8c817e8cd2910aec', '2fde74f7d692487685e07c5261a01425', 'alex', '爱丽丝', '$2a$12$Y4gDmAZUdz/7wYpwXFzorOU50E3QGOPjWGxyiiW5AvqJWNsMbt60a', '12345678987', 'aa@bioon.com', '1', '1', null, '0', '2018-10-18 15:14:44', null, '2018-10-18 15:14:44', null);
INSERT INTO `saas_user` VALUES ('56a3f776e1de4e4fae0c0458cb21e3f3', '2', '测试', '测试', '$2a$12$Xo/FRheNpQeXXTyKtfDpDeg8IRy0TquzqGaWWsrZRaoBeUg2Y/bJ2', '18136596352', 'sdf@lkjfd.com', '1', '1', 'sf', '0', '2018-10-24 03:18:28', null, '2018-10-24 16:18:28', null);
INSERT INTO `saas_user` VALUES ('5b390cca0b9745ea83c7e690ce3b2aaa', '2', 'xuner', '熏儿', '$2a$12$Phm6CCzDH4W77RxClhefR.WlTJo33hLeUnZjmwgpiWWp970Ig2Unm', '13287654321', '666@bioon.com', '1', '1', null, '0', '2018-10-24 02:33:20', null, '2018-10-24 15:33:20', null);
INSERT INTO `saas_user` VALUES ('6513ea7752c04f83a430d1ccd48399df', '2', 'fg', 'fgh', '$2a$12$VsP9HycsjZj79sriLhWsbe2OCN.ZA16LK2kVNQPpJ/ecVCGKx8EqO', '18137633782', 'dfg@kjhfkd.com', '1', '1', 'wer', '0', '2018-10-22 23:06:47', null, '2018-10-23 12:06:47', null);
INSERT INTO `saas_user` VALUES ('67', '123', '申沙沙', '测试账号1', '$2a$12$ZEtpkis93dH4mtm.mJiNz.gGUSePLsxxJ2v1b7YW3Oq7L6oLYxemW', '15093148821', 'shasha.shen@medsci.cn', '0', '1', '测试', '0', '2018-09-19 07:14:32', null, '2018-09-19 20:14:32', null);
INSERT INTO `saas_user` VALUES ('7ab830fddf724e04ba62befa60b02d36', '2', 'vxc', 'asd', '$2a$12$pmWFMn4qWpDE5r4lPpNbyOQP8brT5oxXmZO6cpK98hF18WjBXkG8O', '18137633782', 'sdf@hjsdk.com', '1', '1', 'sdf', '0', '2018-10-23 01:11:02', null, '2018-10-23 14:11:03', null);
INSERT INTO `saas_user` VALUES ('865e7d4a867c48da88f7a5465c1f3688', 'da4f5777888d4c749741bdd47981b519', 'AAA', 'A男', '$2a$12$bPJqpKdnzN/x0HCyVBVLKelfGfxwc6QTOmdp7t3PlKe7y5yiob9Pm', '13212345678', 'AA@BIOON.COM', '2', '1', null, '1', '2018-10-22 10:31:46', null, '2018-10-22 10:31:46', null);
INSERT INTO `saas_user` VALUES ('8684339eaa6b4d3e8aa78ac0f4651415', 'cc9ac07ba95c4454ba5c8ecff628d6f8', 'fsdf', 'wqe', '$2a$12$bWf4oTv.IXnbpWA32/tgI.12KLANmXUlsUB.fVp8ReYnjQ/84Vz7m', '18136251423', 'fds@lnjd.com', '1', null, null, '1', '2018-10-23 11:39:07', null, '2018-10-22 22:41:34', null);
INSERT INTO `saas_user` VALUES ('88c9992e46c944c0af378966992d499d', '2', 'xuefang', '雪芳', '$2a$12$IcVTUdHjKM.oFLkKcLPMp.gyayJGy8la7Q.iH/0vK/Kto1veWIyse', '13112345678', 'xuefang.li@bioon.com', '1', '1', null, '0', '2018-10-16 22:39:47', null, '2018-10-17 11:39:46', null);
INSERT INTO `saas_user` VALUES ('aeeeae4778f34f90857f33986b25ed99', '2', 'aaa', '师范生', '$2a$12$Wzba/TsOjyoA10pbhmYGgOh8Hr.lJ4iCNj9E/RX/QSbzyaBbvwiE.', '13112345678', 'aaa@bioon.com', '1', '1', null, '0', '2018-10-24 03:06:22', null, '2018-10-24 16:06:22', null);
INSERT INTO `saas_user` VALUES ('b2c484bdceb940249eaf7415e286fbfb', '2fde74f7d692487685e07c5261a01425', 'ceshi123', 'ceshi', '$2a$12$91EOxSJ21EnRmJc.iyjJ6u3PmYMmcuiq22kZIhXF5pXXvfwuEc2UW', '18137633782', 'sdf@jhj.com', '1', null, null, '0', '2018-10-25 09:08:00', null, '2018-10-25 09:08:00', null);
INSERT INTO `saas_user` VALUES ('b35c3bb3ce0447e4af05b887d2fc66f0', '2', 'fgh', 'dfg', '$2a$12$4C4b.l/nm8ACRBEM6q5ZrO9I9f6Vkt2NOE1SwjvytKGo/ta9Q6jOi', '18137633782', 'dfg2hkj@fdf.com', '1', '1', 'dfdf', '0', '2018-10-22 23:07:30', null, '2018-10-23 12:07:30', null);
INSERT INTO `saas_user` VALUES ('bbe241b341ff44caaafd442422eb5b51', '2', 'qingqing', '青青', '$2a$12$w0XPUkGu7ywG4S06jifrfu8IscQYbN8Mty9RSr3Tf0sepqFS7VhtG', '13187654321', 'lixuefang69@163.com', '1', '1', null, '0', '2018-10-17 20:46:47', null, '2018-10-18 09:46:47', null);
INSERT INTO `saas_user` VALUES ('bf4dd9b1769d4abc9b2bd556154f3147', '2fde74f7d692487685e07c5261a01425', 'xiaoyan', '萧炎', '$2a$12$VN/xMg7A/S2HNWF8pxNP0.NE7nYPsqQvCWeoaMM2wCGgqd1s7hdY2', '15612345678', '748703042@qq.com', '1', '1', null, '0', '2018-10-18 10:54:03', null, '2018-10-18 10:54:03', null);
INSERT INTO `saas_user` VALUES ('da3a9be724924d7097e7914ae9b63832', 'da4f5777888d4c749741bdd47981b519', 'ceshi ', 'asd', '$2a$12$4.WYlZnwhzXVkl/J.LGN9eZQvZheDhMGoAYp0dEaWbSpJM9/U9gi.', '18136256532', 'sdf@lkjsfd.com', '1', null, null, '1', '2018-10-23 10:55:54', null, '2018-10-23 10:55:54', null);

-- ----------------------------
-- Table structure for saas_user_log
-- ----------------------------
DROP TABLE IF EXISTS `saas_user_log`;
CREATE TABLE `saas_user_log` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `user_name` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `op_name` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `op_result` varchar(400) COLLATE utf8mb4_bin NOT NULL,
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of saas_user_log
-- ----------------------------
INSERT INTO `saas_user_log` VALUES ('29346490-cc41-11e8-be24-430ba72a57df', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:01:23');
INSERT INTO `saas_user_log` VALUES ('2e9e0b21-cc41-11e8-be24-9777596e4bb2', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:01:31');
INSERT INTO `saas_user_log` VALUES ('22e54aae-cc42-11e8-a331-d545afe27b1e', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:08:20');
INSERT INTO `saas_user_log` VALUES ('30896b0f-cc42-11e8-a331-d19930260b9c', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:08:43');
INSERT INTO `saas_user_log` VALUES ('4f2e9d47-cc43-11e8-9bb8-8bb99ce4a6e7', 'string', '登录', '用户不存在', '0', '2018-10-10 12:16:49');
INSERT INTO `saas_user_log` VALUES ('55699d98-cc43-11e8-9bb8-37775ff3dc85', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:17:00');
INSERT INTO `saas_user_log` VALUES ('63d68c39-cc43-11e8-9bb8-1f9433bb4378', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:17:24');
INSERT INTO `saas_user_log` VALUES ('65309dfa-cc43-11e8-9bb8-4d835a808489', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:17:26');
INSERT INTO `saas_user_log` VALUES ('6623b08b-cc43-11e8-9bb8-195afa8e21ba', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:17:28');
INSERT INTO `saas_user_log` VALUES ('67d8b38c-cc43-11e8-9bb8-4faf40dceac0', 'jerry', '登录', '登录成功！', '0', '2018-10-10 12:17:31');
INSERT INTO `saas_user_log` VALUES ('fd10683f-d74b-11e8-a138-f52544807862', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:16:40');
INSERT INTO `saas_user_log` VALUES ('fd10683e-d74b-11e8-a138-b73d8c2d18f4', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:16:40');
INSERT INTO `saas_user_log` VALUES ('0235b2d0-d74c-11e8-a138-71242ac2b904', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:16:49');
INSERT INTO `saas_user_log` VALUES ('09ab7d11-d74c-11e8-a138-a337267ca05e', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:17:01');
INSERT INTO `saas_user_log` VALUES ('14199fc2-d74c-11e8-a138-85b4c573f122', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:17:19');
INSERT INTO `saas_user_log` VALUES ('39e279c3-d74c-11e8-a138-110fec6f5420', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:18:22');
INSERT INTO `saas_user_log` VALUES ('461f6904-d74c-11e8-a138-152c8d6d2bbb', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:18:42');
INSERT INTO `saas_user_log` VALUES ('72084145-d74c-11e8-a138-13c2b635a33c', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:19:56');
INSERT INTO `saas_user_log` VALUES ('76a9dce6-d74c-11e8-a138-6d51516815a1', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:20:04');
INSERT INTO `saas_user_log` VALUES ('d86739a7-d74c-11e8-a138-63fafa630be2', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:22:48');
INSERT INTO `saas_user_log` VALUES ('e0e265f8-d74c-11e8-a138-b118e3c3ec7d', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:23:02');
INSERT INTO `saas_user_log` VALUES ('ecb71d89-d74c-11e8-a138-eb263f8ade69', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:23:22');
INSERT INTO `saas_user_log` VALUES ('0eddf19a-d74d-11e8-a138-579d417b17f3', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:24:19');
INSERT INTO `saas_user_log` VALUES ('1147507b-d74d-11e8-a138-411ec7b20ecd', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:24:23');
INSERT INTO `saas_user_log` VALUES ('2a6c8a2c-d74d-11e8-a138-8bce8363a8f8', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:25:05');
INSERT INTO `saas_user_log` VALUES ('3191ea7d-d74d-11e8-a138-417a4ef877fc', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:25:17');
INSERT INTO `saas_user_log` VALUES ('32ffab4e-d74d-11e8-a138-b1737f7aefe4', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:25:20');
INSERT INTO `saas_user_log` VALUES ('4355cc4f-d74d-11e8-a138-ff0cae5f6e57', 'jerry', '登录', '密码错误', '0', '2018-10-24 13:25:47');
INSERT INTO `saas_user_log` VALUES ('72bdb930-d74d-11e8-a138-0768b313f0f9', 'jerry', '登录', '登录成功！', '0', '2018-10-24 13:27:07');
INSERT INTO `saas_user_log` VALUES ('ae387e71-d755-11e8-a138-915ffac0038e', 'jerry', '登录', '登录成功！', '0', '2018-10-24 14:26:02');
INSERT INTO `saas_user_log` VALUES ('14b51752-d75e-11e8-a138-a50c1f87002f', 'jerry', '登录', '登录成功！', '0', '2018-10-24 15:26:10');
INSERT INTO `saas_user_log` VALUES ('1a75b783-d75e-11e8-a138-373df03f6efc', 'jerry', '登录', '登录成功！', '0', '2018-10-24 15:26:20');
INSERT INTO `saas_user_log` VALUES ('b6624ae4-d75f-11e8-a138-59c91f9f6b8f', 'jerry', '登录', '登录成功！', '0', '2018-10-24 15:37:51');
INSERT INTO `saas_user_log` VALUES ('bddb7085-d75f-11e8-a138-bb03d183caf6', 'jerry', '登录', '登录成功！', '0', '2018-10-24 15:38:04');
INSERT INTO `saas_user_log` VALUES ('b25ebca6-d762-11e8-a138-4f0bb112c1d4', 'jerry', '登录', '登录成功！', '0', '2018-10-24 15:59:13');
INSERT INTO `saas_user_log` VALUES ('88675a87-d76a-11e8-a138-3b1992ad1620', 'jerry', '登录', '登录成功！', '0', '2018-10-24 16:55:19');
INSERT INTO `saas_user_log` VALUES ('311fa518-d76b-11e8-a138-e3c64363b166', 'jerry', '登录', '登录成功！', '0', '2018-10-24 17:00:02');
INSERT INTO `saas_user_log` VALUES ('390c7419-d76b-11e8-a138-fd5d6b6a8869', 'jerry', '登录', '登录成功！', '0', '2018-10-24 17:00:15');
INSERT INTO `saas_user_log` VALUES ('dbf6947a-d76c-11e8-a138-1dac36be96cb', 'jerry', '登录', '登录成功！', '0', '2018-10-24 17:11:58');
INSERT INTO `saas_user_log` VALUES ('37d1a335-d76e-11e8-8a32-691a75ed62f1', 'jerry', '登录', '登录成功！', '0', '2018-10-24 17:21:41');
INSERT INTO `saas_user_log` VALUES ('40bbe506-d76e-11e8-8a32-29b2a964b97c', 'string', '登录', '用户不存在', '0', '2018-10-24 17:21:56');
INSERT INTO `saas_user_log` VALUES ('ecc5cb97-d76e-11e8-8a32-912596b9c186', 'jerry', '登录', '登录成功！', '0', '2018-10-24 17:26:45');
INSERT INTO `saas_user_log` VALUES ('e68cd1a8-d76f-11e8-8a32-2b91eb5c00bd', 'jerry', '登录', '登录成功！', '0', '2018-10-24 17:33:44');
INSERT INTO `saas_user_log` VALUES ('0d3f9679-d770-11e8-8a32-6b304775465a', 'jerry', '登录', '登录成功！', '0', '2018-10-24 17:34:49');
INSERT INTO `saas_user_log` VALUES ('bc9106ea-d770-11e8-8a32-153993cc94bf', 'jerry', '登录', '登录成功！', '0', '2018-10-24 17:39:43');
INSERT INTO `saas_user_log` VALUES ('3728e67b-d776-11e8-8a32-916f66960cff', 'jerry', '登录', '登录成功！', '0', '2018-10-24 18:18:56');
INSERT INTO `saas_user_log` VALUES ('d67fa6ec-d777-11e8-8a32-f1d4dc8d81ce', 'jerry', '登录', '登录成功！', '0', '2018-10-24 18:30:33');
INSERT INTO `saas_user_log` VALUES ('1d2e810d-d7fb-11e8-8a32-99ff2e4382d7', 'jerry', '登录', '登录成功！', '0', '2018-10-25 10:10:16');
INSERT INTO `saas_user_log` VALUES ('d82dcdde-d800-11e8-8a32-c1668e6b7219', 'jerry', '登录', '登录成功！', '0', '2018-10-25 10:51:17');
INSERT INTO `saas_user_log` VALUES ('174211bf-d802-11e8-8a32-373ccf3dd174', 'jerry', '登录', '登录成功！', '0', '2018-10-25 11:00:12');
INSERT INTO `saas_user_log` VALUES ('bac0ed80-d802-11e8-8a32-69baf3c05f25', 'jerry', '登录', '登录成功！', '0', '2018-10-25 11:04:46');
INSERT INTO `saas_user_log` VALUES ('afcdedf1-d803-11e8-8a32-8d78ab705672', 'jerry', '登录', '登录成功！', '0', '2018-10-25 11:11:38');
INSERT INTO `saas_user_log` VALUES ('afe98c42-d803-11e8-8a32-338e1c5eb0d9', 'jerry', '登录', '登录成功！', '0', '2018-10-25 11:11:38');
INSERT INTO `saas_user_log` VALUES ('76925433-d804-11e8-8a32-efbcc6712bdf', 'jerry', '登录', '登录成功！', '0', '2018-10-25 11:17:11');
INSERT INTO `saas_user_log` VALUES ('7db68694-d805-11e8-8a32-89ad865b95de', 'jerry', '登录', '登录成功！', '0', '2018-10-25 11:24:33');
INSERT INTO `saas_user_log` VALUES ('7f4a8685-d825-11e8-8a32-37579f3d98c8', 'jerry', '登录', '登录成功！', '0', '2018-10-25 15:13:39');
INSERT INTO `saas_user_log` VALUES ('24b79ee6-d840-11e8-8a32-9bed072f7f14', 'jerry', '登录', '登录成功！', '0', '2018-10-25 18:24:24');
