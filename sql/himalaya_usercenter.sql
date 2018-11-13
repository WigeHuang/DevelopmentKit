/*
Navicat MySQL Data Transfer

Source Server         : 10.0.1.40
Source Server Version : 50718
Source Host           : 10.0.1.40:3306
Source Database       : himalaya_usercenter

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-11-13 11:07:53
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
INSERT INTO `base_group` VALUES ('048f7e2b7c6e4475a602f93873104351', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:14:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('117cb3e0bf9a4036aee2ebd419385f2c', null, '开发部', '-1', null, null, '2', null, '0', '2018-11-11 20:05:23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('16', 'visitor1', '游客11', '-1', null, null, '2', null, '0', '2018-09-19 07:06:30', null, 'stri1212ng', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('18', 'jishu', '技术部', '-1', null, null, '2', null, '0', '2018-09-19 07:14:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('1957071fa1cd42469b793b9daa9fe92e', null, 'yanfa', '-1', null, null, '2', null, '0', '2018-10-30 21:53:02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('4', 'visitorRole', '游客', '3', '/testGroup/visitorRole', null, '1', '', '0', null, null, null, null, '2018-10-14 04:13:19', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('4c25e7ce0062458fa4d8671525ebe79c', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:18:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('5bab987b88374b2381976b09d445bbb0', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:18:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('6', 'company', 'AG集团', '-1', '/company', null, '2', '', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('621053e6d99e4df99d01899059028d98', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:20:02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('6b204ef825534f4b91e6c1fdf4b0850a', null, '研发', '-1', null, null, '2', null, '0', '2018-10-30 21:54:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('6d6d0a3ba2c346cea94dade5e397ab52', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:20:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('7', 'financeDepart', '财务部', '6', '/company/financeDepart', null, '2', '', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('7beb5a8dfd47438a991a00ed9fea6e94', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:14:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('8', 'hrDepart', '人力资源部', '6', '/company/hrDepart', null, '2', '', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('9348a023a46e469aba5287eef5553597', null, '111', '-1', null, null, '2', null, '0', '2018-10-30 05:15:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('a202dc8168db4e0ab237fc4328708699', '', '九芝堂pv', '-1', null, null, '2', null, '0', '2018-10-19 02:37:10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('c391f093dc2a4963aa42cdd20a80530c', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:20:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('c794cfc444b74d56a7508d219d3be599', null, '开发部', '-1', null, null, '2', null, '0', '2018-11-11 20:05:23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('cf651ae8cbeb4aaa92e1a9667e92f362', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:18:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('ebc0dfa68be34249a8112193d69faf25', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:14:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group` VALUES ('efd3b277e4e34ca6997c45a057e3c516', null, null, '-1', null, null, '2', null, '0', '2018-11-11 20:20:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
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
INSERT INTO `base_group_member` VALUES ('1c68719b1c9943d787b7a4c48a4a8363', 'ebc0dfa68be34249a8112193d69faf25', 'd4d52fe4cb7a43559eb8a365a8b6f307', null, '0', '2018-11-11 20:14:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('2', '4', '2', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('20', '18', '67', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('20b0a54de6b44b4b9ce7022b49fda763', 'd83accf62e3745f5a06767cfb2417ff1', 'b5db858612804d109be53d34336d1a8f', null, '0', '2018-10-19 03:43:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('28b78ebd051044868c2db62609a75dba', '3256de7114dd4aa986eb39260ed8e138', '88c9992e46c944c0af378966992d499d', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('2b00ee2fff7b4d81895295aaa09ee5aa', '6d6d0a3ba2c346cea94dade5e397ab52', '85bde88a54834c4dbd60cbfc00026243', null, '0', '2018-11-11 20:20:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('31edee6d2ab648358d4826b6811c9890', '3d3982122a76424d971dee157d743e86', '450f5434205049eb9586e664bd29b309', null, '0', '2018-10-19 03:47:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('34f6deeb39834b0787ac7b58b529d3ae', 'f1a7422b8bf54eb8bfa15e21faa127c7', '605595efceeb49de86bfc25d4110b4a6', null, '0', '2018-10-21 22:38:14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('41fbda7fd4d14bdd969edbb43ec2d3b1', '1957071fa1cd42469b793b9daa9fe92e', '78ffb5b46a1e4abfa749c9f245e7838b', null, '0', '2018-10-30 21:53:02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('4fb1fd35546943128d9fa4b302301d74', '117cb3e0bf9a4036aee2ebd419385f2c', '2648b1d5b09c4fbd8b397133d3071d77', null, '0', '2018-11-11 20:05:23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('54592324c90b44e680f6631c1925ff3e', '048f7e2b7c6e4475a602f93873104351', '76760e8b157b4a80817019ce3d971940', null, '0', '2018-11-11 20:14:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('665fb852a6c04eee9a03ea4c19dc0f03', '69807e31bdd146e08febb9e447658cb1', '54ac1a2ac2ee4364adca30a6741c6051', null, '0', '2018-10-19 03:34:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('6aaf3e97bbf44f3c9b918be21dfd45fb', '47b5e982a7434bfaa8cfa01aa364b599', '6513ea7752c04f83a430d1ccd48399df', null, '0', '2018-10-22 23:06:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('7626bc080ccc498fa5a35dbba34f930c', '14ada9278d884fd89a694648381ee065', '7de23f6a6a234fecb6b7fc5879df2f4a', null, '0', '2018-10-19 03:30:06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('7a2a46a5e6a74461b9d7e7ea0268a5ac', '6647a8ab421e4503bcf8a6100394c6a6', 'ccf5736518a24f5abdf353632c2e5028', null, '0', '2018-10-19 03:39:39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('7db402318b7b42e794079fe9826e56bb', '46d1ffa4d0934b639b552008d3fa37eb', 'a14c5aef952f4976aeb9a08859931ec0', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('8269117aef75435994fd9978a27bd17f', '4c25e7ce0062458fa4d8671525ebe79c', 'b5df582cc62047c2a2c6d1c108e004f7', null, '0', '2018-11-11 20:18:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('845fdfad9333449db422135ddb8e04aa', 'cd8cbe8587534c9690d0004f16bf7070', '38b0fd5610524b3db61e7c1e1809bca2', null, '0', '2018-10-23 01:14:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('8e7b7d5dcae24c75b591a55d3a2e2252', '7834068722cb417c8c7634a2339af52e', '3adbf6655e394584830a8e0351034254', null, '0', '2018-10-19 03:47:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('9', '9', '4', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('96f372454ed34908ad08d055bbaa4466', '69807e31bdd146e08febb9e447658cb1', '499bd5a65f8b4cc5a49fc7d55611bf25', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('a01606808bc64ed09d4b1548e9044e95', '7a23855aafb140f2a48ca81220592ff5', 'aeeeae4778f34f90857f33986b25ed99', null, '0', '2018-10-24 03:06:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('a032ccb791eb47818d0ef7b766b3574c', 'cf651ae8cbeb4aaa92e1a9667e92f362', '1286c37f4caa4aabb60637a06d461fc7', null, '0', '2018-11-11 20:18:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('a5b126975b9a4b3a8973ae99723d1135', '9e5297d82eed4a3285142415b8796a21', 'c246bc0584e848159f50b43f1e05cdec', null, '0', '2018-10-19 01:46:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('ab2d5bb670074c06808be976be147eaf', '7beb5a8dfd47438a991a00ed9fea6e94', '8f1729649d304290838cedc886ab79ee', null, '0', '2018-11-11 20:14:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('ae4e9ee5c05241779bb3058818cd3e79', '9348a023a46e469aba5287eef5553597', '9d5d76148a2a406dbc92ac14802ab205', null, '0', '2018-10-30 05:15:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('ae8691ba06084eb996d6c509528035a4', 'c794cfc444b74d56a7508d219d3be599', '8f3913d4c0434a7ab20f29e97965eb7e', null, '0', '2018-11-11 20:05:23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('b727c40b02b040c9aa967cf0ac1c6c3a', '5bab987b88374b2381976b09d445bbb0', 'b03e3f89756043f6bb6d6443554a69e2', null, '0', '2018-11-11 20:18:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('c4d81c276ec54130abb91b64d2862c2b', '46d1ffa4d0934b639b552008d3fa37eb', '825aa76fa03448009aaf7fb59c5d622e', null, '0', '2018-10-19 03:42:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('c620814f85b140a19948fc1c79ae53ba', '9e5297d82eed4a3285142415b8796a21', '56a3f776e1de4e4fae0c0458cb21e3f3', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('c77525c990a64133ae398d4203685e9f', '6b204ef825534f4b91e6c1fdf4b0850a', '28c57ae863af4fe9bb28d23d590e4fbd', null, '0', '2018-10-30 21:54:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('cb69c28b69af433bb437a9f06567d0fe', '621053e6d99e4df99d01899059028d98', '84c64cd49db2445084e12ddba41e6fd2', null, '0', '2018-11-11 20:20:02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('cc43e37fdec64f1da4288d908e8e2006', 'c391f093dc2a4963aa42cdd20a80530c', '91647845fe1d44a186ddb4abc1040e2f', null, '0', '2018-11-11 20:20:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('cc6331fbc68d4058be5234cf76e4bd5c', '69807e31bdd146e08febb9e447658cb1', '2226c66a2d2b436388ff7a8afd658afb', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('d62e8442756a41629cce82ef87b46954', '711ef8b4fc6946adbbb758084f51fee4', 'd4d58fdb57fd49da9ffd88afdc20ba6f', null, '0', '2018-10-19 02:30:44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('e9898d0764534dd6820fd5b198800569', '9e5297d82eed4a3285142415b8796a21', '2fe21b4f0eb3490097feb686c84b8632', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('eea400cb275e45cea93699c3f54b9858', 'a202dc8168db4e0ab237fc4328708699', '2911ea8b63f64cebb9b17ee5133f1249', null, '0', '2018-10-19 02:37:10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('ef08f506bb6544ee84e705d780156b65', '98bfe8d007ad44a68c86ddc8d4d7b352', 'b35c3bb3ce0447e4af05b887d2fc66f0', null, '0', '2018-10-22 23:07:30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('f284e859767846a5bb37a4376cd1fa6a', '24b4b41a5f674cfab47557dbcec26500', 'b50bce4780d643aa9e8f6c8d41a2a826', null, '0', '2018-10-19 03:44:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `base_group_member` VALUES ('f481ee8c0beb40888e858e4548eb26e3', 'efd3b277e4e34ca6997c45a057e3c516', 'f8f955780bf2408cb854f2e1fd7e442e', null, '0', '2018-11-11 20:20:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
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
  `product_version` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL,
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
-- Table structure for common_field
-- ----------------------------
DROP TABLE IF EXISTS `common_field`;
CREATE TABLE `common_field` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `tenant_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目id',
  `delete_status` int(11) DEFAULT '0' COMMENT '删除状态(1:未删除，0:已删除)',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公共字段表';

-- ----------------------------
-- Records of common_field
-- ----------------------------

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
INSERT INTO `host_contract` VALUES ('3f515d224e2846758af2a7355af97c3f', 'da4f5777888d4c749741bdd47981b519', '2018-10-21', '2018-10-28', '2018-10-22', '666666', '0', '2018-10-23 22:41:56', null, '2018-10-24 11:41:55', null);
INSERT INTO `host_contract` VALUES ('480b5fb60ce9433a93a0d44094d0d2fa', 'ff89e683aa88482d8baced036b772999', '2018-10-12', '2018-10-23', '2018-10-12', 'Q-T-181018789', '0', '2018-10-18 03:36:12', null, '2018-10-18 16:36:11', null);
INSERT INTO `host_contract` VALUES ('64b34c0b03514023b6da0e2a2271f138', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-10-01', '2018-10-02', '2018-10-16', '32423', '0', '2018-10-22 06:07:11', null, '2018-10-22 19:07:11', null);
INSERT INTO `host_contract` VALUES ('a91cde03ce34436e9bbeacd239247cd7', '2fde74f7d692487685e07c5261a01425', '2018-10-12', '2018-10-25', '2018-10-12', 'T-PS-181018124', '0', '2018-10-17 20:03:48', null, '2018-10-18 09:03:47', null);
INSERT INTO `host_contract` VALUES ('c797d0795f464ee292a7cb192d90ef81', 'da4f5777888d4c749741bdd47981b519', '2018-10-17', '2018-10-30', '2018-10-17', 'T-U-181018456', '0', '2018-10-17 22:41:38', null, '2018-10-18 11:41:37', null);
INSERT INTO `host_contract` VALUES ('cdc1245e9b1048e2a270d4843b0f089b', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-10-01', '2018-10-02', '2018-10-04', 'nm,', '0', '2018-10-22 22:31:56', null, '2018-10-23 11:31:55', null);
INSERT INTO `host_contract` VALUES ('d34cf9514d92429db646aa3d97760baf', 'cc9ac07ba95c4454ba5c8ecff628d6f8', '2018-10-01', '2018-10-02', '2018-10-03', 'ceshi', '0', '2018-10-24 03:23:16', null, '2018-10-24 16:23:16', null);

-- ----------------------------
-- Table structure for host_product
-- ----------------------------
DROP TABLE IF EXISTS `host_product`;
CREATE TABLE `host_product` (
  `id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '产品名称',
  `version` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '产品版本',
  `roles` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色列表',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态 0 未删除 1 删除',
  `crt_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crt_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  `upd_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `upd_name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name_version` (`name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of host_product
-- ----------------------------
INSERT INTO `host_product` VALUES ('e804b79df0224db789abff4bdf7438dd', 'PV', '4.0', '资料管理员;数据录入员;数据录入QC员;医学审评员;医学审评QC员;报告递交员;公司经理;企业运维;业务系统运维;最小访问权限', '0', '2018-11-02 01:26:51', null, '2018-11-02 04:29:58', null);

-- ----------------------------
-- Table structure for host_product_roles
-- ----------------------------
DROP TABLE IF EXISTS `host_product_roles`;
CREATE TABLE `host_product_roles` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `tenant_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `host_product_id` char(32) DEFAULT NULL COMMENT '产品版本id',
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `role_type` tinyint(11) DEFAULT NULL COMMENT '角色类型(-1最小角色类型 1 普通角色类型）',
  `deleted` int(11) DEFAULT '0' COMMENT '删除状态(0:未删除，1:已删除)',
  `REVISION` int(11) DEFAULT '1' COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品角色表';

-- ----------------------------
-- Records of host_product_roles
-- ----------------------------
INSERT INTO `host_product_roles` VALUES ('0be3316a9cce4bb6894405d72c234038', null, 'e804b79df0224db789abff4bdf7438dd', '1002', '资料管理员', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);
INSERT INTO `host_product_roles` VALUES ('1', null, null, '1001', '最小访问权限', '-1', '0', '1', null, '2018-10-26 09:55:43', null, '2018-10-26 09:55:47');
INSERT INTO `host_product_roles` VALUES ('3813d03ae469477cb49663633436835f', null, 'e804b79df0224db789abff4bdf7438dd', '1009', '企业运维', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);
INSERT INTO `host_product_roles` VALUES ('3f1c4e31f0fc48f28a850148deb2a131', null, 'e804b79df0224db789abff4bdf7438dd', '1004', '数据录入QC员', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);
INSERT INTO `host_product_roles` VALUES ('5313854c435c434a875848a2f403c8e9', null, 'e804b79df0224db789abff4bdf7438dd', '1010', '业务系统运维', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);
INSERT INTO `host_product_roles` VALUES ('5c8ea2ec37c74ea5962c58f88eb8a3d8', null, 'e804b79df0224db789abff4bdf7438dd', '1003', '数据录入员', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);
INSERT INTO `host_product_roles` VALUES ('789ad8d704e1473180ac21ca59977495', null, 'e804b79df0224db789abff4bdf7438dd', '1008', '公司经理', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);
INSERT INTO `host_product_roles` VALUES ('d2d11bd2aab549b5afafe6f3ef78f67a', null, 'e804b79df0224db789abff4bdf7438dd', '1005', '医学审评员', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);
INSERT INTO `host_product_roles` VALUES ('f99a837b884d44e79357ef30f9e7cc99', null, 'e804b79df0224db789abff4bdf7438dd', '1006', '医学审评QC员', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);
INSERT INTO `host_product_roles` VALUES ('fbb1547fd2fe476a9d07b95d495482dc', null, 'e804b79df0224db789abff4bdf7438dd', '1007', '报告递交员', '1', '0', '1', null, '2018-11-02 04:29:58', null, null);

-- ----------------------------
-- Table structure for host_project
-- ----------------------------
DROP TABLE IF EXISTS `host_project`;
CREATE TABLE `host_project` (
  `id` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `product_id` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '产品id',
  `serial_number` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `product_version` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '产品版本',
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
INSERT INTO `host_project` VALUES ('0e22840e89944764911f48c298de5be3', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '0', '2018-10-12', '2018-10-25', 'http://10.0.1.251:8484/#/dashboard', '0', 'a91cde03ce34436e9bbeacd239247cd7', '0', '2018-10-17 20:03:48', null, '2018-10-18 09:03:47', 'false');
INSERT INTO `host_project` VALUES ('2e38061afa0440a0bf6c69acf4d54c32', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '100', '2018-10-04', '2018-10-12', 'http://jhgdsf.com', '0', '6d95cf950705442fbf6c6ceee49852cc', '1', '2018-10-22 03:32:16', null, '2018-10-22 16:32:15', 'false');
INSERT INTO `host_project` VALUES ('438e35665fd2474bb51158858e92c27b', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '100', '2018-10-14', '2018-10-15', 'http://jhjdsk.com', '1', '64b34c0b03514023b6da0e2a2271f138', '0', '2018-10-22 06:07:11', null, '2018-10-22 19:07:11', 'false');
INSERT INTO `host_project` VALUES ('821f717c763a40ebad0d7c704a31c843', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '2', '2018-10-12', '2018-10-25', 'http://10.0.1.251:8484/#/dashboard', '0', 'a91cde03ce34436e9bbeacd239247cd7', '0', '2018-10-17 20:03:48', null, '2018-10-18 09:03:47', 'false');
INSERT INTO `host_project` VALUES ('85582b20b49f4262a7fc864fb4db1bb9', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '2', '2018-10-12', '2018-10-23', 'http://10.0.1.251:8484/#/roles/index', '0', '480b5fb60ce9433a93a0d44094d0d2fa', '0', '2018-10-18 03:36:12', null, '2018-10-18 16:36:11', 'false');
INSERT INTO `host_project` VALUES ('95afe57f441444a88afc01ba77cc6204', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '100', '2018-10-07', '2018-10-14', 'http://jhdfj.com', '2', 'd940326e65924911a2a1cd979b1b37a6', '0', '2018-10-30 20:41:42', null, '2018-10-30 20:42:50', 'false');
INSERT INTO `host_project` VALUES ('9f5b0aba893d4bb6ba5341dbf93bad6e', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '100', '2018-09-30', '2018-10-14', 'http://mbmbd.com', '0', 'cdc1245e9b1048e2a270d4843b0f089b', '0', '2018-10-22 22:31:56', null, '2018-10-23 11:31:55', 'false');
INSERT INTO `host_project` VALUES ('c0a0f6b609bb4e23a4a8a9041dd00f51', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '3', '2018-10-12', '2018-10-25', 'http://10.0.1.251:8484/#/dashboard', '0', 'a91cde03ce34436e9bbeacd239247cd7', '0', '2018-10-17 20:03:48', null, '2018-10-18 09:03:47', 'false');
INSERT INTO `host_project` VALUES ('e68c40c841cb4a50b177a1cec24acda3', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '100', '2018-10-04', '2018-09-27', 'http://jhjkfd.com', '2', '16ad098ca2a64190952b05d580b28e39', '0', '2018-10-22 22:24:03', null, '2018-10-22 22:30:47', 'false');
INSERT INTO `host_project` VALUES ('ec069029443a412e932b4235e34ce575', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '-1', '2018-10-21', '2018-10-22', 'http://jhjfd.com', '2', '2ff0521e70f643aa84f3f2ceb9285766', '0', '2018-10-22 03:14:19', null, '2018-10-22 03:31:14', 'false');
INSERT INTO `host_project` VALUES ('fe6576fe2f754710a561d5bde3b05cde', 'e804b79df0224db789abff4bdf7438dd', '123', '4.0', '6', '2018-10-21', '2018-10-28', 'http://10.0.1.253:3327/#/systemMag/contract/add', '1', '3f515d224e2846758af2a7355af97c3f', '0', '2018-10-23 22:41:56', null, '2018-10-24 11:41:55', 'false');

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
INSERT INTO `saas_project` VALUES ('02fd0579074243b484ccfa230c0cd981', '1de3b2e83f504295a8d5560891c3fbed', '438e35665fd2474bb51158858e92c27b', '123fd', '胜多负少', '0', '0', null, '2018-10-30 21:47:55', null, '2018-10-31 10:47:54');
INSERT INTO `saas_project` VALUES ('13', '123', '123', 'bjlh_pv', '白家老号', '1', '0', null, '2018-08-16 13:57:42', null, '2018-08-16 13:57:42');
INSERT INTO `saas_project` VALUES ('136cc6890c454e6087880d2bd144f703', '1de3b2e83f504295a8d5560891c3fbed', '0e22840e89944764911f48c298de5be3', 'fg', 'fg', '0', '0', null, '2018-11-12 04:51:56', null, '2018-11-12 18:51:55');
INSERT INTO `saas_project` VALUES ('70b98d7c4ebd4d4bb0e3fb2dfadcde6b', '6ca6ffc8cd564094b7f584e2bca0a3f7', '0e22840e89944764911f48c298de5be3', '123', 'test', '0', '0', null, '2018-11-12 19:12:28', null, '2018-11-13 09:12:28');
INSERT INTO `saas_project` VALUES ('875d762ac14f47b3a8c2244a5e96d5de', '6ca6ffc8cd564094b7f584e2bca0a3f7', 'ec069029443a412e932b4235e34ce575', '20181102', '梅斯CRO', '1', '0', null, '2018-11-02 01:31:54', null, '2018-11-02 14:31:54');
INSERT INTO `saas_project` VALUES ('abbd86ee2a4b4a9099d69710ad1ad191', 'da4f5777888d4c749741bdd47981b519', '0e22840e89944764911f48c298de5be3', '003', '青青项目', '1', '0', null, '2018-11-11 19:24:19', null, '2018-11-12 09:24:19');
INSERT INTO `saas_project` VALUES ('da2b752e9b4749348dacb031adb04643', 'da4f5777888d4c749741bdd47981b519', '222', '002', '房地产项目', '1', '0', null, '2018-10-18 03:38:37', null, '2018-10-18 16:38:36');

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
INSERT INTO `saas_project_user` VALUES ('123123', '13', '33', 'cro', '1', '1', '2018-08-08 16:20:26', null, '2018-08-23 16:20:29', null);
INSERT INTO `saas_project_user` VALUES ('2b48ae9921544454b2ea9b85601c7602', '46ea3b3e1ef74302abcfa4023603a999', '33', '数据质控QC', '1', '1', '2018-10-24 11:42:38', null, '2018-10-24 11:42:38', null);
INSERT INTO `saas_project_user` VALUES ('373c546a68cd43979f6247b7d0c59ab2', 'ea65b0c1bee449b0a84a9cf32e9ab7ec', '865e7d4a867c48da88f7a5465c1f3688', '最小访问权限', '1', '1', '2018-10-22 14:26:08', null, '2018-10-22 14:26:08', null);
INSERT INTO `saas_project_user` VALUES ('68c4519a6cc34532b632e87e0dad5c97', 'ea65b0c1bee449b0a84a9cf32e9ab7ec', 'b2c484bdceb940249eaf7415e286fbfb', '最小访问权限;22', '1', '1', '2018-10-25 09:08:00', null, '2018-10-25 09:08:00', null);
INSERT INTO `saas_project_user` VALUES ('85dfeeec22a14b35baec177033f1c1c5', 'ea65b0c1bee449b0a84a9cf32e9ab7ec', '0e22840e89944764911f48c298de5be3', '资料管理员;最小访问权限;数据录入员', '1', '1', '2018-10-18 15:31:42', null, '2018-10-18 15:31:42', null);
INSERT INTO `saas_project_user` VALUES ('a9ebde433cdd424db8ae9e992f5e2b47', 'da2b752e9b4749348dacb031adb04643', '865e7d4a867c48da88f7a5465c1f3688', '最小访问权限;数据录入', '1', '0', '2018-10-22 10:31:46', null, '2018-10-22 10:31:46', null);
INSERT INTO `saas_project_user` VALUES ('afd6de918c1d4c6db7e5d88ee0de6b03', 'bf610423b6a9495fb9d2d61761d266ed', '8684339eaa6b4d3e8aa78ac0f4651415', '最小访问权限;开发;游客;22', '2', '1', '2018-10-23 11:39:07', null, '2018-10-23 11:39:07', null);
INSERT INTO `saas_project_user` VALUES ('b35d35e26f9c4d05a7014cfcb84ac2a4', '13', '0e22840e89944764911f48c298de5be3', null, '1', '1', '2018-10-22 17:54:58', null, '2018-10-22 17:54:58', null);
INSERT INTO `saas_project_user` VALUES ('bcfff11b031c4e998af27f6ad9041cfd', 'bf610423b6a9495fb9d2d61761d266ed', '0e22840e89944764911f48c298de5be3', '游客', '1', '1', '2018-10-23 11:40:43', null, '2018-10-23 11:40:43', null);
INSERT INTO `saas_project_user` VALUES ('c7e4e6c4f72944e68b4ed9a6cdd6ba24', '46ea3b3e1ef74302abcfa4023603a999', 'da3a9be724924d7097e7914ae9b63832', '最小访问权限;开发', '1', '1', '2018-10-23 10:55:54', null, '2018-10-23 10:55:54', null);
INSERT INTO `saas_project_user` VALUES ('ceb66b9960df44248b472e9c61dc1e31', '46ea3b3e1ef74302abcfa4023603a999', '0e22840e89944764911f48c298de5be3', '最小访问权限', '2', '1', '2018-10-22 14:30:52', null, '2018-10-22 14:30:52', null);
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
  `logo_fileId` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '公司logoid',
  `report_Mark` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '报告编号企业标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of saas_tenant
-- ----------------------------
INSERT INTO `saas_tenant` VALUES ('123', '九芝堂pv', 'jzt_pv', null, '上海市/上海', '上海松江区', null, null, '1', '0', '2018-08-08 15:36:45', null, '2018-10-19 01:57:06', null, null, null, null);
INSERT INTO `saas_tenant` VALUES ('1de3b2e83f504295a8d5560891c3fbed', 'logo', 'ASDF', '中国', '上海/上海', '浦东新区', '2434', 'http://khdfkj.com', '1', '0', '2018-10-30 05:21:22', null, '2018-10-30 20:16:31', null, 'dfg', 'http://p8i8uyqde.bkt.clouddn.com/logo.png?attname=logo.png&e=1540898307&token=QgXjzoMtDc1slvqisWVnn9YGKu-lVbPJhaHdCKW9:-AtNzEXH_m4Zd1hK85yS7uDHg2Q=', null);
INSERT INTO `saas_tenant` VALUES ('2fde74f7d692487685e07c5261a01425', '青青制药有限公司', '123456789', '中国', '上海市/上海', '上海松江区', '21000', 'http://www.baidu.com', '2', '0', '2018-10-17 02:12:32', null, '2018-10-30 20:16:50', null, 'qingqing', null, null);
INSERT INTO `saas_tenant` VALUES ('400d7c7146a44378bb3d1c0c61ce69c5', '太阳', 'ASDF', '中国', '上海/上海', '浦东新区', '123234', 'http://khshd.com', '1', '1', '2018-10-22 06:00:58', null, '2018-10-22 19:00:57', null, 'ty', null, null);
INSERT INTO `saas_tenant` VALUES ('4ae230922bf641ae8b6df8fd1a92b3b4', '环境', 'DFGG', '中国', '上海/上海', '浦东新区', '123344578', '电放费', '1', '1', '2018-10-30 20:13:50', null, '2018-10-30 20:14:56', null, 'SDSF', null, null);
INSERT INTO `saas_tenant` VALUES ('5bcc0c00e53542429a545c1fe5304afb', '水电费', 'KLOI', '中国', '上海/上海', '浦东新区', '123234354', 'http://jhskjd.com', '2', '1', '2018-10-22 03:09:51', null, '2018-10-22 16:09:50', null, 'jif', null, null);
INSERT INTO `saas_tenant` VALUES ('62', '龙门镖局', 'longmen', '中国', '上海市', '静安区', '200102', 'http://cxjkh.c0m', '1', '0', '2018-08-08 15:48:28', null, '2018-10-23 01:05:05', null, null, null, null);
INSERT INTO `saas_tenant` VALUES ('6ca6ffc8cd564094b7f584e2bca0a3f7', '梅斯CRO', 'MEDS', '中国', '上海市/上海市', '上海市徐汇区宜山路425号办公楼三层', '200232', 'http://www.medsci.cn/', '2', '0', '2018-11-02 01:20:06', null, '2018-11-02 14:20:05', null, 'Medsci', 'http://p8i8uyqde.bkt.clouddn.com/_Foxmail.1%405cd5205f-d6fe-a7ca-8234-dd8d5a742394%3F5130612171150620178.png?attname=_Foxmail.1%405cd5205f-d6fe-a7ca-8234-dd8d5a742394%3F5130612171150620178.png&e=1541143204&token=QgXjzoMtDc1slvqisWVnn9YGKu-lVbPJhaHdCKW9:5IVtphfcUtVBBFZ5NOphxteF860=', null);
INSERT INTO `saas_tenant` VALUES ('cc9ac07ba95c4454ba5c8ecff628d6f8', '测试企业名称xiao', 'CSQY', 'China', '上海市/上海市', 'shanghai', '10086', 'www.xiao.com', '2', '0', '2018-10-19 02:26:59', null, '2018-10-22 06:11:24', null, 'CSQY', null, null);
INSERT INTO `saas_tenant` VALUES ('da4f5777888d4c749741bdd47981b519', '青青企业', '666666', '中国', '上海市/上海', '上海松江', '21000', 'http://demo.pv.idrugsafety.cn/login', '3', '0', '2018-10-17 02:15:02', null, '2018-10-18 03:30:50', null, 'qingqi', null, null);
INSERT INTO `saas_tenant` VALUES ('e3c00989467d4b77a255208e9ba97c48', '测试企业', 'ASDF', '中国', '上海/上海', '浦东新区', '12324567999', 'http://jhf.com', '1', '1', '2018-10-30 03:07:38', null, '2018-10-30 20:38:26', null, 'fdss', null, null);
INSERT INTO `saas_tenant` VALUES ('ee53618829ab41b3bb35bda168ca05b1', 'fgh', 'ASDF', '国家', '省/城市', '企业地址', '邮编', ' 企业域名', '3', '1', '2018-10-30 20:39:30', null, '2018-10-30 20:39:53', null, 'fgh', null, null);
INSERT INTO `saas_tenant` VALUES ('ff89e683aa88482d8baced036b772999', '青青人民医院', 'QQQQ', '中国', '上海市/上海', '上海松江', '21000', 'http://www.baidu.com', '3', '0', '2018-10-19 02:05:11', null, '2018-11-11 19:27:33', null, 'renming', 'http://p8i8uyqde.bkt.clouddn.com/JPEG.jpg?attname=JPEG.jpg&e=1541989648&token=QgXjzoMtDc1slvqisWVnn9YGKu-lVbPJhaHdCKW9:E8MoTBgF4uorasHsnnzNU7gtDRw=', null);

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
  `user_status` int(10) DEFAULT '1' COMMENT '用户状态：1、正常，2、禁用',
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
INSERT INTO `saas_user` VALUES ('2648b1d5b09c4fbd8b397133d3071d77', '6ca6ffc8cd564094b7f584e2bca0a3f7', 'qingqing', '青青', '$2a$12$i80TO6ZaC8kuFIXlVzFGcucrE.ITrpu/XXpVFBCvQZ81qL/XqAZWi', '18321692036', 'aa@bioon.com', '1', '1', null, '1', '2018-11-11 20:05:22', null, '2018-11-12 10:05:22', null);
INSERT INTO `saas_user` VALUES ('33', '123', 'jerry', '33', '$2a$12$iEJQi2gDX9x6Q0fn0j4Wxe5o6kayXO7EQRiUnmRkz5ki/5fCmXWfu', '13112345678', '634@BIOON.COM', '0', '1', '2', '0', '2018-08-29 15:39:32', '12', '2018-10-23 22:42:58', '3');
INSERT INTO `saas_user` VALUES ('50971403fa0d4343b9b4ce5c83a812ad', 'e974e4d26e244940a68d323643db8939', 'ququ', 'ququ', '$2a$12$H2CadwigV73wmWHyBYE4TenIvtV8Ey7wUzxJz0q3N0QjB6xL/kM9W', '13112345678', 'qu@bioon.com', '1', '1', null, '0', '2018-11-12 01:02:50', null, '2018-11-12 01:02:50', null);
INSERT INTO `saas_user` VALUES ('5b390cca0b9745ea83c7e690ce3b2aaa', '123', 'xuner', '熏儿', '$2a$12$Phm6CCzDH4W77RxClhefR.WlTJo33hLeUnZjmwgpiWWp970Ig2Unm', '13287654321', '666@bioon.com', '1', '1', null, '0', '2018-10-24 02:33:20', null, '2018-10-24 15:33:20', null);
INSERT INTO `saas_user` VALUES ('67', '123', '申沙沙', '测试账号1', '$2a$12$ZEtpkis93dH4mtm.mJiNz.gGUSePLsxxJ2v1b7YW3Oq7L6oLYxemW', '15093148821', 'shasha.shen@medsci.cn', '0', '1', '测试', '0', '2018-09-19 07:14:32', null, '2018-09-19 20:14:32', null);
INSERT INTO `saas_user` VALUES ('73ede8dd9fbb45698d50b1952871a244', 'c3f72ccff5b2450f98449448e7b654b7', 'ququ', 'ququ', '$2a$12$TXfF.uTgPlzK0p0p9iJt9eKE5E7/DJn8rcpP8L72vkQgm.UAQzPxm', '13112345678', 'qu@bioon.com', '1', '1', null, '0', '2018-11-12 01:02:50', null, '2018-11-12 01:02:50', null);
INSERT INTO `saas_user` VALUES ('76760e8b157b4a80817019ce3d971940', '6ca6ffc8cd564094b7f584e2bca0a3f7', 'qingqing', '青青', '$2a$12$LUBasGLo/XWOWMipzMX21ecU5HBHitrT6l/ENyNqqfnIR5oisVDoi', '13112345678', '4aaa@bioon.com', '1', '1', null, '1', '2018-11-11 20:14:48', null, '2018-11-12 10:14:48', null);
INSERT INTO `saas_user` VALUES ('84c64cd49db2445084e12ddba41e6fd2', '123', '33', 'sa', '$2a$12$DPbMP5CXTwvsIq.ZEaB2EOXXMGQl2g1lO/ZYjzm6TauIb3z6Me48e', '13112345687', '224@bioon.com', '1', '1', null, '0', '2018-11-11 20:20:02', null, '2018-11-12 10:20:02', null);
INSERT INTO `saas_user` VALUES ('85bde88a54834c4dbd60cbfc00026243', '123', '33', 'sa', '$2a$12$luCRdgSZB2gJIM5uWjU6/.1dIhRCQaiRP94sjuR02mjUfaOPnibkm', '13112345687', '224@bioon.com', '1', '1', null, '0', '2018-11-11 20:20:02', null, '2018-11-12 10:20:03', null);
INSERT INTO `saas_user` VALUES ('88c9992e46c944c0af378966992d499d', '123', 'xuefang', '雪芳', '$2a$12$IcVTUdHjKM.oFLkKcLPMp.gyayJGy8la7Q.iH/0vK/Kto1veWIyse', '13112345678', 'xuefang.li@bioon.com', '1', '1', null, '0', '2018-10-16 22:39:47', null, '2018-10-17 11:39:46', null);
INSERT INTO `saas_user` VALUES ('8f1729649d304290838cedc886ab79ee', '6ca6ffc8cd564094b7f584e2bca0a3f7', 'qingqing', '青青', '$2a$12$.ilr3rG.NJfnYZ2KMVWCqe/57iH.36WB/MIAFacOeQiRAblaUPjue', '13112345678', '4aaa@bioon.com', '1', '1', null, '1', '2018-11-11 20:14:48', null, '2018-11-12 10:14:48', null);
INSERT INTO `saas_user` VALUES ('8f3913d4c0434a7ab20f29e97965eb7e', '6ca6ffc8cd564094b7f584e2bca0a3f7', 'qingqing', '青青', '$2a$12$xkMNCt0caqCenauM36J85ukljf9r/2qS1aqBuGXKjZgygATQldWba', '18321692036', 'aa@bioon.com', '1', '1', null, '1', '2018-11-11 20:05:20', null, '2018-11-12 10:05:20', null);
INSERT INTO `saas_user` VALUES ('91647845fe1d44a186ddb4abc1040e2f', '123', '33', 'sa', '$2a$12$lHadWD4yXu5Qg1J.q5874OlVUz8ZXqB9P4fmmLutouzYJsVd3txGS', '13112345687', '224@bioon.com', '1', '1', null, '0', '2018-11-11 20:20:02', null, '2018-11-12 10:20:02', null);
INSERT INTO `saas_user` VALUES ('94595de42e784bdeadbe6fcf86d0aee5', '23e388d226a341d680036440952cb411', '波波', '波波', '$2a$12$PRsFxfcw3CGIS33vcjaSPO8sn5WW4g.V9V0usTiPF3h/mkgVhHyGe', '13112345678', '77@bioon.com', '1', '1', null, '0', '2018-11-12 01:01:28', null, '2018-11-12 01:01:28', null);
INSERT INTO `saas_user` VALUES ('bbe241b341ff44caaafd442422eb5b51', '6ca6ffc8cd564094b7f584e2bca0a3f7', 'qingqing', '青青', '$2a$12$w0XPUkGu7ywG4S06jifrfu8IscQYbN8Mty9RSr3Tf0sepqFS7VhtG', '13187654321', 'lixuefang69@163.com', '1', '1', null, '0', '2018-10-17 20:46:47', null, '2018-10-18 09:46:47', null);
INSERT INTO `saas_user` VALUES ('bf4dd9b1769d4abc9b2bd556154f3147', '2fde74f7d692487685e07c5261a01425', 'xiaoyan', '萧炎', '$2a$12$FjXOv3icy0Y2NEvqwKcolegskZ4dxL4uy.Hle9PdrBESCTysNbQpO', '15612345678', '748703042@qq.com', '1', '1', null, '0', '2018-10-18 10:54:03', null, '2018-10-18 10:54:03', null);
INSERT INTO `saas_user` VALUES ('c66746f3994c40088886e36b85658247', '242fac02a109468cb2061174971c8814', 'ququ', 'ququ', '$2a$12$V5zVmPxvix0YoNC7hZAP6ei.O0N7UTbijM.q3ew1YAb8ei7z316DK', '13112345678', 'qu@bioon.com', '1', '1', null, '0', '2018-11-12 01:02:50', null, '2018-11-12 01:02:50', null);
INSERT INTO `saas_user` VALUES ('d4d52fe4cb7a43559eb8a365a8b6f307', '6ca6ffc8cd564094b7f584e2bca0a3f7', 'qingqing', '青青', '$2a$12$FQgZbowmHKz9ZBgGPl0.zeHfqZGsLNg3QhPhsHEn7qo8LyV6MVjqe', '13112345678', '4aaa@bioon.com', '1', '1', null, '1', '2018-11-11 20:14:47', null, '2018-11-12 10:14:47', null);
INSERT INTO `saas_user` VALUES ('f8f955780bf2408cb854f2e1fd7e442e', '123', '33', 'sa', '$2a$12$rkPEPUZzpyk9irlpIzZADudplRW4YDXwde6rDQ5U4hEUdob.IQeAq', '13112345687', '224@bioon.com', '1', '1', null, '0', '2018-11-11 20:20:02', null, '2018-11-12 10:20:02', null);

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
INSERT INTO `saas_user_log` VALUES ('003531b1-d8bb-11e8-b52d-bbb9f2167e9d', 'jerry', '登录', '登录成功！', '0', '2018-10-26 09:03:50');
INSERT INTO `saas_user_log` VALUES ('dee14892-d8bb-11e8-b52d-c3610ac5724b', 'jerry', '登录', '登录成功！', '0', '2018-10-26 09:10:04');
INSERT INTO `saas_user_log` VALUES ('a4eebce3-db17-11e8-b52d-5937c85ab6de', 'jerry', '登录', '登录成功！', '0', '2018-10-29 09:12:03');
INSERT INTO `saas_user_log` VALUES ('a4ef5924-db17-11e8-b52d-191271d92984', 'jerry', '登录', '登录成功！', '0', '2018-10-29 09:12:03');
INSERT INTO `saas_user_log` VALUES ('580ff2a5-db1b-11e8-b52d-df66b1116da0', 'jerry', '登录', '登录成功！', '0', '2018-10-29 09:38:32');
INSERT INTO `saas_user_log` VALUES ('82dccf66-db22-11e8-b52d-8d2f555d8ff3', 'jerry', '登录', '登录成功！', '0', '2018-10-29 10:29:50');
INSERT INTO `saas_user_log` VALUES ('3f81f647-db23-11e8-b52d-53c44e033481', 'jerry', '登录', '登录成功！', '0', '2018-10-29 10:35:07');
INSERT INTO `saas_user_log` VALUES ('419d0e18-db23-11e8-b52d-9b4ec790420b', 'jerry', '登录', '登录成功！', '0', '2018-10-29 10:35:10');
INSERT INTO `saas_user_log` VALUES ('4a8469b9-db23-11e8-b52d-fd0eb721858b', 'jerry', '登录', '登录成功！', '0', '2018-10-29 10:35:25');
INSERT INTO `saas_user_log` VALUES ('65733fda-db23-11e8-b52d-bba1c5995642', 'jerry', '登录', '登录成功！', '0', '2018-10-29 10:36:10');
INSERT INTO `saas_user_log` VALUES ('326a1aeb-db24-11e8-b52d-1f85a0267794', 'jerry', '登录', '登录成功！', '0', '2018-10-29 10:41:54');
INSERT INTO `saas_user_log` VALUES ('3297ee6c-db34-11e8-b52d-511896150a57', 'jerry', '登录', '登录成功！', '0', '2018-10-29 12:36:26');
INSERT INTO `saas_user_log` VALUES ('569d6d8d-db34-11e8-b52d-3b5b4c5aaba1', 'jerry', '登录', '登录成功！', '0', '2018-10-29 12:37:27');
INSERT INTO `saas_user_log` VALUES ('71e55e2e-db4a-11e8-b52d-270736dc6137', 'jerry', '登录', '登录成功！', '0', '2018-10-29 15:15:41');
INSERT INTO `saas_user_log` VALUES ('72c46a2f-db63-11e8-b52d-c3f578a455c9', 'jerry', '登录', '登录成功！', '0', '2018-10-29 18:14:40');
INSERT INTO `saas_user_log` VALUES ('5952cb80-dbe2-11e8-b52d-19bcec8f4d30', 'jerry', '登录', '登录成功！', '0', '2018-10-30 09:23:04');
INSERT INTO `saas_user_log` VALUES ('cd428251-dbed-11e8-b52d-5f60d42a433b', 'jerry', '登录', '登录成功！', '0', '2018-10-30 10:45:03');
INSERT INTO `saas_user_log` VALUES ('caf9c372-dbf0-11e8-b52d-9fcf46f921a4', 'jerry', '登录', '登录成功！', '0', '2018-10-30 11:06:27');
INSERT INTO `saas_user_log` VALUES ('067804c3-dbf1-11e8-b52d-c1505dfa50be', 'jerry', '登录', '登录成功！', '0', '2018-10-30 11:08:07');
INSERT INTO `saas_user_log` VALUES ('f2977294-dbf2-11e8-b52d-85f4beea8aa2', 'jerry', '登录', '登录成功！', '0', '2018-10-30 11:21:53');
INSERT INTO `saas_user_log` VALUES ('25310575-dbf5-11e8-b52d-5bc457fd9756', 'jerry', '登录', '登录成功！', '0', '2018-10-30 11:37:37');
INSERT INTO `saas_user_log` VALUES ('e0de4256-dbf6-11e8-b52d-db2893fc916a', 'jerry', '登录', '登录成功！', '0', '2018-10-30 11:50:01');
INSERT INTO `saas_user_log` VALUES ('24d62957-dbf7-11e8-b52d-c7eafb89b37b', 'jerry', '登录', '登录成功！', '0', '2018-10-30 11:51:55');
INSERT INTO `saas_user_log` VALUES ('4841b268-dbf7-11e8-b52d-25fdf950eb6e', 'jerry', '登录', '登录成功！', '0', '2018-10-30 11:52:55');
INSERT INTO `saas_user_log` VALUES ('d68269f9-dc08-11e8-b52d-35c1b80130fe', 'jerry', '登录', '登录成功！', '0', '2018-10-30 13:58:35');
INSERT INTO `saas_user_log` VALUES ('9132d04a-dc0a-11e8-b52d-b3d2c130645a', 'jerry', '登录', '登录成功！', '0', '2018-10-30 14:10:57');
INSERT INTO `saas_user_log` VALUES ('c583b34b-dc10-11e8-b52d-9b1983927fd7', 'jerry', '登录', '登录成功！', '0', '2018-10-30 14:55:22');
INSERT INTO `saas_user_log` VALUES ('a27fba1c-dc1a-11e8-b52d-dd0c109adec9', 'jerry', '登录', '登录成功！', '0', '2018-10-30 16:05:58');
INSERT INTO `saas_user_log` VALUES ('3798e31d-dc2f-11e8-b52d-430335405e06', 'jerry', '登录', '登录成功！', '0', '2018-10-30 18:33:18');
INSERT INTO `saas_user_log` VALUES ('ac5f2eee-dcaa-11e8-b52d-ebe8e105e5d9', 'jerry', '登录', '登录成功！', '0', '2018-10-31 09:17:02');
INSERT INTO `saas_user_log` VALUES ('9d9ad3af-dcb9-11e8-b52d-d934c2f99980', 'jerry', '登录', '登录成功！', '0', '2018-10-31 11:04:00');
INSERT INTO `saas_user_log` VALUES ('cf0c07a0-dcba-11e8-b52d-35c4cd6785a8', 'jerry', '登录', '登录成功！', '0', '2018-10-31 11:12:33');
INSERT INTO `saas_user_log` VALUES ('3e4e95a1-dcbc-11e8-b52d-7d54acd07a2e', 'jerry', '登录', '登录成功！', '0', '2018-10-31 11:22:49');
INSERT INTO `saas_user_log` VALUES ('e14fae82-dcbf-11e8-b52d-b75184b62713', 'jerry', '登录', '登录成功！', '0', '2018-10-31 11:48:51');
INSERT INTO `saas_user_log` VALUES ('f2d3f8d3-dccb-11e8-b52d-81d9c4449aae', 'jerry', '登录', '登录成功！', '0', '2018-10-31 13:15:14');
INSERT INTO `saas_user_log` VALUES ('40b7c844-dcce-11e8-b52d-87e757d84d4a', 'jerry', '登录', '登录成功！', '0', '2018-10-31 13:31:44');
INSERT INTO `saas_user_log` VALUES ('d826b835-dcce-11e8-b52d-7136b49d97eb', 'jerry', '登录', '登录成功！', '0', '2018-10-31 13:35:58');
INSERT INTO `saas_user_log` VALUES ('51310c36-dccf-11e8-b52d-8d4207c8d6ee', 'jerry', '登录', '登录成功！', '0', '2018-10-31 13:39:21');
INSERT INTO `saas_user_log` VALUES ('c4d5c367-dcf2-11e8-b52d-d149917518a0', 'jerry', '登录', '登录成功！', '0', '2018-10-31 17:53:07');
INSERT INTO `saas_user_log` VALUES ('d1a1f2f8-dcf5-11e8-b52d-a929372b6604', 'jerry', '登录', '登录成功！', '0', '2018-10-31 18:14:57');
INSERT INTO `saas_user_log` VALUES ('d236f849-dcfb-11e8-b52d-0d8909b3ac4e', 'jerry', '登录', '登录成功！', '0', '2018-10-31 18:57:55');
INSERT INTO `saas_user_log` VALUES ('0991877a-dd73-11e8-b52d-8160a2d06898', 'jerry', '登录', '登录成功！', '0', '2018-11-01 09:11:18');
INSERT INTO `saas_user_log` VALUES ('4b2de05b-dd75-11e8-b52d-eb20a1e1d431', 'jerry', '登录', '登录成功！', '0', '2018-11-01 09:27:27');
INSERT INTO `saas_user_log` VALUES ('9359697c-dd76-11e8-b52d-5bc81d0d1289', 'jerry', '登录', '登录成功！', '0', '2018-11-01 09:36:38');
INSERT INTO `saas_user_log` VALUES ('e208b45d-dd7a-11e8-b52d-27e44d644e4c', 'jerry', '登录', '登录成功！', '0', '2018-11-01 10:07:28');
INSERT INTO `saas_user_log` VALUES ('dff78bfe-dd98-11e8-b52d-21cbcc983402', 'jerry', '登录', '登录成功！', '0', '2018-11-01 13:42:09');
INSERT INTO `saas_user_log` VALUES ('ef171b3f-ddb8-11e8-b52d-bfa220932934', 'jerry', '登录', '登录成功！', '0', '2018-11-01 17:31:38');
INSERT INTO `saas_user_log` VALUES ('5763e470-ddba-11e8-b52d-0f562cd46848', 'jerry', '登录', '登录成功！', '0', '2018-11-01 17:41:43');
INSERT INTO `saas_user_log` VALUES ('f15fe7e1-ddba-11e8-b52d-abc7f4ac1f37', 'jerry', '登录', '登录成功！', '0', '2018-11-01 17:46:01');
INSERT INTO `saas_user_log` VALUES ('50a8e942-ddbb-11e8-b52d-195f3557bcea', 'jerry', '登录', '登录成功！', '0', '2018-11-01 17:48:41');
INSERT INTO `saas_user_log` VALUES ('628b0173-ddbb-11e8-b52d-7b9cadefda51', 'jerry', '登录', '登录成功！', '0', '2018-11-01 17:49:11');
INSERT INTO `saas_user_log` VALUES ('eed10a34-ddbb-11e8-b52d-8bc1f3a09e69', 'jerry', '登录', '登录成功！', '0', '2018-11-01 17:53:07');
INSERT INTO `saas_user_log` VALUES ('00831c45-ddbd-11e8-b52d-bd669dce722e', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:00:46');
INSERT INTO `saas_user_log` VALUES ('4d026496-ddbd-11e8-b52d-67fc1360b07e', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:02:54');
INSERT INTO `saas_user_log` VALUES ('ee2af447-ddbd-11e8-b52d-21561f0ed001', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:07:24');
INSERT INTO `saas_user_log` VALUES ('f07f92a8-ddbd-11e8-b52d-c9004abec6b2', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:07:28');
INSERT INTO `saas_user_log` VALUES ('258618c9-ddbe-11e8-b52d-01705f0df159', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:08:57');
INSERT INTO `saas_user_log` VALUES ('abdf413a-ddbe-11e8-b52d-b34b85cd5511', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:12:43');
INSERT INTO `saas_user_log` VALUES ('fd42855b-ddbe-11e8-b52d-61627a161019', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:14:59');
INSERT INTO `saas_user_log` VALUES ('6c5ce75c-ddbf-11e8-b52d-b94d50d3c661', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:18:06');
INSERT INTO `saas_user_log` VALUES ('0c11e9dd-ddc0-11e8-b52d-8d49a5df6c50', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:22:34');
INSERT INTO `saas_user_log` VALUES ('d40f1e3e-ddc0-11e8-b52d-ff24db32b7c6', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:28:09');
INSERT INTO `saas_user_log` VALUES ('2d7f189f-ddc5-11e8-b52d-a77144a75156', 'jerry', '登录', '登录成功！', '0', '2018-11-01 18:59:17');
INSERT INTO `saas_user_log` VALUES ('6f6fef90-ddc6-11e8-b52d-bb84c6d2827f', 'jerry', '登录', '登录成功！', '0', '2018-11-01 19:08:17');
INSERT INTO `saas_user_log` VALUES ('d01aa3d1-ddc6-11e8-b52d-ad8a0ef84d13', 'jerry', '登录', '登录成功！', '0', '2018-11-01 19:10:59');
INSERT INTO `saas_user_log` VALUES ('f364c232-ddc6-11e8-b52d-d3ff78ff0672', 'jerry', '登录', '登录成功！', '0', '2018-11-01 19:11:59');
INSERT INTO `saas_user_log` VALUES ('0d115453-ddc7-11e8-b52d-538c9fb7007a', 'jerry', '登录', '登录成功！', '0', '2018-11-01 19:12:42');
INSERT INTO `saas_user_log` VALUES ('27ddbc14-ddcc-11e8-b52d-454a53d87a6d', 'jerry', '登录', '登录成功！', '0', '2018-11-01 19:49:14');
INSERT INTO `saas_user_log` VALUES ('ee59ceb5-ddcc-11e8-b52d-474f3cc23a90', 'jerry', '登录', '登录成功！', '0', '2018-11-01 19:54:47');
INSERT INTO `saas_user_log` VALUES ('a2d62506-de3b-11e8-b52d-c344cd168832', 'jerry', '登录', '登录成功！', '0', '2018-11-02 09:07:15');
INSERT INTO `saas_user_log` VALUES ('f74f5bb7-de3b-11e8-b52d-77e668203f4a', 'jerry', '登录', '登录成功！', '0', '2018-11-02 09:09:36');
INSERT INTO `saas_user_log` VALUES ('2ecbce68-de3d-11e8-b52d-8dd67bf20536', 'jerry', '登录', '登录成功！', '0', '2018-11-02 09:18:19');
INSERT INTO `saas_user_log` VALUES ('79d10ef9-de3f-11e8-b52d-3dda294322d8', 'jerry', '登录', '登录成功！', '0', '2018-11-02 09:34:44');
INSERT INTO `saas_user_log` VALUES ('153f3bda-de47-11e8-b52d-bd87cb0ba72e', 'jerry', '登录', '登录成功！', '0', '2018-11-02 10:29:11');
INSERT INTO `saas_user_log` VALUES ('abcd79ab-de50-11e8-b52d-a3213b3b4669', 'jerry', '登录', '登录成功！', '0', '2018-11-02 11:37:49');
INSERT INTO `saas_user_log` VALUES ('9f51d5ec-de5f-11e8-b52d-e74e4c937f77', 'jerry', '登录', '登录成功！', '0', '2018-11-02 13:24:51');
INSERT INTO `saas_user_log` VALUES ('c5f4e34d-de5f-11e8-b52d-cf344570d0c6', 'jerry', '登录', '登录成功！', '0', '2018-11-02 13:25:55');
INSERT INTO `saas_user_log` VALUES ('f0acc35e-de64-11e8-b52d-7702668b79cb', 'jerry', '登录', '登录成功！', '0', '2018-11-02 14:02:55');
INSERT INTO `saas_user_log` VALUES ('5ad4207f-de88-11e8-b52d-c35ca6c511ce', 'jerry', '登录', '登录成功！', '0', '2018-11-02 18:16:25');
INSERT INTO `saas_user_log` VALUES ('059efdc0-de91-11e8-b52d-91edd08d43a7', 'jerry', '登录', '登录成功！', '0', '2018-11-02 19:18:28');
INSERT INTO `saas_user_log` VALUES ('d96bcb11-df09-11e8-b52d-9d9c16d06fd5', 'jerry', '登录', '登录成功！', '0', '2018-11-03 09:43:23');
INSERT INTO `saas_user_log` VALUES ('84c75e52-df0c-11e8-b52d-89b747195637', 'jerry', '登录', '登录成功！', '0', '2018-11-03 10:02:29');
INSERT INTO `saas_user_log` VALUES ('993cf2a3-df0c-11e8-b52d-1fb1e1d99f73', 'jerry', '登录', '登录成功！', '0', '2018-11-03 10:03:03');
INSERT INTO `saas_user_log` VALUES ('2e78eb14-df0f-11e8-b52d-a7feac587116', 'jerry', '登录', '登录成功！', '0', '2018-11-03 10:21:33');
INSERT INTO `saas_user_log` VALUES ('3427ff15-df0f-11e8-b52d-911d81cd6e1d', 'jerry', '登录', '登录成功！', '0', '2018-11-03 10:21:42');
INSERT INTO `saas_user_log` VALUES ('ba10ab16-df12-11e8-b52d-6d16fa9eb388', 'jerry', '登录', '登录成功！', '0', '2018-11-03 10:46:55');
INSERT INTO `saas_user_log` VALUES ('eaa080b7-df13-11e8-b52d-f3f503df4d35', 'jerry', '登录', '登录成功！', '0', '2018-11-03 10:55:26');
INSERT INTO `saas_user_log` VALUES ('1cf8d6c8-df14-11e8-b52d-896a630dfd74', 'jerry', '登录', '登录成功！', '0', '2018-11-03 10:56:51');
INSERT INTO `saas_user_log` VALUES ('92b622a9-df14-11e8-b52d-31de92f2fa59', 'jerry', '登录', '登录成功！', '0', '2018-11-03 11:00:08');
INSERT INTO `saas_user_log` VALUES ('5501798a-df39-11e8-b52d-d759dd7b5667', 'jerry', '登录', '登录成功！', '0', '2018-11-03 15:23:16');
INSERT INTO `saas_user_log` VALUES ('ecaf202b-df39-11e8-b52d-5fb413214ee8', 'jerry', '登录', '登录成功！', '0', '2018-11-03 15:27:31');
INSERT INTO `saas_user_log` VALUES ('ad1db5ac-df3b-11e8-b52d-71246f395e38', 'jerry', '登录', '登录成功！', '0', '2018-11-03 15:40:03');
INSERT INTO `saas_user_log` VALUES ('7a8be39d-df3c-11e8-b52d-01f3ca0081c0', 'jerry', '登录', '登录成功！', '0', '2018-11-03 15:45:48');
INSERT INTO `saas_user_log` VALUES ('a8a2c5ce-df44-11e8-b52d-8361b3858a73', 'jerry', '登录', '登录成功！', '0', '2018-11-03 16:44:21');
INSERT INTO `saas_user_log` VALUES ('e0e78f0f-e099-11e8-b52d-8364cd7658a6', 'jerry', '登录', '登录成功！', '0', '2018-11-05 09:26:54');
INSERT INTO `saas_user_log` VALUES ('8d70b7c0-e09a-11e8-b52d-eba3b924ee51', 'jerry', '登录', '登录成功！', '0', '2018-11-05 09:31:43');
INSERT INTO `saas_user_log` VALUES ('9a7d7a21-e09a-11e8-b52d-73cde1c250f6', 'jerry', '登录', '登录成功！', '0', '2018-11-05 09:32:05');
INSERT INTO `saas_user_log` VALUES ('cf758f12-e09f-11e8-b52d-592b523da60b', 'jerry', '登录', '登录成功！', '0', '2018-11-05 10:09:21');
INSERT INTO `saas_user_log` VALUES ('ef215233-e0b9-11e8-b52d-ddcf679beec7', 'jerry', '登录', '登录成功！', '0', '2018-11-05 13:16:22');
INSERT INTO `saas_user_log` VALUES ('73560ca4-e0bd-11e8-b52d-1fc7db89319b', 'jerry', '登录', '登录成功！', '0', '2018-11-05 13:41:32');
INSERT INTO `saas_user_log` VALUES ('e14e6665-e0c9-11e8-b52d-e796082dfd58', 'jerry', '登录', '登录成功！', '0', '2018-11-05 15:10:30');
INSERT INTO `saas_user_log` VALUES ('60237746-e0cb-11e8-b52d-21a5cd6d0b8a', 'jerry', '登录', '登录成功！', '0', '2018-11-05 15:21:13');
INSERT INTO `saas_user_log` VALUES ('a5f78667-e0cd-11e8-b52d-4d8c65ea3f4d', 'jerry', '登录', '登录成功！', '0', '2018-11-05 15:37:29');
INSERT INTO `saas_user_log` VALUES ('72284af8-e0d1-11e8-b52d-114948192c86', 'jerry', '登录', '登录成功！', '0', '2018-11-05 16:04:40');
INSERT INTO `saas_user_log` VALUES ('e94d3d29-e0d1-11e8-b52d-bdea365078e5', 'jerry', '登录', '登录成功！', '0', '2018-11-05 16:08:00');
INSERT INTO `saas_user_log` VALUES ('80a5e5fa-e0d2-11e8-b52d-1f548d90237f', 'jerry', '登录', '登录成功！', '0', '2018-11-05 16:12:14');
INSERT INTO `saas_user_log` VALUES ('91636b9b-e0e3-11e8-b52d-a5b32689879d', 'jerry', '登录', '登录成功！', '0', '2018-11-05 18:14:23');
INSERT INTO `saas_user_log` VALUES ('99096d9c-e0e3-11e8-b52d-4dbf9bef4587', 'jerry', '登录', '登录成功！', '0', '2018-11-05 18:14:36');
INSERT INTO `saas_user_log` VALUES ('aa7d5aad-e0e3-11e8-b52d-93518f8a91d1', 'jerry', '登录', '登录成功！', '0', '2018-11-05 18:15:05');
INSERT INTO `saas_user_log` VALUES ('325f178e-e0e7-11e8-b52d-a5d1a83fa8f0', 'jerry', '登录', '登录成功！', '0', '2018-11-05 18:40:22');
INSERT INTO `saas_user_log` VALUES ('c5f9ea0f-e160-11e8-b52d-d97642935c8f', 'jerry', '登录', '登录成功！', '0', '2018-11-06 09:10:38');
INSERT INTO `saas_user_log` VALUES ('e9a206f0-e160-11e8-b52d-118632ec8664', 'jerry', '登录', '登录成功！', '0', '2018-11-06 09:11:38');
INSERT INTO `saas_user_log` VALUES ('396d2211-e165-11e8-b52d-893bb577b554', 'jerry', '登录', '登录成功！', '0', '2018-11-06 09:42:30');
INSERT INTO `saas_user_log` VALUES ('4814f602-e195-11e8-b52d-317d3867c967', 'jerry', '登录', '登录成功！', '0', '2018-11-06 15:26:31');
INSERT INTO `saas_user_log` VALUES ('1e304c21-e22c-11e8-a525-31a1658c5430', 'jerry', '登录', '登录成功！', '0', '2018-11-07 09:26:14');
INSERT INTO `saas_user_log` VALUES ('3e0b2172-e239-11e8-a525-9f2a3c741b2a', 'jerry', '登录', '登录成功！', '0', '2018-11-07 11:00:11');
INSERT INTO `saas_user_log` VALUES ('46eed393-e239-11e8-a525-891e4bf0a1c3', 'jerry', '登录', '登录成功！', '0', '2018-11-07 11:00:26');
INSERT INTO `saas_user_log` VALUES ('e35b13b4-e239-11e8-a525-0d646c92c5d1', 'xiaoyan', '登录', '登录成功！', '0', '2018-11-07 11:04:49');
INSERT INTO `saas_user_log` VALUES ('0f195985-e23a-11e8-a525-bf5c6775039e', 'jerry', '登录', '登录成功！', '0', '2018-11-07 11:06:02');
INSERT INTO `saas_user_log` VALUES ('9e36d49a-e24e-11e8-9e4b-5bf55910ba8c', 'jerry', '登录', '登录成功！', '0', '2018-11-07 13:33:12');
INSERT INTO `saas_user_log` VALUES ('b77ee31b-e24f-11e8-9e4b-1b04da25bb82', 'jerry', '登录', '登录成功！', '0', '2018-11-07 13:41:04');
INSERT INTO `saas_user_log` VALUES ('5b190adc-e257-11e8-9e4b-eb1168921877', 'jerry', '登录', '登录成功！', '0', '2018-11-07 14:35:45');
INSERT INTO `saas_user_log` VALUES ('4b219bed-e268-11e8-9e4b-9be650e87738', 'jerry', '登录', '登录成功！', '0', '2018-11-07 16:36:59');
INSERT INTO `saas_user_log` VALUES ('c0d864de-e278-11e8-9e4b-b5e65763735c', 'jerry', '登录', '登录成功！', '0', '2018-11-07 18:34:49');
INSERT INTO `saas_user_log` VALUES ('59b7430f-e27a-11e8-9e4b-711208e29a45', 'jerry', '登录', '登录成功！', '0', '2018-11-07 18:46:15');
INSERT INTO `saas_user_log` VALUES ('a5bb47d0-e2f1-11e8-9e4b-d7207fcecb04', 'jerry', '登录', '登录成功！', '0', '2018-11-08 09:00:12');
INSERT INTO `saas_user_log` VALUES ('35b04ed1-e2f2-11e8-9e4b-8143c2f7a08e', 'jerry', '登录', '登录成功！', '0', '2018-11-08 09:04:14');
INSERT INTO `saas_user_log` VALUES ('61a26a29-e2fc-11e8-8b7c-f147cde619f0', 'jerry', '登录', '登录成功！', '0', '2018-11-08 10:17:03');
INSERT INTO `saas_user_log` VALUES ('e4fb71fa-e2fc-11e8-8b7c-09682a0a37f2', 'jerry', '登录', '登录成功！', '0', '2018-11-08 10:20:43');
INSERT INTO `saas_user_log` VALUES ('b7017ceb-e310-11e8-8b7c-798b7063975e', 'string', '登录', '用户不存在', '0', '2018-11-08 12:42:36');
INSERT INTO `saas_user_log` VALUES ('d5408f7c-e310-11e8-8b7c-05260f313607', 'jerry', '登录', '登录成功！', '0', '2018-11-08 12:43:27');
INSERT INTO `saas_user_log` VALUES ('1c900e7d-e328-11e8-8b7c-9bb06d5ff4f0', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:30:05');
INSERT INTO `saas_user_log` VALUES ('596fb48e-e328-11e8-8b7c-f9359c0bd5b0', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:31:47');
INSERT INTO `saas_user_log` VALUES ('1b33482f-e329-11e8-8b7c-4755f45c3948', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:37:12');
INSERT INTO `saas_user_log` VALUES ('3496ea70-e329-11e8-8b7c-1bed7d0e9643', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:37:55');
INSERT INTO `saas_user_log` VALUES ('41c00e71-e329-11e8-8b7c-a94a1d439238', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:38:17');
INSERT INTO `saas_user_log` VALUES ('0a355902-e32a-11e8-8b7c-ebcb4fb3acbc', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:43:53');
INSERT INTO `saas_user_log` VALUES ('b3e08f13-e32a-11e8-8b7c-271a16f8375b', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:48:38');
INSERT INTO `saas_user_log` VALUES ('b410c6d4-e32a-11e8-8b7c-a9be3f3e202a', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:48:38');
INSERT INTO `saas_user_log` VALUES ('da703b85-e32a-11e8-8b7c-1b23c5d6af52', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:49:42');
INSERT INTO `saas_user_log` VALUES ('e4ce3196-e32a-11e8-8b7c-3f5aa7d4426b', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:50:00');
INSERT INTO `saas_user_log` VALUES ('00f0ccc7-e32b-11e8-8b7c-6338e4394236', 'jerry', '登录', '登录成功！', '0', '2018-11-08 15:50:47');
INSERT INTO `saas_user_log` VALUES ('85611eb8-e330-11e8-8b7c-5d37fc011de2', 'jerry', '登录', '登录成功！', '0', '2018-11-08 16:30:17');
INSERT INTO `saas_user_log` VALUES ('24c02719-e333-11e8-8b7c-e5f467547693', 'jerry', '登录', '登录成功！', '0', '2018-11-08 16:49:03');
INSERT INTO `saas_user_log` VALUES ('ab606aaa-e333-11e8-8b7c-a7d0701b5d27', 'jerry', '登录', '登录成功！', '0', '2018-11-08 16:52:49');
INSERT INTO `saas_user_log` VALUES ('03c47aab-e335-11e8-8b7c-3f73c49326d6', 'jerry', '登录', '登录成功！', '0', '2018-11-08 17:02:27');
INSERT INTO `saas_user_log` VALUES ('920d313c-e335-11e8-8b7c-3d3f94ebf888', 'jerry', '登录', '登录成功！', '0', '2018-11-08 17:06:26');
INSERT INTO `saas_user_log` VALUES ('c7b3c7ed-e335-11e8-8b7c-4d729b0a0c51', 'jerry', '登录', '登录成功！', '0', '2018-11-08 17:07:56');
INSERT INTO `saas_user_log` VALUES ('d591043e-e336-11e8-8b7c-1380bfa1e234', 'jerry', '登录', '登录成功！', '0', '2018-11-08 17:15:28');
INSERT INTO `saas_user_log` VALUES ('f43f568f-e33a-11e8-8b7c-c56a733c0159', 'jerry', '登录', '登录成功！', '0', '2018-11-08 17:44:58');
INSERT INTO `saas_user_log` VALUES ('446b60f0-e340-11e8-8b7c-3bc14d3d0f12', 'jerry', '登录', '登录成功！', '0', '2018-11-08 18:23:00');
INSERT INTO `saas_user_log` VALUES ('518346e1-e340-11e8-8b7c-61d8f93f82c3', 'jerry', '登录', '登录成功！', '0', '2018-11-08 18:23:22');
INSERT INTO `saas_user_log` VALUES ('d2549cf2-e341-11e8-8b7c-c56e8b91f5ba', 'jerry', '登录', '登录成功！', '0', '2018-11-08 18:34:07');
INSERT INTO `saas_user_log` VALUES ('4f48fc63-e342-11e8-8b7c-c595c0b14a2f', 'jerry', '登录', '登录成功！', '0', '2018-11-08 18:37:37');
INSERT INTO `saas_user_log` VALUES ('ba666c94-e355-11e8-8b7c-efe78f1a1bb8', 'jerry', '登录', '登录成功！', '0', '2018-11-08 20:56:37');
INSERT INTO `saas_user_log` VALUES ('0af8ff55-e3bb-11e8-8b7c-3fd6dae24272', 'jerry', '登录', '登录成功！', '0', '2018-11-09 09:01:51');
INSERT INTO `saas_user_log` VALUES ('2b3a06f6-e3bc-11e8-8b7c-add4d9fe53e5', 'jerry', '登录', '登录成功！', '0', '2018-11-09 09:09:55');
INSERT INTO `saas_user_log` VALUES ('33bbd817-e3be-11e8-8b7c-37121ffa8c13', 'jerry', '登录', '登录成功！', '0', '2018-11-09 09:24:28');
INSERT INTO `saas_user_log` VALUES ('82aa9268-e3c1-11e8-8b7c-b70444d5d461', 'jerry', '登录', '登录成功！', '0', '2018-11-09 09:48:09');
INSERT INTO `saas_user_log` VALUES ('444e16b9-e3c9-11e8-8b7c-19a9baa5c5df', 'jerry', '登录', '登录成功！', '0', '2018-11-09 10:43:41');
INSERT INTO `saas_user_log` VALUES ('a0c652ca-e3f3-11e8-8b7c-59d666ac97c7', 'jerry', '登录', '登录成功！', '0', '2018-11-09 15:46:54');
INSERT INTO `saas_user_log` VALUES ('607fc4eb-e3fc-11e8-8b7c-411b8cfd9214', 'jerry', '登录', '登录成功！', '0', '2018-11-09 16:49:32');
INSERT INTO `saas_user_log` VALUES ('0f3bd51c-e4ab-11e8-8b7c-e769fab952a1', 'jerry', '登录', '登录成功！', '0', '2018-11-10 13:39:58');
INSERT INTO `saas_user_log` VALUES ('9e0c323d-e4ab-11e8-8b7c-f56e76628733', 'jerry', '登录', '登录成功！', '0', '2018-11-10 13:43:57');
INSERT INTO `saas_user_log` VALUES ('bcf0bd2e-e617-11e8-8b7c-fd8667e672ed', 'jerry', '登录', '登录成功！', '0', '2018-11-12 09:10:26');
INSERT INTO `saas_user_log` VALUES ('ec4b834f-e61a-11e8-8b7c-a3a177095efb', 'jerry', '登录', '登录成功！', '0', '2018-11-12 09:33:14');
INSERT INTO `saas_user_log` VALUES ('b6e87060-e63d-11e8-8b7c-77aa3fae96b3', 'jerry', '登录', '登录成功！', '0', '2018-11-12 13:42:17');
INSERT INTO `saas_user_log` VALUES ('e9568cd1-e647-11e8-8b7c-e31d1e969d92', 'jerry', '登录', '登录成功！', '0', '2018-11-12 14:55:16');
INSERT INTO `saas_user_log` VALUES ('3ff31ca2-e6e0-11e8-8b7c-e9d4e4463a18', 'jerry', '登录', '登录成功！', '0', '2018-11-13 09:05:45');
INSERT INTO `saas_user_log` VALUES ('8230f793-e6e0-11e8-8b7c-0f3c1a72fe45', 'jerry', '登录', '登录成功！', '0', '2018-11-13 09:07:36');
