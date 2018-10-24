/*
Navicat MySQL Data Transfer

Source Server         : 10.0.1.40
Source Server Version : 50718
Source Host           : 10.0.1.40:3306
Source Database       : pv3.0

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-10-22 19:40:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_account_log
-- ----------------------------
DROP TABLE IF EXISTS `auth_account_log`;
CREATE TABLE `auth_account_log` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `LOG_NAME` varchar(32) DEFAULT NULL COMMENT '操作名称',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `SUCCEED` int(11) DEFAULT NULL COMMENT '是否成功(0失败1成功)',
  `MESSAGE` varchar(32) DEFAULT NULL COMMENT '具体消息',
  `IP` varchar(32) DEFAULT NULL COMMENT '登录ip',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户访问记录日志';

-- ----------------------------
-- Records of auth_account_log
-- ----------------------------
INSERT INTO `auth_account_log` VALUES ('111', '登录', '111', '1', '上海市徐汇区', '192.168.0.28', '0', 'wenhao.wang', null, 'wenhao.wang', null);

-- ----------------------------
-- Table structure for auth_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `auth_operation_log`;
CREATE TABLE `auth_operation_log` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `LOG_NAME` varchar(32) DEFAULT NULL COMMENT '日志名称',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户id',
  `API` varchar(32) DEFAULT NULL COMMENT 'api名称',
  `METHOD` varchar(32) DEFAULT NULL COMMENT '方法名称',
  `SUCCEED` int(11) DEFAULT NULL COMMENT '是否成功(0失败1成功)',
  `MESSAGE` varchar(32) DEFAULT NULL COMMENT '具体消息备注',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作日志';

-- ----------------------------
-- Records of auth_operation_log
-- ----------------------------

-- ----------------------------
-- Table structure for common_field
-- ----------------------------
DROP TABLE IF EXISTS `common_field`;
CREATE TABLE `common_field` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
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
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `drug_type` tinyint(1) DEFAULT '1' COMMENT '上市前1上市后2',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `drug_generic_en_name` varchar(100) DEFAULT NULL COMMENT '通用英文名称',
  `drug_generic_zh_name` varchar(100) DEFAULT NULL COMMENT '通用中文名称',
  `drug_generic_standard_name` varchar(100) DEFAULT NULL COMMENT '标准通用名称',
  `drug_active_ingredients` varchar(500) DEFAULT NULL COMMENT '活性成份',
  `drug_class` int(4) DEFAULT '0' COMMENT '药品分类',
  `drug_manufacturer` varchar(150) DEFAULT NULL COMMENT '生产厂家',
  `drug_formulation` int(4) DEFAULT '0' COMMENT '剂型',
  `drug_delivery_way` varchar(20) DEFAULT NULL COMMENT '给药途径(字典值，多选中间以逗号隔开)',
  `drug_approval_number` varchar(50) DEFAULT NULL COMMENT '批准文号',
  `drug_product_en_name` varchar(100) DEFAULT NULL COMMENT '商品英文名称',
  `drug_product_zh_name` varchar(100) DEFAULT NULL COMMENT '商品中文名称',
  `drug_input_output` tinyint(1) DEFAULT '1' COMMENT '是否为进口1是2否',
  `drug_specification` varchar(50) DEFAULT NULL COMMENT '规格',
  `drug_dosage` varchar(500) DEFAULT '' COMMENT '用法用量',
  `drug_indications` varchar(500) DEFAULT '' COMMENT '适应症',
  `drug_reg_approval_date` datetime DEFAULT NULL COMMENT '注册批准日',
  `drug_first_sale_date` datetime DEFAULT NULL COMMENT '首次销售时间',
  `drug_replacement_date` datetime DEFAULT NULL COMMENT '换证日期',
  `drug_treatment_person` varchar(100) DEFAULT NULL COMMENT '治疗人群',
  `drug_pinyin` varchar(100) DEFAULT NULL COMMENT '汉语拼音',
  `drug_chemical_name` varchar(100) DEFAULT NULL COMMENT '化学名',
  `drug_molecular_formula` varchar(1000) DEFAULT NULL COMMENT '化学式',
  `drug_molecular_weight` varchar(1000) DEFAULT NULL COMMENT '分子量',
  `drug_trait` varchar(50) DEFAULT NULL COMMENT '性状',
  `drug_approval_end_date` datetime DEFAULT NULL COMMENT '批准文号到期日',
  `drug_country` varchar(5) DEFAULT NULL COMMENT '国家',
  `drug_production_batch` varchar(50) DEFAULT NULL COMMENT '生产批号',
  `drug_production_num` int(11) unsigned DEFAULT '0' COMMENT '生产量',
  `drug_sales_num` int(11) unsigned DEFAULT '0' COMMENT '销售量',
  `drug_sales_zone` varchar(50) DEFAULT NULL COMMENT '销售地',
  `drug_recall_num` int(11) unsigned DEFAULT '0' COMMENT '召回数量',
  `drug_real_recall_num` int(11) unsigned DEFAULT '0' COMMENT '实际召回数量',
  `drug_adverse_reactions` varchar(500) DEFAULT '' COMMENT '不良反应',
  `drug_base_country` tinyint(1) DEFAULT '0' COMMENT '国家基本药品1是2否',
  `drug_medical_insurance` tinyint(1) DEFAULT '0' COMMENT '国家医疗保险药品1是2否',
  `drug_non_prescription` tinyint(1) DEFAULT '0' COMMENT '国家非处方药1是2否',
  `drug_protection_varieties` tinyint(1) DEFAULT '0' COMMENT '中药保护品种1是2否',
  `drug_reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `drug_international_birth` datetime DEFAULT NULL COMMENT '国际诞生日',
  `drug_first_reg_date` datetime DEFAULT NULL COMMENT '国内首次注册日期',
  `drug_testing_deadline` datetime DEFAULT NULL COMMENT '新药检测期截止时间',
  `drug_first_again_reg_date` datetime DEFAULT NULL COMMENT '首次再注册时间',
  `delete_status` tinyint(1) DEFAULT '1' COMMENT '1正常2删除',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES ('0245015f3b914676bb510a2b5ba36ade', '2', '62', 'ssss3', '三生三世3', '三生三世3', 'ssss', '2', 'ssss', '1', '1', '1111111', 'ssss3', '三生三世3', '0', '222', '', '', null, null, null, 'sss', null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:00:13', null, null);
INSERT INTO `drug` VALUES ('089d041749cf4e7a9b4157699eee2873', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 15:48:48', null, null);
INSERT INTO `drug` VALUES ('0927a48ed93c44698893981a6938cc57', '2', '62', null, '与兔兔', '瞧瞧', '搜刮剁手郭德纲', '1', '汉口汉口', '141', null, 'uoiou1222', null, '稍微', '0', '20', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, 'jerry', '2018-09-18 10:32:00', 'jerry', '2018-09-19 11:39:01');
INSERT INTO `drug` VALUES ('0962c90a9b7e45168d1705937c30dc6b', '1', '62', '1', 'test', '1', '1', '1', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 18:38:07', null, '2018-09-14 14:22:35');
INSERT INTO `drug` VALUES ('11111111', '1', '62', 'toubao', '头孢', 'DHCUN', 'C', '1', '212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, null, '2018-08-14 09:55:27', null, '2018-09-05 13:34:47');
INSERT INTO `drug` VALUES ('11111112', '2', '62', 'sgsgsg', '121212', '212', '21212121', '1', '2121', '1', '1', '21212', '', '212', '1', '212121', '', '', '2018-08-16 10:06:16', '2018-08-16 10:06:21', '2018-08-16 10:06:24', '', '', '', '', '', '', '2018-08-16 10:06:31', 'cn', '', '0', '0', '', '0', '0', '', '1', '1', '2', '1', '2018-08-16 10:06:08', '2018-08-16 10:05:55', '2018-08-16 10:06:03', '2018-08-16 10:06:05', '2018-08-16 10:06:08', '2', null, '', '2018-08-14 09:55:27', 'jerry', '2018-09-12 18:32:31');
INSERT INTO `drug` VALUES ('142e92c590554ddfb5bd7e1981ec78ee', '1', '62', '21', '21', '121212', '21ssssssssssssssssssssssssssssssssssssssssss', '1', '212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:42:57', null, '2018-09-06 18:28:44');
INSERT INTO `drug` VALUES ('162b53dd854e4a07a825daa548d1fb28', '2', '62', null, '撒大声地', '爽肤水', '是范德萨发的', '2', '似懂非懂', '90', null, '水电费', null, '是否', '0', '20ml', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '2', '2', '1', null, null, null, null, null, '1', null, 'jerry', '2018-09-17 15:56:59', 'jerry', '2018-10-15 15:54:15');
INSERT INTO `drug` VALUES ('1712db89a69043da902ee4212607947f', '1', '62', '31212', '21212', '2121', '2121', '1', '21212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-08-14 19:39:36', null, null);
INSERT INTO `drug` VALUES ('18a84dcb02684f89a3b92352b9ce3d85', '1', '62', '1', '122222', '1', '1', '1', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 18:33:03', null, '2018-09-14 15:48:56');
INSERT INTO `drug` VALUES ('1b0c8ddd78d94962a4e8b87fceafda95', '1', '62', '21', '212', 'test测试', '212', '1', '212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 18:33:24', null, null);
INSERT INTO `drug` VALUES ('1c409154151247009402e05a4e6cb63c', '1', '62', '2121', '2121', '1212', '1212121', '1', '2121', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-08-15 10:15:37', null, null);
INSERT INTO `drug` VALUES ('1c8ad0facc2347e093ffde8201bb03f5', '2', '62', null, '212', '212', '21212', '2', '21', '1', null, '212', null, '21', '0', '212', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:30:43', null, null);
INSERT INTO `drug` VALUES ('22a646cad37e46d689a5fc1356ae0c9f', '2', '62', null, '1', '1', '1', '3', '1', '90', null, '1', null, '1', '0', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', '2018-09-26 09:47:37', '2018-09-24 00:00:00', '2018-09-26 09:47:33', '2018-10-23 00:00:00', '2018-09-26 09:47:37', '1', null, 'jerry', '2018-09-26 09:48:15', null, null);
INSERT INTO `drug` VALUES ('2423fc89c1374d0eae77b30959818783', '1', '62', '444', '33', '555', '电风扇', '4', '666', '90', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-14 15:49:57', null, '2018-09-17 10:10:40');
INSERT INTO `drug` VALUES ('252134082f52420ca732dcc9436df36b', '2', '62', null, '1', '1', '1', '2', '1', '1', null, '1', null, '21', '0', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:09:55', null, null);
INSERT INTO `drug` VALUES ('31fd99c1e1354b088abe629195d36c89', '1', '62', 'sfsd', '声带固定术', '所发生的', '沙发斯蒂芬', '2', '爽肤水', '90', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-17 10:28:56', null, '2018-09-17 11:35:59');
INSERT INTO `drug` VALUES ('345a8b5ccf164f8caaad564f2b9f520c', '2', '62', null, '1', '1', '帝国饭店', '4', '1', '88', null, '1', null, '1', '0', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, '2018-09-21 00:00:00', null, '2018-09-18 00:00:00', null, '1', null, 'jerry', '2018-09-21 17:34:15', null, null);
INSERT INTO `drug` VALUES ('37315281879a4024b7063f57b02f00ea', '2', '62', null, 'bnm', 'bnm', 'bnm', '4', 'bnm', '93', null, 'mbn', null, 'bnm', '0', 'bnm', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, 'jerry', '2018-09-19 11:42:56', null, null);
INSERT INTO `drug` VALUES ('3c52555aab8a44189e4a7df298073290', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 14:50:17', null, null);
INSERT INTO `drug` VALUES ('3cc5315f27b641d2a872864ed8099561', '1', '62', 'Yansuan Tebinaifen Penwuji', '盐酸特比萘芬喷雾剂', '达克宁', '盐酸特比萘芬0.01克。辅料为：乙醇、1.2-丙二醇、纯化水', '1', '山东京卫制药有限公司', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 17:00:50', null, '2018-09-12 17:26:27');
INSERT INTO `drug` VALUES ('43ada102786d4af5a53ea19a7a94eb68', '1', '62', '1', '1', '1', '1', '2', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:42:08', null, null);
INSERT INTO `drug` VALUES ('4602ff73d5904005a364903d59832d96', '1', '62', '1', '1', '1', '111', '4', '1', '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-14 15:48:34', null, null);
INSERT INTO `drug` VALUES ('4fbf8dd0a4d94919ae10922d455bd1e6', '2', '62', null, '21', '21', '21', '1', '21', '90', null, '21', null, '21', '0', '21', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, 'jerry', '2018-09-20 11:47:32', null, null);
INSERT INTO `drug` VALUES ('53d856949fc84185a2095b44374ba8b4', '1', '62', '1', '12', '21', '1', '212', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:48:24', null, '2018-09-07 09:57:28');
INSERT INTO `drug` VALUES ('557454bc4d3f49a4a0d324e12b915346', '2', '62', 'ssss2', '三生三世2', '三生三世2', 'ssssss', '2', '三生三世2', '1', '1', '11111', 'ssss2', '三生三世2', '1', '22', '', '', null, null, null, 'sss', 'ssss2', 'ssss2', 'ssss2', 'ssss2', null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 08:51:26', null, null);
INSERT INTO `drug` VALUES ('6dda92f8109c4abf821905f365a241c0', '1', '62', 'testName', '测试名称', '212', '212', '212', '21', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 18:06:10', null, null);
INSERT INTO `drug` VALUES ('6f1f77c89e134ca3ac9f497ea77eb3fa', '1', '62', '121', '2121', '212', '121', '1', '21212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-08-14 19:12:31', null, null);
INSERT INTO `drug` VALUES ('745e6f7c53b44b9b8f547a4672135df3', '2', '62', null, '1', '吴谦', '1', '2', '1', '1', null, '吴谦', null, '万千瓦', '0', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:43:31', null, null);
INSERT INTO `drug` VALUES ('9093c99ede71428dbdcb06a7cdfc5ae7', '2', '62', null, '所发生的', '爽肤水', '发送方都是', '3', '是否', '152', null, '是非得失', null, '施工方', '0', '20', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'jerry', '2018-09-17 15:36:23', null, null);
INSERT INTO `drug` VALUES ('91813ecdd7c447f9964ce527828fe2a1', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 14:56:50', null, null);
INSERT INTO `drug` VALUES ('921572cd34674cf2928b01d73faf2f07', '1', '62', '1', '1', '1', '1', '2', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 13:42:26', null, null);
INSERT INTO `drug` VALUES ('a07f1422e2e54935932aa39b5c16152f', '1', '62', '2', '2', '2', '2', '212', '2', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:54:24', null, null);
INSERT INTO `drug` VALUES ('a6da4bdaf11e4e30868c6ba1294e7b08', '1', '62', '1', '1', '1', '1', '2', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:31:22', null, null);
INSERT INTO `drug` VALUES ('a851e727f5fe41ea8e5869be2a369d64', '1', '62', '212', '2121', '212', '测试', '1', '2121', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 18:06:44', null, '2018-09-12 18:15:02');
INSERT INTO `drug` VALUES ('a992af307d2b4c66ac9c84a63dcd6a1d', '2', '62', 'xcv', 'xcv', 'xcv', 'xcv', '4', 'xcv', '141', null, 'x', 'xc', 'cv', '0', 'xcv', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', '2018-09-28 00:00:00', '2018-09-13 00:00:00', '2018-09-25 00:00:00', '2018-09-27 00:00:00', '2018-09-28 00:00:00', '1', null, '33', '2018-09-19 14:00:52', null, null);
INSERT INTO `drug` VALUES ('aa5fe4f9823d43b5898d04734df5636e', '1', '62', 'fsdfs', '爽肤水', '爽肤水', '师傅师傅说', '3', '所发生的', '152', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'ybb', '2018-09-17 10:25:44', null, null);
INSERT INTO `drug` VALUES ('af97fc31defd4279b6ae3aea1980d66f', '1', '62', '爽肤水', '是非得失', '是非得失', '麦克雷全文', '3', '让他一人一人', '93', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'ybb', '2018-09-17 16:29:22', null, null);
INSERT INTO `drug` VALUES ('b10dd39f7a784a01ba7947637b90b694', '2', '62', 'ssss', '三生三世', '三生三世', 'sssss', '2', 'ssss', '1', null, 'sssss', 'ssss', '三生三世', '0', 'ssss', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:55:34', null, null);
INSERT INTO `drug` VALUES ('b603a0b21bc54e69851c989b62c483d4', '1', '62', '21', '212', '2121', '21', '212', '212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:50:35', null, null);
INSERT INTO `drug` VALUES ('c6ba965ecd70400da81fcb226168396a', '2', '62', 'Chongcao Qingfei Jiaonang', '虫草清肺胶囊', '虫草清肺胶囊', '沙棘膏、冬虫夏草、南五味子、百部、白及、百合、枇杷叶、甘草、牡蛎、蛤蚧，辅料为：玉米淀粉。', '3', '青海普兰特药业有限公司', '46', '49', '国药准字Z20025121', null, '同济堂 虫草清肺胶囊', '1', '每粒装0.3克', '', '', null, null, null, null, 'Chongcao Qingfei Jiaonang', null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'jerry', '2018-09-14 17:06:10', null, null);
INSERT INTO `drug` VALUES ('c935f58607d943fcb468a3c42b0f25a7', '1', '62', '3333', '222', '5555', '5554', '3', '5', '90', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-14 15:49:24', null, null);
INSERT INTO `drug` VALUES ('d48b5957091a48b79b1733d294622c1e', '1', '62', '1', '1', '1', '1', '2', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 15:00:04', null, null);
INSERT INTO `drug` VALUES ('d853721c1d00486ba8c0e2afe7317cee', '1', '62', '这只狐狸并不怕人，相反，它似乎能听懂人们的话语。“过来过来……”发现人们没有恶意时，小狐狸还能与人互动，应声上前来', '这只狐狸并不怕人，相反，它似乎能听懂人们的话语。“过来过来……”发现人们没有恶意时，小狐狸还能与人互动，应声上前来', '这只狐狸并不怕人，相反，它似乎能听懂人们的话语。“过来过来……”发现人们没有恶意时，小狐狸还能与人互动，应声上前来', '这只狐狸并非全身纯白，其又尖又长的大耳朵与毛茸茸的尾巴上，还夹杂生长着灰黑的毛发，这只狐狸见到人时，不躲不避，围观它的人都称赞它可爱这只狐狸并非全身纯白，其又尖又长的大耳朵与毛茸茸的尾巴上，还夹杂生长着灰黑的毛发，这只狐狸见到人时，不躲不避，围观它的人都称赞它可爱', '1', '武汉大学小白狐驻扎校园', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:46:32', null, '2018-09-06 10:57:03');
INSERT INTO `drug` VALUES ('dc078b35d07b45458c8b10ac3a3ef838', '1', '62', null, '21', '1', '1', '0', null, '90', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '2', null, 'ybb', '2018-09-18 10:33:42', null, '2018-09-18 17:17:13');
INSERT INTO `drug` VALUES ('de9a0bd61563410a89790b269722d3da', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 15:23:47', null, null);
INSERT INTO `drug` VALUES ('e11c8cceb1714516a6c828a898b2eadf', '2', '62', 'Putaotangsuangaixin Koufurongye', '葡萄糖酸钙锌口服溶液', '葡萄糖酸钙锌口服溶液 1', '每10毫升含葡萄糖酸钙600毫克（相当于钙54毫克），葡萄糖酸锌30毫克（相当于锌4.3毫克），盐酸赖氨酸100毫克。辅料为：乳酸、苯甲酸钠、阿斯巴甜、安赛蜜、香精和纯化水', '3', '澳诺(中国)制药有限公司', '35', '55', '国药准字H20013241', 'Calcium and Zinc Gluconates Oral Solution', '锌钙特 葡萄糖酸钙锌口服溶液', '1', '每支装15ml', '', '', null, null, null, '口服。婴幼儿一日5～10毫升，成人一日20～30毫升，分2～3次，饭后服。', 'Putaotangsuangaixin Koufurongye', '葡萄糖酸钙锌化学名', null, null, null, null, '1', null, '0', '0', null, '0', '0', '1.可见轻度恶心、呕吐、便秘等反应。2.长期服用可引起反跳性胃酸分泌增高。', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'jerry', '2018-09-14 16:44:40', null, null);
INSERT INTO `drug` VALUES ('e2c6bae733474b9e8619e09759b3ecb0', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-13 13:59:47', null, null);
INSERT INTO `drug` VALUES ('e55f151b484649eeac82d27338eec32c', '1', '62', '21', '21', '212', '212', '2', '2121', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 15:00:59', null, null);
INSERT INTO `drug` VALUES ('e9b7e9f7dec647119335d3c1811ed77c', '1', '62', '1', '1', '1', '1', '1', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 18:37:43', null, null);
INSERT INTO `drug` VALUES ('ececa988d54246d3802c90e3a04ecc45', '2', '62', null, '地方', '税收', '神鼎飞丹砂', '2', '大锅饭', '152', null, '税收', null, '客家话', '0', '22', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '2', '0', '0', '0', null, null, null, null, null, '1', null, 'jerry', '2018-09-17 16:03:34', 'jerry', '2018-09-17 17:08:10');
INSERT INTO `drug` VALUES ('f349133b1dd942b2b80ff57f33e3171e', '1', '62', '1', '1', '1', '1', '1', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 18:45:23', null, '2018-09-12 18:22:37');
INSERT INTO `drug` VALUES ('f652bfa80bdd4d4db2d45e178b9a4a11', '2', '62', null, '1', '1', '1', '3', '1', '90', null, '1', null, '1', '1', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '2', '1', '1', null, null, null, null, null, '2', null, '33', '2018-09-17 16:09:10', '33', '2018-09-17 16:09:20');
INSERT INTO `drug` VALUES ('f851cd0a56694d62befab4cdf04cbc1e', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-13 10:53:06', null, null);
INSERT INTO `drug` VALUES ('ff863a7eb123494494350ca42fda6b5f', '1', '62', 'wq', 'wqw', 'wqw', 'wq', '2', 'wqw', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:52:15', null, null);

-- ----------------------------
-- Table structure for drug_adverse_reactions
-- ----------------------------
DROP TABLE IF EXISTS `drug_adverse_reactions`;
CREATE TABLE `drug_adverse_reactions` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `drug_id` char(32) DEFAULT NULL COMMENT '药品ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `adverse_name` varchar(100) DEFAULT NULL COMMENT '不良反应名称',
  `adverse_soc_name` varchar(50) DEFAULT NULL COMMENT '系统器官分类名称(SOC)',
  `adverse_soc_code` int(11) DEFAULT NULL COMMENT 'SOC编码',
  `adverse_hlgt_name` varchar(50) DEFAULT NULL COMMENT '高位组语名称(HLGT)',
  `adverse_hlgt_code` int(11) DEFAULT NULL COMMENT 'HLGT编码',
  `adverse_hlt_name` varchar(20) DEFAULT NULL COMMENT '高水平术语名称(HLT)',
  `adverse_hlt_code` int(11) DEFAULT NULL COMMENT 'HLT编码',
  `adverse_pt_name` varchar(20) DEFAULT NULL COMMENT '首选术语术语名称(PT)',
  `adverse_pt_code` int(11) DEFAULT NULL COMMENT 'PT编码',
  `adverse_llt_name` varchar(20) DEFAULT NULL COMMENT '低水平术语名称(LLT)',
  `adverse_llt_code` int(11) DEFAULT NULL COMMENT 'LLT编码',
  `adverse_incidence` float(5,2) DEFAULT '0.00' COMMENT '发生率',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `delete_status` tinyint(1) DEFAULT '1' COMMENT '1正常2删除',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品不良反应表';

-- ----------------------------
-- Records of drug_adverse_reactions
-- ----------------------------
INSERT INTO `drug_adverse_reactions` VALUES ('04b15ec84ab5418db3a1d011b7544a17', null, '62', '11', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, 'ybb', '2018-08-20 11:46:55', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('0a4e2681d58e4cfe80a32e648c4c29c2', null, '62', '12', null, null, null, null, null, null, '21', '1', null, null, '1.00', '1', '1', null, 'ybb', '2018-09-05 14:51:52', 'ybb', '2018-09-06 09:12:32');
INSERT INTO `drug_adverse_reactions` VALUES ('0bad43fca8244349b4429c44f3d8aea0', null, '62', '1212', null, null, null, null, null, null, '212', '121', null, null, '1.00', null, '2', null, 'ybb', '2018-08-20 11:12:35', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('0dc683116bf741f8a4e613d4bc9026a1', '0962c90a9b7e45168d1705937c30dc6b', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-13 09:48:12', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('0e24eaf506514f2d8826b0e025f63c60', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, 'ybb', '2018-08-20 11:47:07', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('104e7492b1ea47ae8da1d3e7f9565f71', '11111112', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-06 17:25:42', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('11111', '11111112', '62', '咳嗽', null, null, null, null, null, null, '咳嗽', '111111', null, null, '11.00', null, '2', null, 'ybb', '2018-08-17 17:06:16', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('133adf2592c7434a9a93524c8495ffdc', null, '62', '121', null, null, null, null, null, null, '21', '11', null, null, '1.00', null, '2', null, 'ybb', '2018-08-20 11:15:36', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('13616d60f0bd4633a652502b7a26b097', '0962c90a9b7e45168d1705937c30dc6b', '62', '2', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-06 18:38:17', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('142703de5d5049fd90a009a869132a96', '11111112', '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-11 11:48:49', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('1aed7d82c37f4c508fbd15359b20f129', null, '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 16:51:44', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('1b0db11854244112892bb3a0488f1932', '11111112', '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-11 11:48:57', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('1bee627ff5a849e1b6ef5ac25fc2574c', 'f349133b1dd942b2b80ff57f33e3171e', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 18:54:56', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('1c9758635a334004aaef12ba752cf2c4', '0962c90a9b7e45168d1705937c30dc6b', '62', '1', null, null, null, null, null, null, '1', '11', null, null, '1.00', '1', '1', null, null, '2018-09-13 18:55:28', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('1f747556326a460daf9c748fb34fb9eb', null, '62', '恶心', null, null, null, null, null, null, '恶心', '5121121', null, null, '22.00', null, '2', null, 'ybb', '2018-08-20 10:29:40', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('261b2fdbc9b7411ca0edcfbb0c61e8e8', 'af97fc31defd4279b6ae3aea1980d66f', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', null, '1', null, null, '2018-09-21 15:08:01', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('26ba63090e014b729613398f2c1c6399', '0962c90a9b7e45168d1705937c30dc6b', '62', '飒飒是', null, null, null, null, null, null, '888', '888', null, null, '8.00', '888', '2', null, null, '2018-09-07 10:13:47', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('2767449b3d294c1aad5e6cee1a54432a', '0962c90a9b7e45168d1705937c30dc6b', '62', '你是第几个', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-10 13:39:13', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('298b8e8fb0744480a9f4e2db2a13311b', '0962c90a9b7e45168d1705937c30dc6b', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-07 10:11:50', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('29d02c16393e49cfbcccdecee8170505', null, '62', '1212', null, null, null, null, null, null, '11', '1', null, null, '1.00', null, '2', null, 'ybb', '2018-08-20 11:46:44', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('2d733861523d46839355c49df9c0ceaa', 'af97fc31defd4279b6ae3aea1980d66f', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', null, '1', null, null, '2018-09-21 15:06:44', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('2eae7a68559441e993ea4791ec5dacd1', '11111112', '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-11 11:48:57', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('2fc6d27a73ec4d559a70ff277ce5fefc', null, '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 09:31:29', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('327270556342404e98f13150877bab6f', null, '62', '121', null, null, null, null, null, null, '21', '11', null, null, '3.00', null, '2', null, 'ybb', '2018-08-20 11:44:12', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('3498704a74cd4f4785775ae752a9f1b9', '252134082f52420ca732dcc9436df36b', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-06 17:33:12', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('3520ef915ec546e99dc4a30bbc3efa92', null, '62', '1212', null, null, null, null, null, null, '323', '11', null, null, '1.00', '12121', '2', null, 'ybb', '2018-08-20 10:32:37', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('37a74a9f29454f4e8be44ebb2c80a6ab', null, '62', '面试第一个', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 17:50:43', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('386745cfc030434b8a3656b2315fd981', '252134082f52420ca732dcc9436df36b', '62', '第三个', null, null, null, null, null, null, '10', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 17:48:01', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('38856c45c1c14a369f81ca2dd596e57a', null, '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 15:19:25', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('3c438d924d5f43c8819afed0cd511bdc', null, '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 16:52:19', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('3ef1f486580b4b699c5a912d0435fc8e', null, '62', '111', null, null, null, null, null, null, '11', '1', null, null, '1.00', null, '2', null, 'ybb', '2018-08-20 11:46:50', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('3fcedebc2de34a2bbd98da5c5d26331c', 'a07f1422e2e54935932aa39b5c16152f', '62', '上市前第二个', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 18:03:11', 'jerry', '2018-09-06 18:03:22');
INSERT INTO `drug_adverse_reactions` VALUES ('4381329524394375bba01019be39f2bf', null, '62', '21212', null, null, null, null, null, null, '221', '111', null, null, '2.00', null, '2', null, 'ybb', '2018-08-20 10:28:33', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('43cc51e09e154c649e817f5f4ed4db76', '1c8ad0facc2347e093ffde8201bb03f5', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-12 18:30:35', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('45b428d197d84833b9ec1df4fed8a314', '53d856949fc84185a2095b44374ba8b4', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-07 10:12:15', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('47eefe8126944bd4b2b6ca887eb566af', '11111112', '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-11 11:48:56', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('484431989a404fd28935060a32773db9', null, '62', '333', null, null, null, null, null, null, '333', '333', null, null, '33.00', '333', '1', null, null, '2018-09-07 09:59:54', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('48f2ecb1e9674bb3887000be1deba253', '0962c90a9b7e45168d1705937c30dc6b', '62', '第一个', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-07 10:12:45', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('4a39d537a9fe44f8adb527d5c96542d2', null, '62', '555', null, null, null, null, null, null, '555', '555', null, null, '5.00', '555', '1', null, null, '2018-09-07 10:09:12', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('51aaba261f694a2981d5dfc4c8719574', '11111112', '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-11 11:48:56', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('521d73d8550c416ab993bae31ec6320b', null, '62', '121', null, null, null, null, null, null, '21', '11', null, null, '3.00', null, '2', null, 'ybb', '2018-08-20 11:43:59', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('558ffe6ddc334a068d5f1a6f6f055b16', '0245015f3b914676bb510a2b5ba36ade', '62', '第二个', null, null, null, null, null, null, '1', '1', null, null, '1.00', null, '1', null, null, '2018-09-06 17:47:24', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('5658e8404f2144d5a882a38a3386c087', null, '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, 'ybb', '2018-09-04 13:44:53', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('59c22e44087448ebb1c9ed575b977a80', 'b603a0b21bc54e69851c989b62c483d4', '62', '第三个', null, null, null, null, null, null, '21', '2', null, null, '1.00', '1', '1', null, null, '2018-09-06 20:08:21', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('5a5f131839c645b9b274f3d603b7ad53', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, 'ybb', '2018-08-20 11:47:01', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('5aa20e4eef5e4d469b4c60a3013cf9df', '11111112', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-06 17:25:07', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('5c2f705657384cb6b060b9538b014820', 'a851e727f5fe41ea8e5869be2a369d64', '62', '2', null, null, null, null, null, null, '212', '21', null, null, '1.00', '1', '2', null, null, '2018-09-13 15:05:12', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('664ad5a17428414da0832255ddbd0d2e', '0962c90a9b7e45168d1705937c30dc6b', '62', '讲话', null, null, null, null, null, null, '1121', '11', null, null, '1.00', '1', '2', null, null, '2018-09-10 09:16:02', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('69d7ec1ba3fe4eff84f78eb7910ff978', 'aa5fe4f9823d43b5898d04734df5636e', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '11.00', '1', '1', null, null, '2018-09-21 14:38:16', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('6b692e6956294edab5356db3a6477ebb', 'ff863a7eb123494494350ca42fda6b5f', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-07 10:13:14', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('6b98088e1c4e43f1a9dcb5c87c204eb7', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 17:20:42', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('6ba527b4928e49ef850c01666856aaf4', null, '62', '323', null, null, null, null, null, null, '32323', '2323', null, null, '1.00', null, '2', null, 'ybb', '2018-08-20 10:27:55', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('6e382387961b460fb02caf24f1a8d2fa', null, '62', '飒飒是', null, null, null, null, null, null, '4444', '4444', null, null, '4.00', '4444', '1', null, null, '2018-09-07 09:59:29', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('725500ed08644918b65643c115076b56', null, '62', '添加212', null, null, null, null, null, null, '11212122121', '1', null, null, '1.00', '12121', '2', null, 'ybb', '2018-08-20 11:02:40', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('734a19ed52734c20af9a22acffbcb986', '142e92c590554ddfb5bd7e1981ec78ee', '62', '上市前第一个', null, null, null, null, null, null, '1', '1', null, null, '1.00', null, '1', null, null, '2018-09-06 17:49:07', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('83015d08479b46c6a71f8221fb78b888', null, '62', '2121', null, null, null, null, null, null, '1212', '12121', null, null, '1.00', null, '2', null, 'ybb', '2018-08-20 10:25:07', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('844598500c4c4393872a83902e49f7ac', null, '62', '21212', null, null, null, null, null, null, '2121', '21212', null, null, '1.00', '1', '2', null, 'ybb', '2018-08-21 10:08:34', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('8848ed1dfba64f03932ad25b3c94c120', null, '62', '添加', null, null, null, null, null, null, '1121212', '1', null, null, '1.00', '12121', '2', null, 'ybb', '2018-08-20 11:02:21', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('96855f235779458cba78c2650ce27df0', null, '62', '121', null, null, null, null, null, null, '21', '11', null, null, '5.00', '32323232', '2', null, 'ybb', '2018-08-20 11:32:35', 'ybb', '2018-08-20 11:44:46');
INSERT INTO `drug_adverse_reactions` VALUES ('97e7ee9fa1b4429998233d2974e89f36', 'aa5fe4f9823d43b5898d04734df5636e', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-18 17:58:45', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('9bfe383ad81248e39669699049721329', '11111112', '62', '第一个', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-06 17:47:36', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('9dde21cd249d4eecbd3661b29579d3ab', null, '62', '12121', null, null, null, null, null, null, '2121', '211', null, null, '11.00', '1', '2', null, 'ybb', '2018-08-22 15:34:45', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('9fb2c655c4664ba0a768a31dd103ca18', 'a07f1422e2e54935932aa39b5c16152f', '62', '第二个', null, null, null, null, null, null, '1', '121', null, null, '1.00', '1', '2', null, null, '2018-09-06 18:02:17', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('9fe316ea949d4da78a6f6c9b3e4da3af', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 16:51:56', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('a2263b4aa2f7469b8f5c6dcb95b7fc6c', null, '62', '12', null, null, null, null, null, null, '21', '1', null, null, '1.00', '1', '1', null, 'ybb', '2018-09-06 09:10:18', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('a454aaf776b749fb9c11cedac2b28408', null, '62', '21212', null, null, null, null, null, null, '2121', '121', null, null, '1.00', '1', '2', null, 'ybb', '2018-08-20 10:31:45', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('a7b8a30537694656aa9448bf68226bc2', null, '62', '添加', null, null, null, null, null, null, '11212122121', '1', null, null, '1.00', '12121', '2', null, 'ybb', '2018-08-20 11:02:36', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('aa82ab1d2f0a4997b89fe8e31888125b', '3cc5315f27b641d2a872864ed8099561', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '11.00', '1', '2', null, null, '2018-09-12 17:24:59', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('b4074939a16342fcaed3eaeb0ef375a3', '11111112', '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-11 11:48:53', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('bc7f4d8aa81d4a35843062e1bfdb38a7', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '2', '1', null, 'ybb', '2018-08-20 11:47:19', 'ybb', '2018-08-22 13:53:12');
INSERT INTO `drug_adverse_reactions` VALUES ('be13011ffa3d4b67b99b5a698a83abbd', '252134082f52420ca732dcc9436df36b', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-06 17:33:36', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('c017be5952d0454298bea865ab4bec96', null, '62', '头疼', null, null, null, null, null, null, 'TEST', '1065888', null, null, '2.00', '1', '1', null, 'ybb', '2018-09-05 09:10:38', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('d25a59026a5a406ea556420d08feb976', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 17:21:09', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('dbfd664f0ec941a7a6e4ce4bafdd3d10', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 16:51:31', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('dc223a48c3e54f85a1be511e59f25ab5', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, 'ybb', '2018-08-20 11:47:12', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('de7b78ca201e4ed9b76a7575f51e66e3', null, '62', '211', null, null, null, null, null, null, '11', '11', null, null, '111.00', '11', '2', null, 'ybb', '2018-08-21 17:58:45', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('dede3aa4a0974553876fee782a8d7610', null, '62', '我去我去', null, null, null, null, null, null, '2121', '2121', null, null, '21.00', '2121213', '2', null, 'ybb', '2018-08-20 10:30:32', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('e591e7d233c64dca95e2a089ff56ca00', '53d856949fc84185a2095b44374ba8b4', '62', '第二个', null, null, null, null, null, null, '10', '10', null, null, '1.00', '1', '1', null, null, '2018-09-06 20:08:02', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('ea52d5006b01439492dbfefcd7f69fe7', '11111112', '62', '21', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '2', null, null, '2018-09-11 11:48:47', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('f15379427ef54ad5b0ac75ea9f86b086', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 17:21:41', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('f3a4443493fa4747910ce3e05f6fc7e8', 'dc078b35d07b45458c8b10ac3a3ef838', '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-18 19:19:34', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('f51dfbc7b46a4691a205ef1dade34b75', null, '62', '1', null, null, null, null, null, null, '1', '1', null, null, '1.00', '1', '1', null, null, '2018-09-06 17:21:00', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('fbacdefcad5748148aa4c22378a35a92', null, '62', '212', null, null, null, null, null, null, '1', '1', null, null, '1.00', null, '2', null, 'ybb', '2018-08-20 11:13:58', null, null);
INSERT INTO `drug_adverse_reactions` VALUES ('ff5bdc3611b948ffa216866df8f4bf86', null, '62', '不良反应', null, null, null, null, null, null, '19', '1', null, null, '1.00', '1', '1', null, 'ybb', '2018-09-05 09:09:37', null, null);

-- ----------------------------
-- Table structure for drug_attachment
-- ----------------------------
DROP TABLE IF EXISTS `drug_attachment`;
CREATE TABLE `drug_attachment` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `drug_id` char(32) DEFAULT NULL COMMENT '药品id',
  `company_id` char(32) DEFAULT NULL COMMENT '公司id',
  `attach_key` varchar(500) DEFAULT NULL COMMENT '附件key',
  `delete_status` tinyint(1) DEFAULT NULL COMMENT '是否删除:1是,2否',
  `attach_name` varchar(50) DEFAULT NULL COMMENT '附件名',
  `attach_size` varchar(50) DEFAULT NULL COMMENT '附件大小',
  `attach_type` varchar(10) DEFAULT NULL COMMENT '附件类型(pdf, doc, docx, xls, xlsx, txt, bmp, gif, jpg, jpeg, png, mp3)',
  `attach_class` int(4) DEFAULT NULL COMMENT '附件分类',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药物附件表';

-- ----------------------------
-- Records of drug_attachment
-- ----------------------------
INSERT INTO `drug_attachment` VALUES ('008c02cfb9b844849557950abbc6bc92', '4fbf8dd0a4d94919ae10922d455bd1e6', '62', '反馈数据导入模板1537415176325.xlsx', '1', '反馈数据导入模板', '0.01MB', 'xlsx', '7', '吴谦', null, 'ybb', '2018-09-20 11:47:00', null, null);
INSERT INTO `drug_attachment` VALUES ('0231ffe173154068892b8e918e74087c', 'c6ba965ecd70400da81fcb226168396a', '62', '药品不良反应报告表15288619976791537154808728.pdf', '1', '药品不良反应报告表1528861997679', '100992', 'pdf', '4', '21121', null, 'ybb', '2018-09-17 11:27:23', null, null);
INSERT INTO `drug_attachment` VALUES ('057c7b874a3847f782bab059e1be75cf', 'dc078b35d07b45458c8b10ac3a3ef838', '62', '5311537237997118.docx', '1', '531', '13703', 'docx', '7', '1', null, '33', '2018-09-18 10:33:51', null, null);
INSERT INTO `drug_attachment` VALUES ('06134a62c5fe4ce8b09b26826a4b2745', null, '62', 'CIOMS报告表15284196337161536125620540.pdf', '2', 'CIOMS报告表1528419633716', '54714', 'pdf', '1', '1', null, 'ybb', '2018-09-05 13:39:03', null, null);
INSERT INTO `drug_attachment` VALUES ('0b568416fcdd4f84b7be45d93229eb81', 'ae17ea8d641042998f3b9924cf1c20ed', '62', '反馈数据导入模板1537415039256.xlsx', '1', '反馈数据导入模板', '0.01MB', 'xlsx', '2', '21', null, 'jerry', '2018-09-20 11:44:42', null, null);
INSERT INTO `drug_attachment` VALUES ('0ba481eeadf24cc5a240352d54d5286d', 'dc078b35d07b45458c8b10ac3a3ef838', '62', '5311537414904508.docx', '1', '531', '0.01MB', 'docx', '7', '21', null, 'jerry', '2018-09-20 11:42:27', null, null);
INSERT INTO `drug_attachment` VALUES ('0d74c896f27a4e7da9c1bc1c262d5f82', '9093c99ede71428dbdcb06a7cdfc5ae7', '62', '泰山与珍妮-DJ舞曲-2390481537169535286.mp3', '1', '泰山与珍妮-DJ舞曲-239048', '2950082', 'mp3', '2', null, null, 'ybb', '2018-09-17 15:32:18', null, null);
INSERT INTO `drug_attachment` VALUES ('10c4037428ff4423b50444e119219c25', 'cbcfd601acd649f0ad3d7bef717893b7', '62', '用例设计知识记载1537497811570.doc', '2', '用例设计知识记载', '0.33MB', 'doc', '2', null, null, 'ybb', '2018-09-21 10:43:32', null, null);
INSERT INTO `drug_attachment` VALUES ('111', '11111111', null, '222222', '1', '只能', '0.2M', 'xls', '1', '上市前', null, null, '2018-08-14 15:53:13', null, null);
INSERT INTO `drug_attachment` VALUES ('112', '11111112', '', '222222', '1', '哈哈', '0.2M', 'xls', '1', '上市后', null, '', '2018-08-14 15:53:13', '', '2018-08-16 10:05:43');
INSERT INTO `drug_attachment` VALUES ('132a425b324d429f80facfb5edf99234', '65808b61a7b4472bbc11fa7467ca2cce', '62', '反馈1534473043420.xlsx', '2', '反馈', '12459', 'xlsx', null, '12121', null, 'ybb', '2018-08-17 10:34:23', null, null);
INSERT INTO `drug_attachment` VALUES ('13cd76ab3d6442589198896642db370b', '11111112', '62', '反馈1534755112098.xlsx', '1', '反馈', '12459', 'xlsx', '1', '2121212', null, 'ybb', '2018-08-20 16:55:36', null, null);
INSERT INTO `drug_attachment` VALUES ('149d438e888c4d23882ed589ba67c58e', 'aa5fe4f9823d43b5898d04734df5636e', '62', '5311537179921669.docx', '1', '531', '13703', 'docx', '2', '1212', null, '33', '2018-09-17 18:26:00', null, null);
INSERT INTO `drug_attachment` VALUES ('18d31464b89e43729e2cc0a0e65ace29', '11111111', '62', '反馈数据导入模板1534297365208.xlsx', '1', '反馈数据导入模板', '14990', 'xlsx', '1', '21212', null, 'ybb', '2018-08-15 09:46:09', null, null);
INSERT INTO `drug_attachment` VALUES ('1afd913570f140b187138874c939be2c', 'c6ba965ecd70400da81fcb226168396a', '62', '5311537154796584.docx', '1', '531', '13703', 'docx', '7', '21', null, 'ybb', '2018-09-17 11:27:08', null, null);
INSERT INTO `drug_attachment` VALUES ('1bdbe5970b6846639517af572804ed1e', '9d33c06739df4f889cd7e8419a925b84', '62', 'logo1539152710464.png', '2', 'logo', '0.01MB', 'png', '7', '测试', null, 'ybb', '2018-10-10 14:25:35', null, null);
INSERT INTO `drug_attachment` VALUES ('1fdeb3aa08d944059c0a43f67c1501a2', 'aa5fe4f9823d43b5898d04734df5636e', '62', '反馈数据导入模板1537151133641.xlsx', '1', '反馈数据导入模板', '11591', 'xlsx', '4', '水电费是否是', null, 'jerry', '2018-09-17 10:25:39', null, null);
INSERT INTO `drug_attachment` VALUES ('22c07b900f6549c8a0cef32e6bb2d25c', 'a851e727f5fe41ea8e5869be2a369d64', '62', '53115362357330221536829005955.docx', '1', '5311536235733022', '13703', 'docx', '2', '212', null, 'jerry', '2018-09-13 16:57:04', null, null);
INSERT INTO `drug_attachment` VALUES ('23738d0139624d5e92a25a645e705a73', '36db31deb7cf458b81860df43546db22', '62', 'excel导出1536807225951.xlsx', '2', 'excel导出', '6656', 'xlsx', '1', '212', null, '33', '2018-09-13 10:54:18', null, null);
INSERT INTO `drug_attachment` VALUES ('2564b91732f7450d993d6ba6ee16a977', '0962c90a9b7e45168d1705937c30dc6b', '62', '5311536747605810.docx', '1', '531', '13703', 'docx', '1', '321212', null, 'jerry', '2018-09-12 18:20:20', null, null);
INSERT INTO `drug_attachment` VALUES ('25f0ccd93075400b92418f99d98fe6fa', 'f81556312b324e78b25e693ab64175dc', '62', 'logo1539759096476.png', '2', 'logo', '0.01MB', 'png', null, null, null, 'jerry', '2018-10-17 14:52:02', null, null);
INSERT INTO `drug_attachment` VALUES ('27c9e30fb14f4e7e847d2b9acd2fabfd', 'c6ba965ecd70400da81fcb226168396a', '62', '5311537150949163.docx', '1', '531', '13703', 'docx', '2', '21', null, 'ybb', '2018-09-17 10:23:11', null, null);
INSERT INTO `drug_attachment` VALUES ('29994cefa93243448a55b53fedf8c16f', 'ececa988d54246d3802c90e3a04ecc45', '62', '5311537355098542.docx', '2', '531', '0.01MB', 'docx', '2', '121', null, 'ybb', '2018-09-19 19:05:39', null, null);
INSERT INTO `drug_attachment` VALUES ('2b509f9e5e3841409f0a2a16872a3c01', 'aada8dc02d974453bca6805b2b263496', '62', '反馈数据导入模板15367423365951536746338635.xlsx', '2', '反馈数据导入模板1536742336595', '11591', 'xlsx', null, null, null, 'jerry', '2018-09-12 17:58:57', null, null);
INSERT INTO `drug_attachment` VALUES ('3069e038f4844b54aca66747da8cbc38', '11111112', '62', '药品不良反应报告表15284297626441536127314257.pdf', '1', '药品不良反应报告表1528429762644', '94116', 'pdf', '1', '12', null, 'ybb', '2018-09-05 14:05:37', null, null);
INSERT INTO `drug_attachment` VALUES ('3076c7cb52574449a0605c7e778a8508', '11111111', '62', '反馈1534297126166.xlsx', '1', '反馈', '12459', 'xlsx', '1', '23121212', null, 'ybb', '2018-08-15 09:42:11', null, null);
INSERT INTO `drug_attachment` VALUES ('331d3ca780a14810a56441705c7c5baa', '36db31deb7cf458b81860df43546db22', '62', 'excel导出1536807225951.xlsx', '1', 'excel导出', '6656', 'xlsx', null, '212', null, '33', '2018-09-13 10:54:02', null, null);
INSERT INTO `drug_attachment` VALUES ('333c6b26dcf34c378ffbe8273f56a622', 'c6ba965ecd70400da81fcb226168396a', '62', '5311537154922286.docx', '1', '531', '13703', 'docx', '7', '212', null, 'ybb', '2018-09-17 11:29:13', null, null);
INSERT INTO `drug_attachment` VALUES ('33a63ceb9a634885bd3cea866f831c2f', '4fbf8dd0a4d94919ae10922d455bd1e6', '62', '反馈数据导入模板1537496198504.xlsx', '2', '反馈数据导入模板', '0.01MB', 'xlsx', '2', '21', null, 'ybb', '2018-09-21 10:17:25', null, null);
INSERT INTO `drug_attachment` VALUES ('3460a874d06a484c8f277df52a347c21', '162b53dd854e4a07a825daa548d1fb28', '62', '泰山与珍妮-DJ舞曲-2390481537171220108.mp3', '1', '泰山与珍妮-DJ舞曲-239048', '2950082', 'mp3', '6', null, null, 'ybb', '2018-09-17 16:00:25', null, null);
INSERT INTO `drug_attachment` VALUES ('358f1516aecc416cb8653075ab242b67', '11111111', '62', '反馈数据导入模板1534297047194.xlsx', '1', '反馈数据导入模板', '14990', 'xlsx', '1', '21212', null, 'ybb', '2018-08-15 09:40:54', null, null);
INSERT INTO `drug_attachment` VALUES ('369d15e43b684b77a4f6b52e2cdea9d3', '11111111', '62', '5311536111490860.docx', '2', '531', '13703', 'docx', '1', '212', null, 'ybb', '2018-09-05 09:41:53', null, null);
INSERT INTO `drug_attachment` VALUES ('37ec26fce5344ebdb157b73ea3e6f12f', '547dad37a671480bb9d287e628bf6d33', '62', '5311537266930880.docx', '1', '531', '13703', 'docx', '7', '去', null, '33', '2018-09-18 18:36:08', null, null);
INSERT INTO `drug_attachment` VALUES ('3c74db122e434d46ad0ab967746d043e', '11111112', '62', '5321536127299209.undefined', '1', '532', '14990', null, '1', '1', null, 'ybb', '2018-09-05 14:05:22', null, null);
INSERT INTO `drug_attachment` VALUES ('3ce69dd844084923a260d7bda51d1742', '162b53dd854e4a07a825daa548d1fb28', '62', '5311537237141464.docx', '1', '531', '13703', 'docx', '7', '121', null, 'ybb', '2018-09-18 10:19:36', null, null);
INSERT INTO `drug_attachment` VALUES ('3dc7cb1e44e74f4f82285a3e0554399d', '0927a48ed93c44698893981a6938cc57', '62', '5311537338684116.docx', '1', '531', '0.013MB', 'docx', '2', '1', null, 'ybb', '2018-09-19 14:32:03', null, null);
INSERT INTO `drug_attachment` VALUES ('3fd028cbdaaf4704b7e9f685422a03b4', '4c5d2dc49972448289d013b4d914a62b', '62', '职级考核试题二期-18年6月份-有答案1537421310911.docx', '2', '职级考核试题二期-18年6月份-有答案', '0.27MB', 'docx', '2', null, null, 'jerry', '2018-09-20 13:28:31', null, null);
INSERT INTO `drug_attachment` VALUES ('43c194a08be44e24a0771b936b043ece', '11111111', '62', 'SAE1536111910234.doc', '2', 'SAE', '67584', 'doc', '1', '12', null, 'ybb', '2018-09-05 09:48:52', null, null);
INSERT INTO `drug_attachment` VALUES ('458333a9ea194795a04ed9eb57096e60', '11111112', '62', '反馈数据导入模板1534756263422.xlsx', '1', '反馈数据导入模板', '14990', 'xlsx', '1', '21212', null, 'ybb', '2018-08-20 17:14:47', null, null);
INSERT INTO `drug_attachment` VALUES ('463aa4b734c345f6b21cdf989de38b27', '645f62ef81e44192922f4238de08aacb', '62', '反馈1534410156552.xlsx', '2', '反馈', '12459', 'xlsx', '1', '2112121', null, 'ybb', '2018-08-16 17:06:06', null, null);
INSERT INTO `drug_attachment` VALUES ('47a2b06e63a941a780dbeddaffe7d3a3', '3cc5315f27b641d2a872864ed8099561', '62', '反馈数据导入模板1536742845373.xlsx', '1', '反馈数据导入模板', '11591', 'xlsx', '1', '发发发', null, 'jerry', '2018-09-12 17:00:47', null, null);
INSERT INTO `drug_attachment` VALUES ('47e165ce1c2a4dbeb82303ca7775e20a', '921572cd34674cf2928b01d73faf2f07', '62', '5311536125920235.docx', '2', '531', '13703', 'docx', '1', '1', null, 'ybb', '2018-09-05 13:42:23', null, null);
INSERT INTO `drug_attachment` VALUES ('4ad34ed1596f4ed5a0fd3f07e8694edb', '0927a48ed93c44698893981a6938cc57', '62', '5311537338590465.docx', '1', '531', '0.013068199157714844M', 'docx', '7', '21', null, 'ybb', '2018-09-19 14:30:30', null, null);
INSERT INTO `drug_attachment` VALUES ('598976a71d964131a5c15ff049580e70', '80e39e0fa7ec459b855821ce2546fa08', '62', '5311537414922641.docx', '1', '531', '0.01MB', 'docx', '2', '21', null, 'jerry', '2018-09-20 11:42:45', null, null);
INSERT INTO `drug_attachment` VALUES ('59930db13bf84739b0bdac6086dbad57', '61e65c30cfee4e7fa21066541d9c73dc', '62', 'logo1539741159146.png', '2', 'logo', '0.01MB', 'png', '7', 'ceshi ', null, 'jerry', '2018-10-17 09:53:17', null, null);
INSERT INTO `drug_attachment` VALUES ('5c08beecaa4e4d40a315c276c93fe727', 'e11c8cceb1714516a6c828a898b2eadf', '62', '反馈数据导入模板1536914602342.xlsx', '1', '反馈数据导入模板', '11591', 'xlsx', '6', '所发生的', null, 'ybb', '2018-09-14 16:44:38', null, null);
INSERT INTO `drug_attachment` VALUES ('5f111997b54c4c1a85a8bc0532d7b56a', '73c9da7d792e494893d2024f944ee616', '62', '5311537238081299.docx', '1', '531', '13703', 'docx', '7', '1', null, 'jerry', '2018-09-18 10:35:16', null, null);
INSERT INTO `drug_attachment` VALUES ('5fb653a9407d4e3589bb4ad4dfeb593b', 'a6da4bdaf11e4e30868c6ba1294e7b08', '62', 'CIOMS报告表15279336153321536197491567.pdf', '1', 'CIOMS报告表1527933615332', '55031', 'pdf', '1', null, null, 'ybb', '2018-09-06 09:31:20', null, null);
INSERT INTO `drug_attachment` VALUES ('61500b7140e04307a45d2a06233fc1ef', '11111111', '62', '5311536111972019.docx', '2', '531', '13703', 'docx', '1', '21', null, 'ybb', '2018-09-05 09:49:54', null, null);
INSERT INTO `drug_attachment` VALUES ('61b897f49b85445ca158bda3c3e7a99f', '3093e7ae04a24847b22885d8b7ad8dd1', '62', '反馈1537415076698.xlsx', '1', '反馈', '0.01MB', 'xlsx', '7', '21', null, 'ybb', '2018-09-20 11:45:19', null, null);
INSERT INTO `drug_attachment` VALUES ('63552f2247b3484a959fe00687d05678', 'dc078b35d07b45458c8b10ac3a3ef838', '62', '5311537238033897.docx', '1', '531', '13703', 'docx', '2', '21', null, '33', '2018-09-18 10:34:28', null, null);
INSERT INTO `drug_attachment` VALUES ('642f4e8185a44b6eac330998020540fd', '4fbf8dd0a4d94919ae10922d455bd1e6', '62', '反馈数据导入模板1537415176325.xlsx', '1', '反馈数据导入模板', '0.01MB', 'xlsx', '2', '21', null, 'ybb', '2018-09-20 11:47:11', null, null);
INSERT INTO `drug_attachment` VALUES ('65c7ad2362c84e709f616c95f4162a68', 'f81556312b324e78b25e693ab64175dc', '62', 'logo1539759096476.png', '2', 'logo', '0.01MB', 'png', null, null, null, 'jerry', '2018-10-17 14:52:21', null, null);
INSERT INTO `drug_attachment` VALUES ('660ef27ecf904464ba81ae00965fd90a', 'aa5fe4f9823d43b5898d04734df5636e', '62', '5311537180042405.docx', '1', '531', '13703', 'docx', '7', '212', null, '33', '2018-09-17 18:27:55', null, null);
INSERT INTO `drug_attachment` VALUES ('6d1fadc13bf048f5889b63589b483637', '1d9d57e51981417cbb39e4875f44c0a3', '62', '5311536807252311.docx', '1', '531', '13703', 'docx', '1', '212', null, 'jerry', '2018-09-13 10:54:28', null, null);
INSERT INTO `drug_attachment` VALUES ('6d67750440624e64ab65cfb48bede675', 'dbe0862892794c02b345f7395f392cc5', '62', '反馈数据导入模板1537237451804.xlsx', '1', '反馈数据导入模板', '11591', 'xlsx', null, null, null, 'jerry', '2018-09-18 10:24:13', null, null);
INSERT INTO `drug_attachment` VALUES ('6f17f03c72934c2da6c52b5f40ee23d8', 'af97fc31defd4279b6ae3aea1980d66f', '62', '泰山与珍妮-DJ舞曲-2390481537172932927.mp3', '1', '泰山与珍妮-DJ舞曲-239048', '2950082', 'mp3', '10', '爽肤水', null, 'jerry', '2018-09-17 16:29:16', null, null);
INSERT INTO `drug_attachment` VALUES ('74852b3d85f747c1aed08e80d643a608', '8f45d65fe8354ee1b4ca53c9a2bbcf29', '62', '下载 (1)1537237079599.jpg', '1', '下载 (1)', '35181', 'jpg', '4', '如期望若无', null, 'jerry', '2018-09-18 10:18:06', null, null);
INSERT INTO `drug_attachment` VALUES ('755be67c1d46460f832b3f6c1ecf69d5', '0927a48ed93c44698893981a6938cc57', '62', '5311537414857017.docx', '1', '531', '0.01MB', 'docx', '7', '12', null, 'ybb', '2018-09-20 11:41:39', null, null);
INSERT INTO `drug_attachment` VALUES ('7811133701404a4d8ab16bc1ef9b76d8', '0927a48ed93c44698893981a6938cc57', '62', '5311537338707558.docx', '1', '531', '0.01MB', 'docx', '2', '21', null, 'ybb', '2018-09-19 14:32:26', null, null);
INSERT INTO `drug_attachment` VALUES ('78fd9a0d6ee245ef87cc9ef9627d389a', 'b603a0b21bc54e69851c989b62c483d4', '62', '5311536151845631.docx', '1', '531', '13703', 'docx', '1', '212', null, 'ybb', '2018-09-05 20:50:33', null, null);
INSERT INTO `drug_attachment` VALUES ('79c406e0a16e4f20a8f4a843bc9ec8f6', 'c6ba965ecd70400da81fcb226168396a', '62', '反馈15331783985591537151022868.xlsx', '1', '反馈1533178398559', '12459', 'xlsx', '7', '21', null, 'ybb', '2018-09-17 10:24:16', null, null);
INSERT INTO `drug_attachment` VALUES ('7afc7e8bc00649649106d49e802742d1', null, '62', 'CIOMS报告表15284196337161536125620540.pdf', '2', 'CIOMS报告表1528419633716', '54714', 'pdf', '1', '1', null, 'ybb', '2018-09-05 13:37:23', null, null);
INSERT INTO `drug_attachment` VALUES ('7c6df7b2b7d44aef812a33919a2eb0a0', 'e4ec0f9a64cc4e3cbb3fa29ed7ab4520', '62', '反馈数据导入模板1537238003961.xlsx', '1', '反馈数据导入模板', '11591', 'xlsx', '5', null, null, 'ybb', '2018-09-18 10:33:26', null, null);
INSERT INTO `drug_attachment` VALUES ('7f8d3000e5cd448497276781613b93f3', '0927a48ed93c44698893981a6938cc57', '62', '5311537355264888.docx', '1', '531', '0.01MB', 'docx', '2', '212', null, 'ybb', '2018-09-19 19:08:24', null, null);
INSERT INTO `drug_attachment` VALUES ('809040fa636b48428f5607f9e50adfe7', 'aa5fe4f9823d43b5898d04734df5636e', '62', 'CIOMS报告表15279336153321537339545387.pdf', '2', 'CIOMS报告表1527933615332', '0.05MB', 'pdf', '2', '212', null, 'jerry', '2018-09-19 14:46:26', null, null);
INSERT INTO `drug_attachment` VALUES ('86d16709e3ab4aa0a55e539b26a53d72', '1f10d28ad6974dc78bd69017e1a58cd1', '62', '视频地址1537413770530.txt', '2', '视频地址', '0.00MB', 'txt', '2', null, null, 'ybb', '2018-09-20 11:22:52', null, null);
INSERT INTO `drug_attachment` VALUES ('8ccb967d2d83453bbdad020f0f9f4f28', '11111112', '62', '5311536818613826.docx', '1', '531', '13703', 'docx', '1', '21', null, 'ybb', '2018-09-13 14:03:51', null, null);
INSERT INTO `drug_attachment` VALUES ('93b3ad0d10924558a4216d7aa168f648', 'fc48f49ce08a4549a5e474c6cd2e9246', '62', '5311537238296753.docx', '1', '531', '13703', 'docx', '7', '1', null, 'jerry', '2018-09-18 10:38:51', null, null);
INSERT INTO `drug_attachment` VALUES ('9a32955279904d258aa5404ad34bcd6b', '11111112', '62', '5311536743969572.docx', '1', '531', '13703', 'docx', '1', '212', null, 'ybb', '2018-09-12 17:19:43', null, null);
INSERT INTO `drug_attachment` VALUES ('9b72139bad1644f19ba09c5f4a333006', '31fd99c1e1354b088abe629195d36c89', '62', '5311537154779027.docx', '1', '531', '13703', 'docx', '2', '21', null, 'jerry', '2018-09-17 11:26:51', null, null);
INSERT INTO `drug_attachment` VALUES ('9bdd5e3bd8fb4dc09247be49a836dfb7', 'aa5fe4f9823d43b5898d04734df5636e', '62', '5311537414838669.docx', '2', '531', '0.01MB', 'docx', '7', '21', null, 'jerry', '2018-09-20 11:41:21', null, null);
INSERT INTO `drug_attachment` VALUES ('9fe737a8df98413d8bc14e06daac90a8', 'aa5fe4f9823d43b5898d04734df5636e', '62', '5311537414645498.docx', '2', '531', '0.01MB', 'docx', '1', '212', null, '33', '2018-09-20 11:38:13', null, null);
INSERT INTO `drug_attachment` VALUES ('a8205b78ff5748869baf8e787ad28b2a', '997dc4f9f0914f688a04ea087bce500f', '62', '反馈数据导入模板15367423365951536911149050.xlsx', '1', '反馈数据导入模板1536742336595', '11591', 'xlsx', null, null, null, 'jerry', '2018-09-14 15:45:42', null, null);
INSERT INTO `drug_attachment` VALUES ('ac951e3bf61540e4bbffac0cdd9ee127', '9093c99ede71428dbdcb06a7cdfc5ae7', '62', '泰山与珍妮-DJ舞曲-2390481537169535286.mp3', '1', '泰山与珍妮-DJ舞曲-239048', '2950082', 'mp3', '2', null, null, 'ybb', '2018-09-17 15:32:17', null, null);
INSERT INTO `drug_attachment` VALUES ('ac9bbe46100441ffb3f3d5a833de2ca4', 'e9b7e9f7dec647119335d3c1811ed77c', '62', '5311536230271294.docx', '1', '531', '13703', 'docx', '1', '1', null, 'jerry', '2018-09-06 18:37:41', null, null);
INSERT INTO `drug_attachment` VALUES ('b698ce450dd745ec9d964bf3c8ad7efe', '9093c99ede71428dbdcb06a7cdfc5ae7', '62', '泰山与珍妮-DJ舞曲-2390481537169535286.mp3', '1', '泰山与珍妮-DJ舞曲-239048', '2950082', 'mp3', '2', null, null, 'ybb', '2018-09-17 15:32:23', null, null);
INSERT INTO `drug_attachment` VALUES ('b7a0ff5488b7452d93fcedcd9ab31e6f', 'c6ba965ecd70400da81fcb226168396a', '62', '5311537154942621.docx', '1', '531', '13703', 'docx', '2', '21', null, 'ybb', '2018-09-17 11:29:33', null, null);
INSERT INTO `drug_attachment` VALUES ('b982dce6c9084c6390e8aad0fb2c1a13', 'e11c8cceb1714516a6c828a898b2eadf', '62', '反馈数据导入模板1536914602342.xlsx', '2', '反馈数据导入模板', '11591', 'xlsx', '6', '所发生的', null, 'ybb', '2018-09-14 16:43:21', null, null);
INSERT INTO `drug_attachment` VALUES ('ba7cf373d8b44de7a8ff7a090dd20ee4', '11111111', '62', '11534297385945.html', '1', '1', '149', 'html', '1', 'wqwqwq', null, 'ybb', '2018-08-15 09:46:30', null, null);
INSERT INTO `drug_attachment` VALUES ('bcb0f0946e0a4793966b049fc4aab8b0', 'e4ec0f9a64cc4e3cbb3fa29ed7ab4520', '62', 'SAE1537238018707.doc', '1', 'SAE', '67584', 'doc', '6', null, null, 'ybb', '2018-09-18 10:33:42', null, null);
INSERT INTO `drug_attachment` VALUES ('be46926a56ad4dd793c0df0d81336aed', 'aa5fe4f9823d43b5898d04734df5636e', '62', '5311537180192131.docx', '1', '531', '13703', 'docx', '2', '212', null, 'jerry', '2018-09-17 18:30:24', null, null);
INSERT INTO `drug_attachment` VALUES ('c027a4cf5eaa4d3882e6a9efd70961c0', '304291da7b994d2eaae42d32a62a13d5', '62', '5311537181903573.docx', '2', '531', '13703', 'docx', '2', '1212', null, '33', '2018-09-17 18:58:57', null, null);
INSERT INTO `drug_attachment` VALUES ('c06a5c78479345cd92d6ce7173e86f3d', '9093c99ede71428dbdcb06a7cdfc5ae7', '62', '下载 (1)1537169472235.jpg', '1', '下载 (1)', '35181', 'jpg', '2', null, null, 'ybb', '2018-09-17 15:31:58', null, null);
INSERT INTO `drug_attachment` VALUES ('c1123c6ff57341cf87a0be5cbd51fc7c', 'c63c9a86b8a94f8eae4c6d638229bde6', '62', '反馈数据导入模板1537415146633.xlsx', '2', '反馈数据导入模板', '0.01MB', 'xlsx', '2', '21', null, 'ybb', '2018-09-20 11:46:29', null, null);
INSERT INTO `drug_attachment` VALUES ('c3133c47b6e5485ea5c3706635ef3228', '11111112', '62', '11534754961390.html', '1', '1', '149', 'html', '1', '2121', null, 'ybb', '2018-08-20 16:53:05', null, null);
INSERT INTO `drug_attachment` VALUES ('c31dce18651a459ca7ff9cdad81689bd', '142e92c590554ddfb5bd7e1981ec78ee', '62', '5321536230103481.undefined', '1', '532', '14990', null, '1', '1', null, 'jerry', '2018-09-06 18:34:54', null, null);
INSERT INTO `drug_attachment` VALUES ('c67ede036d5b4e26be794bc0cbf48292', '9093c99ede71428dbdcb06a7cdfc5ae7', '62', '泰山与珍妮-DJ舞曲-2390481537169535286.mp3', '1', '泰山与珍妮-DJ舞曲-239048', '2950082', 'mp3', '2', null, null, 'ybb', '2018-09-17 15:32:17', null, null);
INSERT INTO `drug_attachment` VALUES ('c84bdb46b86747fda093a7bbf0ee8d3d', '1c409154151247009402e05a4e6cb63c', '62', '反馈1534299113028.xlsx', '2', '反馈', '12459', 'xlsx', '1', '21212', null, 'ybb', '2018-08-15 10:15:17', null, null);
INSERT INTO `drug_attachment` VALUES ('c8ea0a83656543e7ba5ac156abc780d3', '0927a48ed93c44698893981a6938cc57', '62', '5311537338657581.docx', '1', '531', '0.013M', 'docx', '2', '2121', null, 'ybb', '2018-09-19 14:31:39', null, null);
INSERT INTO `drug_attachment` VALUES ('cda7bc4c05c5476ebc35b9127972376c', 'ae17ea8d641042998f3b9924cf1c20ed', '62', '5311537414997681.docx', '2', '531', '0.01MB', 'docx', '7', '21', null, 'jerry', '2018-09-20 11:44:00', null, null);
INSERT INTO `drug_attachment` VALUES ('d0a4110d90704ecca9759f92f25cbb95', '11111112', '62', '反馈1534754718545.xlsx', '1', '反馈', '12459', 'xlsx', '1', '12121', null, 'ybb', '2018-08-20 16:49:03', null, null);
INSERT INTO `drug_attachment` VALUES ('d1fe045f959743f1a212bc947038947f', 'b3e60cc6416a436fa1e7bfbcc16a7acf', '62', '反馈数据导入模板1536742336595.xlsx', '2', '反馈数据导入模板', '11591', 'xlsx', '1', '发生的发生', null, 'jerry', '2018-09-12 16:52:18', null, null);
INSERT INTO `drug_attachment` VALUES ('d2baf9d998c9432591cb76713bea4ae4', '11111111', '62', 'global1534298669451.php', '1', 'global', '3935', 'php', '1', '21121', null, 'ybb', '2018-08-15 10:07:53', null, null);
INSERT INTO `drug_attachment` VALUES ('d2dab71c77d6446e82a162c3d3582f9b', 'f81556312b324e78b25e693ab64175dc', '62', 'logo1539757497726.png', '1', 'logo', '0.01MB', 'png', null, null, null, 'jerry', '2018-10-17 14:25:32', null, null);
INSERT INTO `drug_attachment` VALUES ('d46ad222ca3f4fd98b17a647490d0c17', '1f10d28ad6974dc78bd69017e1a58cd1', '62', '职级考核试题二期-18年6月份-有答案1537413890216.docx', '2', '职级考核试题二期-18年6月份-有答案', '0.27MB', 'docx', '10', null, null, 'ybb', '2018-09-20 11:24:53', null, null);
INSERT INTO `drug_attachment` VALUES ('d5858f90fc0f47c9b858969dee908283', 'c6ba965ecd70400da81fcb226168396a', '62', '反馈数据导入模板15367423365951536915948013.xlsx', '1', '反馈数据导入模板1536742336595', '11591', 'xlsx', null, null, null, 'ybb', '2018-09-14 17:05:43', null, null);
INSERT INTO `drug_attachment` VALUES ('d9407944ada3443d8026c0a2fab6a2cb', 'ae17ea8d641042998f3b9924cf1c20ed', '62', '5311537414997681.docx', '1', '531', '0.01MB', 'docx', '7', '21', null, 'jerry', '2018-09-20 11:44:08', null, null);
INSERT INTO `drug_attachment` VALUES ('dfb71026623b4e5783fbefba2bddb371', 'dc078b35d07b45458c8b10ac3a3ef838', '62', '5311537238064667.docx', '1', '531', '13703', 'docx', '7', '21', null, 'jerry', '2018-09-18 10:35:00', null, null);
INSERT INTO `drug_attachment` VALUES ('e05c0a82b8974ddf91b1fca25b371c74', '645f62ef81e44192922f4238de08aacb', '62', '反馈1534410156552.xlsx', '2', '反馈', '12459', 'xlsx', '1', '2112121', null, 'ybb', '2018-08-16 17:06:32', null, null);
INSERT INTO `drug_attachment` VALUES ('e07ca08efc664f538b859b8c7daac195', '11111112', '62', '5311536127197690.docx', '1', '531', '13703', 'docx', '1', '212', null, 'ybb', '2018-09-05 14:03:40', null, null);
INSERT INTO `drug_attachment` VALUES ('e0ccc8ae1ef6427f95eb5a0d903020ad', 'f81556312b324e78b25e693ab64175dc', '62', 'logo1539757497726.png', '1', 'logo', '0.01MB', 'png', null, null, null, 'jerry', '2018-10-17 14:28:31', null, null);
INSERT INTO `drug_attachment` VALUES ('e3019b237b3b4e8794e2c1d899c74d3a', '1862ce05c7bb4a69a250b418c601cdb8', '62', '职级考核试题二期-18年6月份-有答案1537497890338.docx', '2', '职级考核试题二期-18年6月份-有答案', '0.27MB', 'docx', '2', null, null, 'jerry', '2018-09-21 10:44:50', null, null);
INSERT INTO `drug_attachment` VALUES ('e3b004f249f94ac9b683c4a82e5706ee', '53d856949fc84185a2095b44374ba8b4', '62', '5311536235733022.docx', '1', '531', '13703', 'docx', '1', '121', null, '33', '2018-09-06 20:08:45', null, null);
INSERT INTO `drug_attachment` VALUES ('e914f50371184df0b9fb91ffb968ffcc', '11111112', '62', '反馈数据导入模板1534754881740.xlsx', '1', '反馈数据导入模板', '14990', 'xlsx', '1', '21212', null, 'ybb', '2018-08-20 16:51:45', null, null);
INSERT INTO `drug_attachment` VALUES ('e9f4ed9d15e14403a5a0ccb5ee8ecf88', 'ececa988d54246d3802c90e3a04ecc45', '62', '5311537265932008.docx', '1', '531', '13703', 'docx', '7', '1', null, 'ybb', '2018-09-18 18:19:27', null, null);
INSERT INTO `drug_attachment` VALUES ('eb514a842838447fb0ca968bc7726f31', '1f10d28ad6974dc78bd69017e1a58cd1', '62', '反馈数据导入模板1537413790963.xlsx', '2', '反馈数据导入模板', '0.01MB', 'xlsx', '7', null, null, 'ybb', '2018-09-20 11:23:12', null, null);
INSERT INTO `drug_attachment` VALUES ('ebc9c121b14f47fe9c514763709516d6', 'c6ba965ecd70400da81fcb226168396a', '62', '5311537150949163.docx', '1', '531', '13703', 'docx', '2', '21', null, 'ybb', '2018-09-17 10:23:00', null, null);
INSERT INTO `drug_attachment` VALUES ('ecc29f3af95b4d33bb46636d74ad0c6d', 'e11c8cceb1714516a6c828a898b2eadf', '62', '5311537155035514.docx', '1', '531', '13703', 'docx', '2', '21', null, 'ybb', '2018-09-17 11:31:06', null, null);
INSERT INTO `drug_attachment` VALUES ('edb80e7c4f0344ed8c282413e63d8231', '142e92c590554ddfb5bd7e1981ec78ee', '62', 'excel导出 (2)1536213433864.xlsx', '1', 'excel导出 (2)', '15360', 'xlsx', '1', '21', null, 'jerry', '2018-09-06 13:57:04', null, null);
INSERT INTO `drug_attachment` VALUES ('eeba2739cdbe47518ffcc3734e3e529c', 'c6ba965ecd70400da81fcb226168396a', '62', 'FDA报告表15284196465431537150987611.pdf', '1', 'FDA报告表1528419646543', '180830', 'pdf', '2', '21', null, 'ybb', '2018-09-17 10:23:39', null, null);
INSERT INTO `drug_attachment` VALUES ('eec5053bb2404735936eafd868de7e9f', '65b9c48437d547a6832d9d1e1cf8869e', '62', '下载 (1)1537237028205.jpg', '1', '下载 (1)', '35181', 'jpg', '2', '爽肤水', null, 'jerry', '2018-09-18 10:17:13', null, null);
INSERT INTO `drug_attachment` VALUES ('eef4ab83c4a44c6780eeb2b3e356176b', 'cbcfd601acd649f0ad3d7bef717893b7', '62', '职级考核试题二期-18年6月份-有答案1537497787025.docx', '2', '职级考核试题二期-18年6月份-有答案', '0.27MB', 'docx', '7', null, null, 'ybb', '2018-09-21 10:43:07', null, null);
INSERT INTO `drug_attachment` VALUES ('f015a1df62f84ebd8d16d8b9029562e3', '776bf26683e5440495a72106184f6156', '62', 'logo1539759503235.png', '2', 'logo', '0.01MB', 'png', null, null, null, 'jerry', '2018-10-17 14:58:50', null, null);
INSERT INTO `drug_attachment` VALUES ('f15af6ac2e184cbb80ae1da1834bafe5', 'aa5fe4f9823d43b5898d04734df5636e', '62', '5311537339701994.docx', '2', '531', '0.01MB', 'docx', '2', '212', null, 'jerry', '2018-09-19 14:49:02', null, null);
INSERT INTO `drug_attachment` VALUES ('f4ba74e0a4fb498b8fef2482a12149a7', '9093c99ede71428dbdcb06a7cdfc5ae7', '62', '下载 (1)1537169472235.jpg', '1', '下载 (1)', '35181', 'jpg', null, null, null, 'ybb', '2018-09-17 15:31:52', null, null);
INSERT INTO `drug_attachment` VALUES ('f4f8cfdade064916917f02f91fdadef9', 'aa5fe4f9823d43b5898d04734df5636e', '62', '5311537237192893.docx', '1', '531', '13703', 'docx', '7', '212', null, '33', '2018-09-18 10:20:27', null, null);
INSERT INTO `drug_attachment` VALUES ('f55c67df9c3a4792b099adb401171819', '2dd9a1587e064b35b3f81ac9157b683d', '62', '泰山与珍妮-DJ舞曲-2390481537237429815.mp3', '1', '泰山与珍妮-DJ舞曲-239048', '2950082', 'mp3', '2', null, null, 'jerry', '2018-09-18 10:23:54', null, null);
INSERT INTO `drug_attachment` VALUES ('f56008861c92479d82a0b2212c3e510e', '0962c90a9b7e45168d1705937c30dc6b', '62', '5311536836926966.docx', '1', '531', '13703', 'docx', '7', '212', null, 'jerry', '2018-09-13 19:09:05', null, null);
INSERT INTO `drug_attachment` VALUES ('f5b342566ae04da78f918aa130c81c84', 'aa5fe4f9823d43b5898d04734df5636e', '62', '反馈数据导入模板1537237321900.xlsx', '1', '反馈数据导入模板', '12388', 'xlsx', '2', 'ddd', null, 'jerry', '2018-09-18 10:22:39', null, null);
INSERT INTO `drug_attachment` VALUES ('f87441c95179403f92de335484819174', '43ada102786d4af5a53ea19a7a94eb68', '62', '涉及php功能1536202705348.xlsx', '1', '涉及php功能', '11055', 'xlsx', '1', '哈撒', null, 'ybb', '2018-09-06 10:58:39', null, null);
INSERT INTO `drug_attachment` VALUES ('f87a2b19ddfe42d9a455ad70d4d49092', '85d1e2461db04af586b4c686d707614f', '62', '反馈数据导入模板15367423365951537237473949.xlsx', '1', '反馈数据导入模板1536742336595', '11591', 'xlsx', '5', null, null, 'jerry', '2018-09-18 10:24:36', null, null);
INSERT INTO `drug_attachment` VALUES ('facdf7a4b05a48f3a9973370c0455f60', '0962c90a9b7e45168d1705937c30dc6b', '62', '5311536230295730.docx', '1', '531', '13703', 'docx', '1', '1', null, 'jerry', '2018-09-06 18:38:06', null, null);
INSERT INTO `drug_attachment` VALUES ('fb1d5fab56e7452cb65c1403774024f6', '456e04a77aef407ba9c487318884fb6b', '62', '5311537266619165.docx', '2', '531', '13703', 'docx', '7', '1', null, '33', '2018-09-18 18:30:55', null, null);
INSERT INTO `drug_attachment` VALUES ('fbafa491d0f2492786dd59fcd03339f4', 'aa5fe4f9823d43b5898d04734df5636e', '62', '5311537338536573.docx', '1', '531', '13703', 'docx', '2', '212', null, 'jerry', '2018-09-19 14:29:42', null, null);
INSERT INTO `drug_attachment` VALUES ('fbb0ce02d025486298f9f8f33f1a13c5', 'b3e60cc6416a436fa1e7bfbcc16a7acf', '62', '反馈数据导入模板15367423365951536742582346.xlsx', '1', '反馈数据导入模板1536742336595', '11591', 'xlsx', '1', '发生的发生', null, 'jerry', '2018-09-12 16:56:20', null, null);
INSERT INTO `drug_attachment` VALUES ('fd019c443d07447282c52e264eb72609', 'd853721c1d00486ba8c0e2afe7317cee', '62', '开发测试流程规范_孙佳佳1536198281080.docx', '1', '开发测试流程规范_孙佳佳', '323326', 'docx', '1', null, null, 'ybb', '2018-09-06 09:44:48', null, null);
INSERT INTO `drug_attachment` VALUES ('feb1fc204ff34f84803a535c587c2f12', '31fd99c1e1354b088abe629195d36c89', '62', '反馈数据导入模板15367423365951537151207801.xlsx', '1', '反馈数据导入模板1536742336595', '11591', 'xlsx', '2', 'sfs ', null, 'jerry', '2018-09-17 10:26:53', null, null);

-- ----------------------------
-- Table structure for file_information
-- ----------------------------
DROP TABLE IF EXISTS `file_information`;
CREATE TABLE `file_information` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目id',
  `file_name` varchar(100) DEFAULT NULL COMMENT '文件名',
  `file_folder_id` char(32) DEFAULT NULL COMMENT '文件目录ID',
  `file_extension` varchar(11) DEFAULT NULL COMMENT '文件扩展名',
  `file_class` varchar(100) DEFAULT NULL COMMENT '文件分类',
  `file_received_date` datetime DEFAULT NULL COMMENT '接收时间',
  `file_source` varchar(20) DEFAULT NULL COMMENT '文件来源',
  `file_status` tinyint(1) DEFAULT '0' COMMENT '0 未分发 1 已分发',
  `file_description` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `file_upload_user_id` char(32) DEFAULT NULL COMMENT '上传文件用户ID',
  `file_upload_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '上传文件时间',
  `file_upload_key` varchar(255) DEFAULT NULL COMMENT '七牛云Key',
  `delete_status` int(11) DEFAULT '0' COMMENT '删除状态(1:未删除，0:已删除)',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资料存放目录信息';

-- ----------------------------
-- Records of file_information
-- ----------------------------

-- ----------------------------
-- Table structure for file_report
-- ----------------------------
DROP TABLE IF EXISTS `file_report`;
CREATE TABLE `file_report` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目id',
  `report_source` char(32) DEFAULT NULL COMMENT '报告来源',
  `report_name` varchar(100) DEFAULT NULL COMMENT '报告名称',
  `report_series` varchar(80) DEFAULT NULL COMMENT '报告编号',
  `report_received_date` datetime DEFAULT NULL COMMENT '接收时间',
  `report_severity` varchar(40) DEFAULT NULL COMMENT '报告严重性 （一般 严重 死亡 其他）',
  `report_handle_user_id` char(32) DEFAULT NULL COMMENT '处理人id',
  `delete_status` int(11) DEFAULT '0' COMMENT '删除状态(1:未删除，0:已删除)',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资料存放目录信息';

-- ----------------------------
-- Records of file_report
-- ----------------------------

-- ----------------------------
-- Table structure for folder_information
-- ----------------------------
DROP TABLE IF EXISTS `folder_information`;
CREATE TABLE `folder_information` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `parent_id` char(32) DEFAULT NULL COMMENT '父目录ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目ID',
  `folder_name` varchar(80) DEFAULT NULL COMMENT '目录名称',
  `order_no` int(11) DEFAULT NULL COMMENT '目录排序',
  `delete_status` int(11) DEFAULT '0' COMMENT '删除状态(1:未删除，0:已删除)',
  `REVISION` int(11) DEFAULT '1' COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件目录表';

-- ----------------------------
-- Records of folder_information
-- ----------------------------
INSERT INTO `folder_information` VALUES ('19edd304d0bf4538add69b9b88a101ba', '50666f125cd245629a89cacf767a0bd5', '62', '13', '1', '1', '1', '1', '33', '2018-10-22 15:10:11', '33', '2018-10-22 15:10:11');
INSERT INTO `folder_information` VALUES ('1a4012ae8553454cb730cefd5fa10829', '472ae92c76c64b66a392ee8db4aab85b', '62', '13', '第二个二级目录', '12', '1', '1', '33', '2018-10-22 15:11:20', '33', '2018-10-22 15:11:20');
INSERT INTO `folder_information` VALUES ('472ae92c76c64b66a392ee8db4aab85b', null, 'string', 'string', '测试一级目录', '2', '1', '1', 'string', '2018-10-19 10:09:55', 'string', '2018-10-19 10:09:55');
INSERT INTO `folder_information` VALUES ('50666f125cd245629a89cacf767a0bd5', null, '62', '13', '新建一级目录2', '2', '1', '1', '33', '2018-10-22 11:32:10', '33', '2018-10-22 11:32:10');
INSERT INTO `folder_information` VALUES ('642fb7a7fbb94249ad4e223d5b908cbc', null, '62', '13', '121', '2', '1', '1', '33', '2018-10-22 18:38:57', '33', '2018-10-22 18:38:57');
INSERT INTO `folder_information` VALUES ('6869849bc5a0441cba84b81d44956179', '9d302ab0c62d4ac3a604fc7f269f38d0', '62', '13', '现金', '1', '1', '1', '33', '2018-10-22 15:18:56', '33', '2018-10-22 15:18:56');
INSERT INTO `folder_information` VALUES ('9028d9ef9e0642679594357de8c1bcab', null, '62', '13', '1', '1', '0', '1', '33', '2018-10-22 11:25:26', '33', '2018-10-22 11:25:26');
INSERT INTO `folder_information` VALUES ('9d302ab0c62d4ac3a604fc7f269f38d0', null, 'string', 'string', '测试一级目录111', '2', '1', '1', 'string', '2018-10-19 10:27:54', 'string', '2018-10-19 10:27:54');
INSERT INTO `folder_information` VALUES ('a62e165defac4e0badeea5bf10d6d72f', null, '62', '13', '新建一级目录4', '1', '1', '1', '33', '2018-10-22 11:32:36', '33', '2018-10-22 11:32:36');
INSERT INTO `folder_information` VALUES ('be5df5a061af4b9a878b332bd7a0aed6', null, '62', '13', '新建一级目录·1', '1', '0', '1', '33', '2018-10-22 11:29:50', '33', '2018-10-22 11:29:50');

-- ----------------------------
-- Table structure for mailbox
-- ----------------------------
DROP TABLE IF EXISTS `mailbox`;
CREATE TABLE `mailbox` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司id',
  `email_address` varchar(200) DEFAULT NULL COMMENT '邮箱账号',
  `email_display_name` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `email_passord` varchar(50) DEFAULT NULL COMMENT '密码',
  `email_server_type` tinyint(2) DEFAULT NULL COMMENT '服务器类型',
  `email_host_name` varchar(50) DEFAULT NULL COMMENT '发件服务器',
  `email_ssl` tinyint(2) DEFAULT NULL COMMENT '是否ssl?1是,2否',
  `email_port` varchar(20) DEFAULT NULL COMMENT '端口号',
  `email_default` tinyint(2) DEFAULT NULL COMMENT '是否默认?1是,2否',
  `delete_status` tinyint(2) DEFAULT NULL COMMENT '是否删除?1是,2否',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮箱表';

-- ----------------------------
-- Records of mailbox
-- ----------------------------
INSERT INTO `mailbox` VALUES ('1037274211517280256', '62', 'shasha123@as.cn', 'shasha', '123456', '3', '服务器', '2', '9090', '0', '1', '5', 'medsci', '2018-09-05 17:40:18', null, null);
INSERT INTO `mailbox` VALUES ('1037274358947065856', '62', 'xiaoxiao@jkd.cn', 'xiaoxiao', '123123', '3', '服务器', '1', '90', '2', '1', '3', 'medsci', '2018-09-05 17:40:53', null, null);
INSERT INTO `mailbox` VALUES ('1037275132993286144', '62', 'ds@kjf.cn', 'shasha', '123123', '2', '13', '1', '90', '2', '1', '3', 'medsci', '2018-09-05 17:43:58', null, null);
INSERT INTO `mailbox` VALUES ('1037275424333836288', '62', 'sd@d.cn', 'sd', '123334', '1', 'sd', '1', '90', '2', '1', '2', 'medsci', '2018-09-05 17:45:07', 'medsci', '2018-09-06 14:58:09');
INSERT INTO `mailbox` VALUES ('1037505734182334464', '62', '32@ewe.cn', 'Ceshi 23', '12343434', '2', 'sos', '2', '9090', '2', '1', '4', 'medsci', '2018-09-06 09:00:18', null, null);
INSERT INTO `mailbox` VALUES ('1037659663066554368', '62', 'g@kjhd.cn', 'gfd123', '12312323', '3', '342123', '2', '9090', '2', '1', '4', 'medsci', '2018-09-06 19:11:57', '33', '2018-09-10 16:51:13');
INSERT INTO `mailbox` VALUES ('236ec35d550e41709eba9ad868d9edab', '62', '633@bioon.com', '黎明', '123456', '2', 'stmp6.com', '1', '80030', '0', '1', '3', '33', '2018-09-18 13:22:23', '33', '2018-09-18 13:28:47');
INSERT INTO `mailbox` VALUES ('636c553bc0cc49bf84123061f366f39b', '62', 'shasha@ss.cn', 'shasha', '12324354', '1', 'stmpabc', '1', '9090', '2', '1', '2', '33', '2018-09-10 16:51:01', '33', '2018-09-10 16:53:02');
INSERT INTO `mailbox` VALUES ('78ffdd5853dd40d58b5a164ae14a58b3', '62', 'fj@er.cn', 'sd', '23132434', '1', 'stmpsdf', '2', '90', '2', '2', '1', '33', '2018-09-18 18:37:15', '33', '2018-10-15 18:39:44');
INSERT INTO `mailbox` VALUES ('7e6c58dd6f9142d5b5c134d9e4c3fa73', '62', '22@bioon.com', '用户3', '123456', '3', 'stmp', '1', '8808', '2', '1', '3', '33', '2018-09-12 10:48:01', '33', '2018-09-18 17:27:45');
INSERT INTO `mailbox` VALUES ('acb85c8eaf844aeb898ee6ceffcf58cb', '62', '88@qq.com', '99', '123456', '3', 'stmp.exchange', '1', '123', '1', '2', '2', '33', '2018-09-18 13:27:53', '33', '2018-10-15 18:39:44');
INSERT INTO `mailbox` VALUES ('af4f2be0523d463fb50f15eb0a2893e3', '62', 'sha@sha.cn', 'test123', '123234345', '3', 'stmpsds123', '1', '9090', '2', '1', '4', '33', '2018-09-10 16:52:30', '33', '2018-09-11 13:45:58');
INSERT INTO `mailbox` VALUES ('e74b81eb5e344ffe837704e8920fabf7', '62', '11@bioon.com', '次奥', '123456', '1', '22@bioon.com', '1', '8808', '2', '1', '4', '33', '2018-09-11 11:39:32', '33', '2018-09-14 14:24:46');
INSERT INTO `mailbox` VALUES ('eb18f4e604a64eb586ddabc995bec1c2', '62', 'sdf@cm.cn', 'asds', '123343453', '1', 'stmpsdf', '1', '9090', '2', '1', '2', '33', '2018-09-11 17:36:45', '33', '2018-09-14 13:12:06');

-- ----------------------------
-- Table structure for project_drug
-- ----------------------------
DROP TABLE IF EXISTS `project_drug`;
CREATE TABLE `project_drug` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目ID',
  `drug_id` char(32) DEFAULT NULL COMMENT '药物ID',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1正常，2删除',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目药物表';

-- ----------------------------
-- Records of project_drug
-- ----------------------------
INSERT INTO `project_drug` VALUES ('000eac5605d940bdb15bbe6259abe8a6', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 15:13:01', null, null);
INSERT INTO `project_drug` VALUES ('002cc2c530ee4fc697494257b8ffbf59', '13', 'af97fc31defd4279b6ae3aea1980d66f', '2', null, null, null, '2018-09-18 18:32:53', null, null);
INSERT INTO `project_drug` VALUES ('006835b9e7bb42659786856dad39d441', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 10:13:36', null, null);
INSERT INTO `project_drug` VALUES ('009f635a916b4d6885dd742ca2d8ffa6', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:18:38', null, null);
INSERT INTO `project_drug` VALUES ('01c3f737c2a64e39b932f9cd65bab428', '13', '91813ecdd7c447f9964ce527828fe2a1', '2', null, null, 'ybb', '2018-09-06 14:56:50', null, null);
INSERT INTO `project_drug` VALUES ('0220b9e258c642ce81b474d0a497da81', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-13 17:21:25', null, null);
INSERT INTO `project_drug` VALUES ('02cd2b6e1d064d6cb952bae502374ac4', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('042c4b9bb1514e9ea56d296d847fe3e8', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-18 09:10:32', null, null);
INSERT INTO `project_drug` VALUES ('048b698a94454cf0992d46602f589a82', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('05c629759c344856afe8f71d58acdb5d', '13', '[\"11111112\"]', '2', null, null, null, '2018-09-05 19:33:48', null, null);
INSERT INTO `project_drug` VALUES ('08d8fb5694c443e1b0c574e97249d858', '13', '11111112', '2', null, null, null, '2018-09-12 16:27:37', null, null);
INSERT INTO `project_drug` VALUES ('0bb425aa5e594b9b926490a5bfea3254', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:28:00', null, null);
INSERT INTO `project_drug` VALUES ('0bc51d3708fc42808dfb91c401455e6e', '13', '1111', '2', null, null, 'wq', '2018-08-23 10:21:44', null, null);
INSERT INTO `project_drug` VALUES ('0c2f0249edf644cc8ea42b26bc152def', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-12 16:17:23', null, null);
INSERT INTO `project_drug` VALUES ('0d3fdc65a4824c79b8478abc1cf97cd4', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-11 09:16:12', null, null);
INSERT INTO `project_drug` VALUES ('0ee53843b68f4753a5fc4ef4ee743038', '13', '[\"11111111\"]', '2', null, null, null, '2018-08-23 16:41:52', null, null);
INSERT INTO `project_drug` VALUES ('0fe4c2617a954702b9f0eac80501a259', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-10 17:08:46', null, null);
INSERT INTO `project_drug` VALUES ('10a1041c17f843219a19fc26ccb0316e', '13', '557454bc4d3f49a4a0d324e12b915346', '2', null, null, null, '2018-09-12 16:17:30', null, null);
INSERT INTO `project_drug` VALUES ('10b8247d3cbc4ede8e2660b2eac55a0a', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:31:20', null, null);
INSERT INTO `project_drug` VALUES ('10ccd880077947bda0e7d42e1add737d', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 16:17:46', null, null);
INSERT INTO `project_drug` VALUES ('1111', '1', '11111112', '1', 'sss', null, null, '2018-08-20 10:53:42', null, null);
INSERT INTO `project_drug` VALUES ('11c89dd119e74d2a85dd974ea7fb00d7', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-13 18:49:07', null, null);
INSERT INTO `project_drug` VALUES ('14c631ff9fa84b7ab8c0252d799677b7', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-12 16:18:22', null, null);
INSERT INTO `project_drug` VALUES ('14d195932b024552a6510ffa6d75ebc6', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:17:23', null, null);
INSERT INTO `project_drug` VALUES ('150e4f9f6b744b9b97e0001456775339', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:30:58', null, null);
INSERT INTO `project_drug` VALUES ('1552b53ce3404b35bf8952076ea7fe02', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:13:19', null, null);
INSERT INTO `project_drug` VALUES ('171713f285f946cfb25e91f4ff6b9a0b', '13', '11111112', '2', null, null, null, '2018-09-07 10:29:35', null, null);
INSERT INTO `project_drug` VALUES ('198e72257d2844fd8f1154f799126ef0', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-12 16:21:28', null, null);
INSERT INTO `project_drug` VALUES ('1aa068b04f8d42418bac95d61d13b085', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('1b63f865844747b58b20acd5f38c4b27', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:18:38', null, null);
INSERT INTO `project_drug` VALUES ('1cb382e558be4def870c7d8e9caeaaed', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:33:10', null, null);
INSERT INTO `project_drug` VALUES ('1cca51002e234b8597dbf87745ec4c72', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:39:35', null, null);
INSERT INTO `project_drug` VALUES ('1d1de02164014ddb9fc782aa26d940ca', '13', '11111112', '2', null, null, null, '2018-09-10 18:04:02', null, null);
INSERT INTO `project_drug` VALUES ('1dfcedd7e4be4342802b3bae0ccc3179', '13', '162b53dd854e4a07a825daa548d1fb28', '1', null, null, null, '2018-09-25 18:54:14', null, null);
INSERT INTO `project_drug` VALUES ('1f84d1358aed43949b522986543692ac', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-12 16:17:46', null, null);
INSERT INTO `project_drug` VALUES ('23c22f8ffdf94b4eab1e21b1e897155b', '13', '162b53dd854e4a07a825daa548d1fb28', '2', null, null, null, '2018-09-18 18:32:53', null, null);
INSERT INTO `project_drug` VALUES ('23dde66afc804ed0b1847327403d4ef4', '13', 'dc078b35d07b45458c8b10ac3a3ef838', '1', null, null, null, '2018-09-25 18:54:14', null, null);
INSERT INTO `project_drug` VALUES ('2406493431ea4103a45495be7e6b7188', '13', 'a6da4bdaf11e4e30868c6ba1294e7b08', '2', null, null, 'ybb', '2018-09-06 09:31:22', null, null);
INSERT INTO `project_drug` VALUES ('24479ec7ea904330a17368e59fe4fecc', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:24:35', null, null);
INSERT INTO `project_drug` VALUES ('27b93cdf102e4ad082098946eddbc45c', '13', '11111112', '2', null, null, null, '2018-09-12 16:24:35', null, null);
INSERT INTO `project_drug` VALUES ('28611f47e62741728d2eac6ffcc6c31d', '13', '11111112', '2', null, null, null, '2018-09-12 15:13:01', null, null);
INSERT INTO `project_drug` VALUES ('2b42fa1638e647afbda4654d5f9f086f', '13', '745e6f7c53b44b9b8f547a4672135df3', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('2c84bcdbf7864957b2aea0c6f29c746b', '13', '11111112', '2', null, null, null, '2018-09-07 10:30:13', null, null);
INSERT INTO `project_drug` VALUES ('2da7569613e3435b847099b8df67d930', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:15:15', null, null);
INSERT INTO `project_drug` VALUES ('2ebcf1d8cc164306a7695148a25a8514', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-14 13:11:03', null, null);
INSERT INTO `project_drug` VALUES ('2f45019dae344a47b6d8cffdf82d98db', '13', '18a84dcb02684f89a3b92352b9ce3d85', '2', null, null, null, '2018-09-14 15:04:47', null, null);
INSERT INTO `project_drug` VALUES ('3034eb52471f4d56b21e99e23c908945', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-10 18:04:02', null, null);
INSERT INTO `project_drug` VALUES ('30c093ea836745db811d5e8701a1e032', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 10:09:41', null, null);
INSERT INTO `project_drug` VALUES ('331be77f39844c0f823fdfbc37b651a2', '13', '11111112', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('33ffea259a5b43679ff9aa0e9aa51dea', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('3882fef2073c4c9e9c4e5bfb074496a8', '13', '[\"11111112\"]', '2', null, null, null, '2018-09-05 17:16:59', null, null);
INSERT INTO `project_drug` VALUES ('394963a09fd04575975eb820d830b71f', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:13:02', null, null);
INSERT INTO `project_drug` VALUES ('3a7287c149ab49e4a53825caff78d23f', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('3b3d3c8ebfe04245a18e0134200be1a9', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('3bcf818d0ff54826b45679665bf14ef9', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:21:09', null, null);
INSERT INTO `project_drug` VALUES ('3be3f0b38237460aafde8053af41a6e4', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-12 10:58:52', null, null);
INSERT INTO `project_drug` VALUES ('3bfdb1fc724244e683325457c5262c2e', '13', '43ada102786d4af5a53ea19a7a94eb68', '2', null, null, 'ybb', '2018-09-06 09:42:08', null, null);
INSERT INTO `project_drug` VALUES ('3c15a286db7848ac8ae516e1f464e982', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-12 15:13:01', null, null);
INSERT INTO `project_drug` VALUES ('3c1c2bba02674292bc502a71c846dcda', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 14:04:59', null, null);
INSERT INTO `project_drug` VALUES ('3ebdd395653c47d39c6e5b6d20ec3d05', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-10 17:28:53', null, null);
INSERT INTO `project_drug` VALUES ('3fee39acb2a54ef19e707e68bd1d0823', '13', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-18 18:32:53', null, null);
INSERT INTO `project_drug` VALUES ('4058d194cada45e887a0919164b18899', '13', 'd853721c1d00486ba8c0e2afe7317cee', '2', null, null, 'ybb', '2018-09-06 09:46:32', null, null);
INSERT INTO `project_drug` VALUES ('4157c8449717431e9b96e6a2e5b5de7a', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('426a4b871bc947c2903b8dd41d4dab97', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:18:38', null, null);
INSERT INTO `project_drug` VALUES ('430390e481b44230a77e30a8a8aa8336', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-20 13:47:58', null, null);
INSERT INTO `project_drug` VALUES ('44974afae8fd4a2382555f3252e6d4b9', '13', 'e9b7e9f7dec647119335d3c1811ed77c', '2', null, null, 'ybb', '2018-09-06 18:37:43', null, null);
INSERT INTO `project_drug` VALUES ('475d0d210cd8443f87a363632e36e397', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-13 16:58:35', null, null);
INSERT INTO `project_drug` VALUES ('48420e50e85b426e9050aeb4629d42c8', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-12 16:18:22', null, null);
INSERT INTO `project_drug` VALUES ('48c5ce6c7ee0449a8165c1216dc19c4a', '13', 'af97fc31defd4279b6ae3aea1980d66f', '2', null, null, null, '2018-09-18 17:52:37', null, null);
INSERT INTO `project_drug` VALUES ('497b09d52f0849ff9aec94723601abfe', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-12 16:18:35', null, null);
INSERT INTO `project_drug` VALUES ('4b1573b9a3e5457e8fdfa6ca62dab095', '13', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 10:53:02', null, null);
INSERT INTO `project_drug` VALUES ('4cf7996496e949daa0ccb7e33aad1e19', '13', '745e6f7c53b44b9b8f547a4672135df3', '2', null, null, null, '2018-09-12 16:17:46', null, null);
INSERT INTO `project_drug` VALUES ('4d4ca52f05b749d8aea4e1e2f0bba1c9', '13', 'dc078b35d07b45458c8b10ac3a3ef838', '2', null, null, null, '2018-09-19 11:02:29', null, null);
INSERT INTO `project_drug` VALUES ('4e00e861f13349d5ab62c2b049969ed9', '17', 'e11c8cceb1714516a6c828a898b2eadf', '2', null, null, null, '2018-09-17 11:13:02', null, null);
INSERT INTO `project_drug` VALUES ('4e686dab78d64d43a4d3e35fb537a0c1', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 10:11:27', null, null);
INSERT INTO `project_drug` VALUES ('4f03741d701041a89cd40f60b4a86523', '13', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-21 18:24:27', null, null);
INSERT INTO `project_drug` VALUES ('4f85d9f3ca5042dc958f05aaa4a81e49', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:23:21', null, null);
INSERT INTO `project_drug` VALUES ('4f9786601ab144f28940d2f37cd25d0c', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:18:22', null, null);
INSERT INTO `project_drug` VALUES ('5114c78df517426bb80fa6d4d94b8944', '13', '142e92c590554ddfb5bd7e1981ec78ee', '2', null, null, null, '2018-09-06 18:19:17', null, null);
INSERT INTO `project_drug` VALUES ('53b6c9bb17354ed8aaebc0063d930180', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-14 15:04:47', null, null);
INSERT INTO `project_drug` VALUES ('546485f26b1740dfb038987ca0d89937', '13', '11111112', '2', null, null, null, '2018-09-06 18:43:19', null, null);
INSERT INTO `project_drug` VALUES ('5510aee1c7d94e8eadf4c6ab39b1612b', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-06 18:19:05', null, null);
INSERT INTO `project_drug` VALUES ('55af8e8d0d314044abdc2d3b14400080', '13', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-18 18:32:53', null, null);
INSERT INTO `project_drug` VALUES ('55fff97577384188930d3a90c54284c3', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 14:05:12', null, null);
INSERT INTO `project_drug` VALUES ('569a151899ca45c785d4b8baf3bccfb2', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-12 16:17:46', null, null);
INSERT INTO `project_drug` VALUES ('5791e0b9c41545f4bf47f7b5192da125', '13', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-18 17:52:37', null, null);
INSERT INTO `project_drug` VALUES ('5814b68893f44b6290a37f6a4061c7ea', '13', '11111112', '2', null, null, null, '2018-09-10 18:04:13', null, null);
INSERT INTO `project_drug` VALUES ('582093e8f19d493bb38d600547a9e583', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 16:27:37', null, null);
INSERT INTO `project_drug` VALUES ('5955588872474a10bf2939d98b35a1df', '13', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 10:53:56', null, null);
INSERT INTO `project_drug` VALUES ('5b8ed05d5d734c0cb6001e8f5b5e1c9d', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:13:19', null, null);
INSERT INTO `project_drug` VALUES ('5d0dea4f04ca481c9d4cc847f29fae72', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-13 16:58:35', null, null);
INSERT INTO `project_drug` VALUES ('5f1acb023abf4e2882274076f1a27330', '13', 'aa5fe4f9823d43b5898d04734df5636e', '1', null, null, null, '2018-09-25 18:54:14', null, null);
INSERT INTO `project_drug` VALUES ('5f361b8ec0464c6494c37142e4fdf7a6', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:28:00', null, null);
INSERT INTO `project_drug` VALUES ('5f3adbd86c494c0cb51b4c6e497712e7', '13', '11111112', '2', null, null, null, '2018-09-10 17:28:53', null, null);
INSERT INTO `project_drug` VALUES ('60278d4a4e53423b87ceff9e8e197df7', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:13:19', null, null);
INSERT INTO `project_drug` VALUES ('60a8c9fe07c045bfa3d6bbed3999b2b3', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:17:46', null, null);
INSERT INTO `project_drug` VALUES ('6247e4a7dd854e8bbd1bff99454708ec', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:21:28', null, null);
INSERT INTO `project_drug` VALUES ('6461891f69544d48be13c762c2addde3', '13', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-21 18:24:27', null, null);
INSERT INTO `project_drug` VALUES ('654cf38f8a804f779104020fae88ab2d', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-20 13:36:54', null, null);
INSERT INTO `project_drug` VALUES ('656ef017b9604f258ca0094afd1b0cec', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 16:18:35', null, null);
INSERT INTO `project_drug` VALUES ('658f3a0f8e2a410d9ce6136c2453488c', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:18:02', null, null);
INSERT INTO `project_drug` VALUES ('660febdf082a4a6fa543457f6ed7e7a5', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-12 16:18:35', null, null);
INSERT INTO `project_drug` VALUES ('6990bf0b94a54391bfa148ed18c27e02', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-10 18:04:13', null, null);
INSERT INTO `project_drug` VALUES ('69f32d79716b4c2889e80f9cb513f304', '13', '557454bc4d3f49a4a0d324e12b915346', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('69faafbbe59e4983a5348612136bd568', '13', 'af97fc31defd4279b6ae3aea1980d66f', '2', null, null, null, '2018-09-19 11:02:29', null, null);
INSERT INTO `project_drug` VALUES ('6a2b7b9742f64d2fac0406130c942954', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:13:43', null, null);
INSERT INTO `project_drug` VALUES ('6af5bf8a2f304508a14413b713564ad4', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:13:43', null, null);
INSERT INTO `project_drug` VALUES ('6bca7f6718084210ad0dfbcfac67e64a', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('6d0c7e9834924f23886f60d7c7c782bc', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:15:15', null, null);
INSERT INTO `project_drug` VALUES ('6d5d3c5b919a4ceaac0d6091d238be48', '13', 'af97fc31defd4279b6ae3aea1980d66f', '1', null, null, null, '2018-09-25 18:54:14', null, null);
INSERT INTO `project_drug` VALUES ('6e6fb49b9c2b4ab89080db146989938f', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:18:02', null, null);
INSERT INTO `project_drug` VALUES ('707f975441ce45aaa38f96bc8e60cc0a', '13', '11111112', '2', null, null, null, '2018-09-06 13:14:56', null, null);
INSERT INTO `project_drug` VALUES ('7080dda7c1a44f2794e4e47cee1f6e7a', '13', '11111112', '2', null, null, null, '2018-09-12 16:18:35', null, null);
INSERT INTO `project_drug` VALUES ('70b2711f683b476d89381ce05087dd74', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 14:02:04', null, null);
INSERT INTO `project_drug` VALUES ('71b9adb964a441679a9a1d673c9dcd25', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-12 16:27:01', null, null);
INSERT INTO `project_drug` VALUES ('7226a24d5ba84c61bf18fc6383570613', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-13 17:22:29', null, null);
INSERT INTO `project_drug` VALUES ('73533726ee6b47cda5226324cd17fe1d', '13', 'dc078b35d07b45458c8b10ac3a3ef838', '2', null, null, null, '2018-09-21 18:24:27', null, null);
INSERT INTO `project_drug` VALUES ('73733e977f1e4c7d91ce131d6bd6684e', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:18:11', null, null);
INSERT INTO `project_drug` VALUES ('7393dc56f32e41439386a358c4fc6109', '13', '\"11111112\"]', '2', null, null, null, '2018-09-06 11:27:41', null, null);
INSERT INTO `project_drug` VALUES ('742725b3df564c40ba73b894513d64e8', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 16:18:22', null, null);
INSERT INTO `project_drug` VALUES ('74980c5a0e82406cbc3aa59bb81ce192', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('74b70737dd2040298265dc994cd2b7fc', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:20:24', null, null);
INSERT INTO `project_drug` VALUES ('750d0b87be7b49088d9bf88b63729f0c', '13', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-18 17:52:37', null, null);
INSERT INTO `project_drug` VALUES ('76c3a952590e4c198c886ba29be9b782', '13', '0245015f3b914676bb510a2b5ba36ade', '2', null, null, 'ybb', '2018-09-06 09:00:13', null, null);
INSERT INTO `project_drug` VALUES ('77fbe85c3e4a4538a0330dfbf6681349', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('7c5d7f11ac4a433ab625a2e7dd2cfd08', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:18:22', null, null);
INSERT INTO `project_drug` VALUES ('7ed465a2d1de4185ae94a87880e75a79', '13', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 10:53:02', null, null);
INSERT INTO `project_drug` VALUES ('7ed5b8bb7ece4ab98e0c7b2ac32dc1dd', '13', '11111112', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('80b26b5828f34fdd8d490cde9a351567', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 14:06:28', null, null);
INSERT INTO `project_drug` VALUES ('82c9d393a2934b9da711de478af18c0d', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-12 16:20:24', null, null);
INSERT INTO `project_drug` VALUES ('82ddf58f6c564400aab46b5c9f06d3e4', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:17:46', null, null);
INSERT INTO `project_drug` VALUES ('82f15ced9c7346ab9dd26be3f3ea27fc', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('8334f5a8b8a6461bb969f22e9da9c10c', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('83efa59e56d24cf292a364506b31e20e', '13', '557454bc4d3f49a4a0d324e12b915346', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('84527a46229b4dfeb9929b172ef30447', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('87f9275182994be79ebce4af5bb9b39e', '13', '[\"11111111\"]', '2', null, null, null, '2018-09-04 17:16:19', null, null);
INSERT INTO `project_drug` VALUES ('8a077b077ac84b18951871b99b8bd3af', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-12 16:23:21', null, null);
INSERT INTO `project_drug` VALUES ('8b4ff36276fc44eab5d0254da3896332', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 14:04:59', null, null);
INSERT INTO `project_drug` VALUES ('8c5e34777df642a48660b2a10a5e3296', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-12 10:58:52', null, null);
INSERT INTO `project_drug` VALUES ('8ced790d48354974a3be54115fa18bd5', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, 'ybb', '2018-09-06 09:09:55', null, null);
INSERT INTO `project_drug` VALUES ('8d439f1ade3c47339cdef9b0babc5eeb', '13', '11111112', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('8d48cc32541c4c95bda3428a0f53d169', '17', 'e11c8cceb1714516a6c828a898b2eadf', '2', null, null, null, '2018-09-17 10:09:41', null, null);
INSERT INTO `project_drug` VALUES ('8fcfaee220374432a12b36a6f4d4fb26', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:20:24', null, null);
INSERT INTO `project_drug` VALUES ('91ea15ecbf7441718073c661d0298a14', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-20 13:37:01', null, null);
INSERT INTO `project_drug` VALUES ('929cff905f9f4075b7dd6565aa2efc1e', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:21:28', null, null);
INSERT INTO `project_drug` VALUES ('9398278ee6d546d4a3ee7330caa13941', '13', '11111112', '2', null, null, null, '2018-09-12 16:17:30', null, null);
INSERT INTO `project_drug` VALUES ('93a1d3ec10304949b7fce56018396a1d', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-18 17:14:23', null, null);
INSERT INTO `project_drug` VALUES ('93da868c335149a1ad3e65329ed42660', '13', '557454bc4d3f49a4a0d324e12b915346', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('94cec9e8c7a644d5a1da56dc1f6e180b', '13', '557454bc4d3f49a4a0d324e12b915346', '2', null, null, null, '2018-09-12 16:18:35', null, null);
INSERT INTO `project_drug` VALUES ('9510eb6865474b709e277befacbbc560', '13', '745e6f7c53b44b9b8f547a4672135df3', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('9535329e87c3451fa0b341fae4df98f9', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-06 19:19:45', null, null);
INSERT INTO `project_drug` VALUES ('95ac8d6acf704e54ba0ed8a0527918c0', '13', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 10:53:56', null, null);
INSERT INTO `project_drug` VALUES ('960965a21e6f44d79054f0a82a211b29', '13', '745e6f7c53b44b9b8f547a4672135df3', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('97f0d73b180d456c90bfc09ad8aea741', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('9956aa99ddf24cab88ddd5e90c7a8f28', '13', '3cc5315f27b641d2a872864ed8099561', '2', null, null, null, '2018-09-13 16:58:35', null, null);
INSERT INTO `project_drug` VALUES ('9b59487e32684cd1a3d4fc0e0896c992', '13', '162b53dd854e4a07a825daa548d1fb28', '2', null, null, null, '2018-09-19 11:02:29', null, null);
INSERT INTO `project_drug` VALUES ('9b5cb3057b714c7f8ee9e2abd32cc632', '13', '745e6f7c53b44b9b8f547a4672135df3', '2', null, null, null, '2018-09-12 16:20:24', null, null);
INSERT INTO `project_drug` VALUES ('9c7dc3403a6f46f98b310aa8ecebb509', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:15:15', null, null);
INSERT INTO `project_drug` VALUES ('9dd2bbb69e18464d92e5e95a6ab3b654', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('9e0ad629bd6c4c94aaa4d6fb54305115', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-12 16:23:21', null, null);
INSERT INTO `project_drug` VALUES ('9fa89c70c56947afa006d6debe6d4c8d', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-12 16:20:24', null, null);
INSERT INTO `project_drug` VALUES ('a02ae374a62f4ec6a1e84eb365b2167f', '13', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-19 11:02:29', null, null);
INSERT INTO `project_drug` VALUES ('a10ab802e8634e6f8a9c4a8654fe7097', '13', '3cc5315f27b641d2a872864ed8099561', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('a11485828bc94343b33ed01c798fdf93', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:18:11', null, null);
INSERT INTO `project_drug` VALUES ('a11db03c5e5c4a318c975784ceec5cf1', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:23:21', null, null);
INSERT INTO `project_drug` VALUES ('a130888b55d24048b4dfe2a8baa84992', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:33:10', null, null);
INSERT INTO `project_drug` VALUES ('a1469d85c2364a23849a091d1aa2f51e', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 14:05:12', null, null);
INSERT INTO `project_drug` VALUES ('a1a9d62b1fe14eae97c313721c6fa6a2', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-07 10:30:13', null, null);
INSERT INTO `project_drug` VALUES ('a38b4d3f866f4ee8abad20541acd66e7', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-07 14:58:32', null, null);
INSERT INTO `project_drug` VALUES ('a6740caae57b49dca8f20f23ec122034', '13', '142e92c590554ddfb5bd7e1981ec78ee', '2', null, null, null, '2018-09-06 13:14:56', null, null);
INSERT INTO `project_drug` VALUES ('a6cda55f5eb6466eb9973652f410d2dd', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-06 18:19:17', null, null);
INSERT INTO `project_drug` VALUES ('a79a557302024a0a9578eaf2da2194d8', '13', '11111112', '2', null, null, null, '2018-09-13 16:58:35', null, null);
INSERT INTO `project_drug` VALUES ('a7c132991b5b49e4afbe65a8a0205a1a', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-12 16:17:23', null, null);
INSERT INTO `project_drug` VALUES ('a7cda8e7f5ec4f7dac89273fde071eac', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:18:11', null, null);
INSERT INTO `project_drug` VALUES ('a8f11ac0f5d948a286bd47f25d57481b', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('a8fdb0029c274cf39770577a90452210', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:39:35', null, null);
INSERT INTO `project_drug` VALUES ('a93ab57e33594d2d9ba0d508dc7b82d2', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:28:00', null, null);
INSERT INTO `project_drug` VALUES ('acf5d4b1090b4d5cb5e58a5ba65f2da7', '17', '2423fc89c1374d0eae77b30959818783', '2', null, null, null, '2018-09-17 10:13:07', null, null);
INSERT INTO `project_drug` VALUES ('acfe379d3c2248f7944b242ee0a13990', '13', '745e6f7c53b44b9b8f547a4672135df3', '2', null, null, null, '2018-09-12 16:17:23', null, null);
INSERT INTO `project_drug` VALUES ('ad3ee59d3b40426ea6af9737ad3cdd07', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:27:37', null, null);
INSERT INTO `project_drug` VALUES ('adac382084b6413b97c56f9373b0512d', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('ae8ebb1328f943c2b1092ea042332539', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 16:17:30', null, null);
INSERT INTO `project_drug` VALUES ('ae9aec797d614497ac273766a459108f', '13', '3cc5315f27b641d2a872864ed8099561', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('aeb3b867a62b489ab23ffd1b511746b3', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('afdacb2cfdad46e9a9a2dcb8b3ca42e3', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('b18fe805f52543d68fe85dbff4007360', '13', '18a84dcb02684f89a3b92352b9ce3d85', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('b20caa06899d43ecaf1b046b8beba6fd', '13', '9093c99ede71428dbdcb06a7cdfc5ae7', '2', null, null, null, '2018-09-19 11:02:29', null, null);
INSERT INTO `project_drug` VALUES ('b259d24c12c6402193c30077f350ac89', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:13:43', null, null);
INSERT INTO `project_drug` VALUES ('b2efb2ef2a584fada4d470e9c733be26', '13', '162b53dd854e4a07a825daa548d1fb28', '2', null, null, null, '2018-09-21 18:24:27', null, null);
INSERT INTO `project_drug` VALUES ('b34167384373465d9a982c5f1df585fb', '13', '11111112', '2', null, null, null, '2018-09-12 16:21:28', null, null);
INSERT INTO `project_drug` VALUES ('b38c71cdf405411bb024d25561510e25', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-06 18:43:19', null, null);
INSERT INTO `project_drug` VALUES ('b40b6d7a6a464ddabde2b298c4f5cc34', '13', 'c6ba965ecd70400da81fcb226168396a', '1', null, null, null, '2018-09-25 18:54:14', null, null);
INSERT INTO `project_drug` VALUES ('b4cdbf28eee94ce986266d1f4b42733b', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-07 10:29:35', null, null);
INSERT INTO `project_drug` VALUES ('b52126503e734e9bb2483990472ecc34', '13', '745e6f7c53b44b9b8f547a4672135df3', '2', null, null, null, '2018-09-12 16:18:22', null, null);
INSERT INTO `project_drug` VALUES ('b61e78e366c642c79fc6bc80c90b5fda', '13', '9093c99ede71428dbdcb06a7cdfc5ae7', '2', null, null, null, '2018-09-18 18:32:53', null, null);
INSERT INTO `project_drug` VALUES ('b746324ca0b947a58c9b4fcaa74984c2', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 14:05:45', null, null);
INSERT INTO `project_drug` VALUES ('b8be332c844f44c6b5e6245dca45fd3c', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-12 16:27:01', null, null);
INSERT INTO `project_drug` VALUES ('ba6d27903faf46ccb4db940993a7a439', '13', '18a84dcb02684f89a3b92352b9ce3d85', '2', null, null, null, '2018-09-14 13:11:03', null, null);
INSERT INTO `project_drug` VALUES ('bb2355dd25a641b7b94e1e945dcc0ec8', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-06 18:19:17', null, null);
INSERT INTO `project_drug` VALUES ('bb92808a4aee4fef90e2a7bc9236c29b', '17', 'e11c8cceb1714516a6c828a898b2eadf', '2', null, null, null, '2018-09-17 11:13:19', null, null);
INSERT INTO `project_drug` VALUES ('bc0510a8756e4bb996aa3b6749d71de8', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:31:20', null, null);
INSERT INTO `project_drug` VALUES ('bc5d254f8ec0496fa3af28866a67055b', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-12 16:17:30', null, null);
INSERT INTO `project_drug` VALUES ('bcbda55f8ade47e0bd2afc830d10fdfa', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:26:08', null, null);
INSERT INTO `project_drug` VALUES ('bd233cb33b584f758e145bd770d7b7f2', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-13 16:58:35', null, null);
INSERT INTO `project_drug` VALUES ('bf781ae19d3b46d7a95c877955d933a1', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('bfadb0b0f29a45b1a4c02c7cd5bd7402', '13', '745e6f7c53b44b9b8f547a4672135df3', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('bfe6023156bb46f891d253eb616732ce', '17', 'aa5fe4f9823d43b5898d04734df5636e', '2', null, null, null, '2018-09-17 11:13:02', null, null);
INSERT INTO `project_drug` VALUES ('c04b03db3f1c44e68c9097168cb0b08f', '17', '2423fc89c1374d0eae77b30959818783', '2', null, null, null, '2018-09-17 10:11:27', null, null);
INSERT INTO `project_drug` VALUES ('c0be71fb3e50482bbff25a380dac947c', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-11 09:16:12', null, null);
INSERT INTO `project_drug` VALUES ('c1bf0e246feb4ce18ec4dc74077e7597', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-12 16:18:22', null, null);
INSERT INTO `project_drug` VALUES ('c2ddd09321e045bfae3c757713c16563', '13', '557454bc4d3f49a4a0d324e12b915346', '2', null, null, null, '2018-09-12 10:58:52', null, null);
INSERT INTO `project_drug` VALUES ('c30c623fd3e54323b26f1aeb7e760d27', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:30:58', null, null);
INSERT INTO `project_drug` VALUES ('c3ff7c37146d445f86d10bb4e10a5b00', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:26:08', null, null);
INSERT INTO `project_drug` VALUES ('c492b08fdad44784b541d62c5e50764f', '13', '[\"11111111\"]', '2', null, null, null, '2018-08-23 16:40:27', null, null);
INSERT INTO `project_drug` VALUES ('c494fa5d65834f099815489efb80db96', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('c6364152e9404a4fadda7a2199a66208', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, 'ybb', '2018-09-06 18:45:23', null, null);
INSERT INTO `project_drug` VALUES ('c774765f164948a6988d8e248d1da35c', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:27:14', null, null);
INSERT INTO `project_drug` VALUES ('c78c190ff107403bb0e06c9a0c41c303', '13', '11111112', '2', null, null, null, '2018-09-14 15:04:47', null, null);
INSERT INTO `project_drug` VALUES ('c8dd8e3054f14c54b7ae130127de0ccd', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-12 16:26:30', null, null);
INSERT INTO `project_drug` VALUES ('c9ba720a36c741dab9bf230583446eb7', '13', '[\"11111112\"]', '2', null, null, null, '2018-09-06 13:22:17', null, null);
INSERT INTO `project_drug` VALUES ('ca86a850a1c548728d1d62e9365f72fd', '17', '2423fc89c1374d0eae77b30959818783', '2', null, null, null, '2018-09-17 10:09:41', null, null);
INSERT INTO `project_drug` VALUES ('caed979486204b07adf60c3f5d049bfa', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-11 09:16:12', null, null);
INSERT INTO `project_drug` VALUES ('cbb17da2ca004312aad234153f230fdd', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('ccfdbdecb34a49baab093b00c739a02e', '13', 'f349133b1dd942b2b80ff57f33e3171e', '2', null, null, null, '2018-09-12 16:20:24', null, null);
INSERT INTO `project_drug` VALUES ('cd020385681a410aa55f4071c1d82910', '13', '11111112', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('cdc760793a4948988c417bd5e073253a', '13', '9093c99ede71428dbdcb06a7cdfc5ae7', '1', null, null, null, '2018-09-25 18:54:14', null, null);
INSERT INTO `project_drug` VALUES ('ce03af979116469aaf51507617de23ce', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 14:05:45', null, null);
INSERT INTO `project_drug` VALUES ('ceedb114da41481890c031c7ff6ee642', '13', '11111112', '2', null, null, null, '2018-09-13 17:22:29', null, null);
INSERT INTO `project_drug` VALUES ('d1547de9efb14ae7ab3293b4c1eac604', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:13:02', null, null);
INSERT INTO `project_drug` VALUES ('d189f888eb7f4b1b8a363c99cf1c3f15', '13', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-19 11:02:29', null, null);
INSERT INTO `project_drug` VALUES ('d581b82b8eee43199496e0dd07675759', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('d6117e3ac4b741829c6058dda0dc3b79', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-10 17:28:53', null, null);
INSERT INTO `project_drug` VALUES ('d71fdb8aeaa248d0a7cbcdf16cb5ca4f', '13', '557454bc4d3f49a4a0d324e12b915346', '2', null, null, null, '2018-09-12 17:04:50', null, null);
INSERT INTO `project_drug` VALUES ('d79ac34ec27e4e5bbac7967b8a2be293', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:21:09', null, null);
INSERT INTO `project_drug` VALUES ('d79b2b68f13740079f70f6945845554e', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, 'ybb', '2018-09-06 18:38:07', null, null);
INSERT INTO `project_drug` VALUES ('d7d7801df786434ea9a20f309cc2daf0', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:31:20', null, null);
INSERT INTO `project_drug` VALUES ('d807ccbbcf0e4c51b9b78d2401d40417', '13', '9093c99ede71428dbdcb06a7cdfc5ae7', '2', null, null, null, '2018-09-21 18:24:27', null, null);
INSERT INTO `project_drug` VALUES ('d939343a0010467d90de9961dd281181', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-13 10:16:20', null, null);
INSERT INTO `project_drug` VALUES ('d9d58736208143c7a3f971085bdbe280', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:17:23', null, null);
INSERT INTO `project_drug` VALUES ('dbf9ec576ae74489bd25dd82c7775b60', '17', '2423fc89c1374d0eae77b30959818783', '2', null, null, null, '2018-09-17 10:13:36', null, null);
INSERT INTO `project_drug` VALUES ('dc14db0bbcd7451f91af3a5c2e353085', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('dd8779cf1ae34e63a01145f5c94ed290', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 14:06:28', null, null);
INSERT INTO `project_drug` VALUES ('de77731170e64aed8b074d61e9da7bca', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-06 18:19:05', null, null);
INSERT INTO `project_drug` VALUES ('e0ec7bf575f940caa5b64f2b97926c49', '13', '9093c99ede71428dbdcb06a7cdfc5ae7', '2', null, null, null, '2018-09-18 17:52:37', null, null);
INSERT INTO `project_drug` VALUES ('e3c4003127eb4d448cd00a41af8e94a5', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 16:27:37', null, null);
INSERT INTO `project_drug` VALUES ('e40a37cd622a4dd086c4ca398215e181', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('e42f79589e45412abd0b48eb56d87940', '13', '0962c90a9b7e45168d1705937c30dc6b', '2', null, null, null, '2018-09-12 09:57:56', null, null);
INSERT INTO `project_drug` VALUES ('e503be4d4369422ab98307bfcfc32a38', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-12 16:21:28', null, null);
INSERT INTO `project_drug` VALUES ('e55790da16ad4f72b7ad63adcc167036', '13', '53d856949fc84185a2095b44374ba8b4', '2', null, null, null, '2018-09-13 16:58:35', null, null);
INSERT INTO `project_drug` VALUES ('e6521428e60e4059be8e9d88df74fa16', '13', '089d041749cf4e7a9b4157699eee2873', '2', null, null, null, '2018-09-12 16:27:14', null, null);
INSERT INTO `project_drug` VALUES ('e7ac911c83a4422f9cb399a7dce15261', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-17 11:18:02', null, null);
INSERT INTO `project_drug` VALUES ('e7c37818236145df960b13ac80f76430', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 14:02:04', null, null);
INSERT INTO `project_drug` VALUES ('e912449ab6ff47738dbccccf5daad7d2', '13', 'af97fc31defd4279b6ae3aea1980d66f', '2', null, null, null, '2018-09-21 18:24:27', null, null);
INSERT INTO `project_drug` VALUES ('ea0007c596a9451d84ad3155a137f2f9', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-12 16:17:46', null, null);
INSERT INTO `project_drug` VALUES ('eab52bd72fb84eee823ac689e0a039c5', '557454bc4d3f49a4a0d324e12b915346', null, '1', null, null, 'ybb', '2018-09-06 08:51:26', null, null);
INSERT INTO `project_drug` VALUES ('ed27fe1aba2a415d8fd3178259f5aa68', '17', '31fd99c1e1354b088abe629195d36c89', '2', null, null, null, '2018-09-17 11:39:35', null, null);
INSERT INTO `project_drug` VALUES ('efc01d6a66be4545a5f029aa0febc25f', '13', '18a84dcb02684f89a3b92352b9ce3d85', '2', null, null, null, '2018-09-13 16:58:35', null, null);
INSERT INTO `project_drug` VALUES ('f102554f2e7c46628fa5045682c16822', '17', 'c6ba965ecd70400da81fcb226168396a', '1', null, null, null, '2018-09-21 10:47:58', null, null);
INSERT INTO `project_drug` VALUES ('f128935217ee454eb656e29ad77b617a', '13', 'a07f1422e2e54935932aa39b5c16152f', '2', null, null, 'ybb', '2018-09-06 09:54:24', null, null);
INSERT INTO `project_drug` VALUES ('f2bcc3b07200432fac98f0dc46e78663', '13', 'b603a0b21bc54e69851c989b62c483d4', '2', null, null, null, '2018-09-12 16:17:23', null, null);
INSERT INTO `project_drug` VALUES ('f31b7c8e39654facba33769dbedb8cd8', '13', '[]', '2', null, null, null, '2018-09-06 14:50:14', null, null);
INSERT INTO `project_drug` VALUES ('f5e71f1930724f959d4499ed468203ad', '13', '3c52555aab8a44189e4a7df298073290', '2', null, null, 'ybb', '2018-09-06 14:50:17', null, null);
INSERT INTO `project_drug` VALUES ('f5ff744040de4094b9148a9ecbcf5518', '13', 'b10dd39f7a784a01ba7947637b90b694', '2', null, null, null, '2018-09-12 16:22:01', null, null);
INSERT INTO `project_drug` VALUES ('f65e84989148449d9734c68809212efe', '13', '11111112', '2', null, null, null, '2018-09-11 09:16:12', null, null);
INSERT INTO `project_drug` VALUES ('f714e34fbad14fe5a044f5252a21e787', '13', '1c8ad0facc2347e093ffde8201bb03f5', '2', null, null, null, '2018-09-12 16:21:28', null, null);
INSERT INTO `project_drug` VALUES ('f8f36c895c44490fa4039fa78fa08c60', '13', '252134082f52420ca732dcc9436df36b', '2', null, null, null, '2018-09-12 15:13:01', null, null);
INSERT INTO `project_drug` VALUES ('fb547cc17cff47639c8ccd38a582528e', '13', '18a84dcb02684f89a3b92352b9ce3d85', '2', null, null, null, '2018-09-13 18:49:07', null, null);
INSERT INTO `project_drug` VALUES ('fb7f43010e664c2db65364de6b1ca130', '17', '2423fc89c1374d0eae77b30959818783', '2', null, null, null, '2018-09-17 10:09:16', null, null);
INSERT INTO `project_drug` VALUES ('fdc403d6081d410f82673a0e55e06867', '17', 'c6ba965ecd70400da81fcb226168396a', '2', null, null, null, '2018-09-20 13:48:11', null, null);
INSERT INTO `project_drug` VALUES ('ff543269a7554cc1837cc36abe29b7be', '13', '[\"11111111\"]', '2', null, null, null, '2018-08-23 16:37:28', null, null);

-- ----------------------------
-- Table structure for regulations
-- ----------------------------
DROP TABLE IF EXISTS `regulations`;
CREATE TABLE `regulations` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司id',
  `regulation_name` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `severity` varchar(20) DEFAULT NULL COMMENT '严重性',
  `priority` int(1) DEFAULT NULL COMMENT '优先级',
  `finished_date` int(11) DEFAULT NULL COMMENT '报告完成时间',
  `delete_status` int(1) DEFAULT NULL COMMENT '状态(1:未删除,2:已删除)',
  `unit` varchar(1) DEFAULT NULL COMMENT '单位',
  `nodes` varchar(250) DEFAULT NULL COMMENT '节点集',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of regulations
-- ----------------------------
INSERT INTO `regulations` VALUES ('02572cc60dc642f0be9c210eee8c4588', '62', '一般', '报告规则', '3', '3', '1', '2', '[{\"label\":\"节点1\",\"value\":1},{\"label\":\"节点2\",\"value\":1},{\"label\":\"节点3\",\"value\":1}]', '1', '33', '2018-09-10 14:07:28', '33', '2018-09-10 14:07:28');
INSERT INTO `regulations` VALUES ('0f95e3c7789d41e489f5ebb57f56c0c5', '62', '不出现', '报告规则', '5', '7', '2', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:50:01', '33', '2018-09-12 16:50:44');
INSERT INTO `regulations` VALUES ('1037297798784905216', '62', 'sd123', '报告规则', '5', '6', '2', '1', '[{\"label\":\"fg123\",\"value\":2},{\"label\":\"1\",\"value\":1},{\"label\":\"f\",\"value\":3}]', '3', 'medsci', '2018-09-05 19:14:02', 'medsci', '2018-09-05 19:19:58');
INSERT INTO `regulations` VALUES ('1037298317100216320', '62', 'fsd', '报告规则', '123', '4', '2', '1', '[{\"label\":\"fg123\",\"value\":1},{\"label\":\"1\",\"value\":1},{\"label\":\"f\",\"value\":2}]', '2', 'medsci', '2018-09-05 19:16:06', 'medsci', '2018-09-05 19:16:51');
INSERT INTO `regulations` VALUES ('1037299265688203264', '62', 'd', '一般', '3', '4', '1', '时', '[{\"label\":\"fg123\",\"value\":1},{\"label\":\"1\",\"value\":1},{\"label\":\"f\",\"value\":2}]', '6', 'medsci', '2018-09-05 19:19:52', '33', '2018-09-13 18:29:56');
INSERT INTO `regulations` VALUES ('1037600595980136448', '62', '去委曲求全', '报告规则', '11', '21', '2', '2', '[{\"label\":\"fg123\",\"value\":1},{\"label\":\"1\",\"value\":10},{\"label\":\"f\",\"value\":10}]', '2', 'medsci', '2018-09-06 15:17:14', 'medsci', '2018-09-06 17:46:05');
INSERT INTO `regulations` VALUES ('1037600725680599040', '62', '去哇哇哇哇', '报告规则', '1', '11', '2', '2', '[{\"label\":\"fg123\",\"value\":1},{\"label\":\"1\",\"value\":5},{\"label\":\"f\",\"value\":5}]', '3', 'medsci', '2018-09-06 15:17:45', 'medsci', '2018-09-06 15:18:00');
INSERT INTO `regulations` VALUES ('1037638023371321344', '62', 'dfg', '报告规则', '3', '5', '2', '1', '[{\"label\":\"fg123\",\"value\":1},{\"label\":\"1\",\"value\":1},{\"label\":\"f\",\"value\":1},{\"label\":\"2\",\"value\":2}]', '2', 'medsci', '2018-09-06 17:45:58', '33', '2018-09-10 14:06:31');
INSERT INTO `regulations` VALUES ('1c208bdcac8d43cbaf794ee1061c1148', '62', '死亡', '其他', '1', '3', '1', '1', '[{\"label\":\"节点1\",\"value\":1},{\"label\":\"节点2\",\"value\":1},{\"label\":\"节点3\",\"value\":1}]', '2', '33', '2018-09-10 14:06:16', '33', '2018-09-13 17:59:16');
INSERT INTO `regulations` VALUES ('2352d28e165b436e90552f27065c9dfe', '62', '严重', '严重', '2', '6', '1', '天', '[{\"label\":\"医学评审\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据质控\",\"value\":1}]', '3', '33', '2018-09-20 13:48:34', '33', '2018-09-20 14:42:58');
INSERT INTO `regulations` VALUES ('38f08dd1bf5347afafacca6496410a21', '62', '梵蒂冈12', '报告规则', '42', '9', '2', '天', '[{\"label\":\"报告递交\",\"value\":2},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":3}]', '3', '33', '2018-09-12 16:45:13', '33', '2018-09-12 16:50:46');
INSERT INTO `regulations` VALUES ('43e9efb22a064129a607a6d036db8ef7', '62', '电饭锅', '报告规则', '4', '7', '1', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '1', '33', '2018-09-12 16:55:07', '33', '2018-09-12 16:55:07');
INSERT INTO `regulations` VALUES ('4c1d542da1a74c3ebdf8959644cc0bbf', '62', '大幅度发给', '报告规则', '3', '7', '2', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:51:11', '33', '2018-09-12 16:52:29');
INSERT INTO `regulations` VALUES ('511a04f6ac464762b2e63fa3eb24e4b4', '62', '测试', '报告规则', '1', '7', '2', '1', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:12:09', '33', '2018-09-12 16:50:39');
INSERT INTO `regulations` VALUES ('545bbd307bd0491ebee711f3b7fabc3b', '62', 'sdf', '其他', '3', '3', '1', '天', '[{\"label\":\"玩儿\",\"value\":2},{\"label\":\"gdfg\",\"value\":1}]', '1', '33', '2018-09-17 19:13:21', '33', '2018-09-17 19:13:21');
INSERT INTO `regulations` VALUES ('57ef3c93103147aaae0cb64b6ac73ddf', '62', '2121', '报告规则', '4', '7', '2', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:42:56', '33', '2018-09-12 16:50:51');
INSERT INTO `regulations` VALUES ('5a594f0bdeac4586ab4ce4494202c786', '62', '规划局', '报告规则', '3', '7', '2', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:41:20', '33', '2018-09-12 16:50:53');
INSERT INTO `regulations` VALUES ('5b102c4f9c3944f5a54c1c0f6ead5fda', '62', '1', '严重', '2', '6', '1', '天', '[{\"label\":\"fg123\",\"value\":1},{\"label\":\"1\",\"value\":1},{\"label\":\"f\",\"value\":1},{\"label\":\"2\",\"value\":1},{\"label\":\"dfg\",\"value\":1},{\"label\":\"dfg3\",\"value\":1}]', '1', '33', '2018-09-13 18:28:24', '33', '2018-09-13 18:28:24');
INSERT INTO `regulations` VALUES ('75f54927fd534f669db6f18cb815fab8', '62', '756', '其他', '6', '6', '1', '天', '[{\"label\":\"发过火\",\"value\":6}]', '1', '33', '2018-09-18 18:00:45', '33', '2018-09-18 18:00:45');
INSERT INTO `regulations` VALUES ('7988862732e443e289979a263442ad0c', '62', '死亡', '死亡', '1', '6', '1', '2', '[{\"label\":\"医学评审\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据质控\",\"value\":1}]', '4', '33', '2018-09-20 13:37:40', '33', '2018-09-20 14:42:53');
INSERT INTO `regulations` VALUES ('7a66b973c2c84d9298d8e9f982e19be1', '62', '杀杀杀杀123', '报告规则', '61', '8', '2', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":3}]', '3', '33', '2018-09-12 16:44:18', '33', '2018-09-12 16:44:47');
INSERT INTO `regulations` VALUES ('91bec56290f44943867f03116fe6a6c7', '62', '发过的', '报告规则', '3', '6', '2', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":1}]', '2', '33', '2018-09-12 16:51:50', '33', '2018-09-12 16:52:37');
INSERT INTO `regulations` VALUES ('9eb06fb043ce4982bfb90ee567255cd0', '62', 'uy', '其他', '7', '7', '1', '天', '[{\"label\":\"发过火\",\"value\":7}]', '1', '33', '2018-09-18 18:00:28', '33', '2018-09-18 18:00:28');
INSERT INTO `regulations` VALUES ('a1f7fe20752f49eb872a15cfb15535a5', '62', '严重', '严重', '14', '3', '1', '天', '[{\"label\":\"0\",\"value\":2},{\"label\":\"1\",\"value\":1}]', '5', '33', '2018-09-14 15:46:19', '33', '2018-09-18 15:05:46');
INSERT INTO `regulations` VALUES ('c043e4d1cf9f4d4c9c4bc633caa4fe6c', '62', '一般', '一般', '3', '6', '1', '天', '[{\"label\":\"医学评审\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据质控\",\"value\":1}]', '1', '33', '2018-09-20 14:41:19', '33', '2018-09-20 14:41:19');
INSERT INTO `regulations` VALUES ('c7301dd73b5041ac813354f1031b8cb3', '62', '好讨厌', '报告规则', '4', '7', '2', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:42:12', '33', '2018-09-12 16:50:42');
INSERT INTO `regulations` VALUES ('d8fd6cceb1834848858232cb2f318e62', '62', '的神色', '报告规则', '3', '6', '1', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":1}]', '1', '33', '2018-09-12 16:53:04', '33', '2018-09-12 16:53:04');
INSERT INTO `regulations` VALUES ('e199581a4a09468d9015818010d97f90', '62', '很久', '报告规则', '6', '7', '2', '1', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:13:21', '33', '2018-09-12 16:50:48');
INSERT INTO `regulations` VALUES ('e1e80fd7b38e482f9dad8a895ea0eea2', '62', '一般', '一般', '3', '3', '1', '天', '[{\"label\":\"0\",\"value\":1},{\"label\":\"1\",\"value\":2}]', '1', '33', '2018-09-18 15:05:34', '33', '2018-09-18 15:05:34');
INSERT INTO `regulations` VALUES ('e2c024e6a1384ba29e98a00c5cb311cb', '62', '玩儿', '报告规则', '3', '6', '1', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":1}]', '1', '33', '2018-09-12 16:53:40', '33', '2018-09-12 16:53:40');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `role_code` varchar(32) NOT NULL DEFAULT '' COMMENT '角色编号',
  `menu_code` varchar(32) NOT NULL COMMENT '菜单编号',
  `delete_status` int(11) NOT NULL COMMENT '删除状态0删除，1正常',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单表';

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1037306798897176576', '21', '1037306712909750273', '0', null, 'medsci', '2018-09-05 19:49:48', 'medsci', '2018-09-05 20:51:24');
INSERT INTO `role_menu` VALUES ('1037306798901370880', '21', '1037306758317285377', '0', null, 'medsci', '2018-09-05 19:49:48', 'medsci', '2018-09-05 20:51:24');
INSERT INTO `role_menu` VALUES ('1037317255578152960', 'fg123', '1037310523728621569', '0', null, 'medsci', '2018-09-05 20:31:21', 'medsci', '2018-09-06 09:49:57');
INSERT INTO `role_menu` VALUES ('1037317255578152961', 'fg123', '1037310647527698433', '0', null, 'medsci', '2018-09-05 20:31:21', 'medsci', '2018-09-06 09:49:57');
INSERT INTO `role_menu` VALUES ('1037322301152755712', '21', '1037310523728621569', '1', null, 'medsci', '2018-09-05 20:51:24', 'medsci', '2018-09-05 20:51:24');
INSERT INTO `role_menu` VALUES ('1037322301152755713', '21', '1037310647527698433', '1', null, 'medsci', '2018-09-05 20:51:24', 'medsci', '2018-09-05 20:51:24');
INSERT INTO `role_menu` VALUES ('1037518088508960768', 'fg123', '1037310232748781569', '0', null, 'medsci', '2018-09-06 09:49:23', 'medsci', '2018-09-06 09:49:57');
INSERT INTO `role_menu` VALUES ('1037518088508960769', 'fg123', '1037506787179130881', '0', null, 'medsci', '2018-09-06 09:49:23', 'medsci', '2018-09-06 09:49:57');
INSERT INTO `role_menu` VALUES ('1037518088508960770', 'fg123', '1037508562388938753', '0', null, 'medsci', '2018-09-06 09:49:23', 'medsci', '2018-09-06 09:49:57');
INSERT INTO `role_menu` VALUES ('1037518229555015680', 'fg123', '1037508562388938753', '1', null, 'medsci', '2018-09-06 09:49:57', 'medsci', '2018-09-06 09:49:57');
INSERT INTO `role_menu` VALUES ('1037518502587428864', '32', '1037506787179130881', '1', null, 'medsci', '2018-09-06 09:51:02', 'medsci', '2018-09-06 09:51:02');
INSERT INTO `role_menu` VALUES ('1037518502587428865', '32', '1037508562388938753', '1', null, 'medsci', '2018-09-06 09:51:02', 'medsci', '2018-09-06 09:51:02');
INSERT INTO `role_menu` VALUES ('1037599724907081728', 'test-001', '1037597671648473089', '0', null, 'medsci', '2018-09-06 15:13:47', 'medsci', '2018-09-06 18:51:59');
INSERT INTO `role_menu` VALUES ('1037654637757685760', 'test-001', '1037653698720129025', '1', null, 'medsci', '2018-09-06 18:51:59', 'medsci', '2018-09-06 18:51:59');
INSERT INTO `role_menu` VALUES ('1037654637757685761', 'test-001', '1037653795856015361', '1', null, 'medsci', '2018-09-06 18:51:59', 'medsci', '2018-09-06 18:51:59');
INSERT INTO `role_menu` VALUES ('1037654637757685762', 'test-001', '1037652130646024193', '1', null, 'medsci', '2018-09-06 18:51:59', 'medsci', '2018-09-06 18:51:59');
INSERT INTO `role_menu` VALUES ('1037654637757685763', 'test-001', '1037654148672479233', '1', null, 'medsci', '2018-09-06 18:51:59', 'medsci', '2018-09-06 18:51:59');
INSERT INTO `role_menu` VALUES ('1037654637757685764', 'cro', 'w-s-s-s', '0', null, 'medsci', '2018-09-06 18:51:59', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037887509408079872', 'cro', 'w-s-s-s', '0', null, 'medsci', '2018-09-07 10:17:20', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037887509408079873', 'cro', '1037656821039718401', '0', null, 'medsci', '2018-09-07 10:17:20', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037954893890633728', 'cro', '1037954581507260417', '0', null, 'medsci', '2018-09-07 14:45:06', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037954893890633729', 'cro', '1037656821039718401', '0', null, 'medsci', '2018-09-07 14:45:06', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037955141174214656', 'PV001', '1037954581507260417', '0', null, 'medsci', '2018-09-07 14:46:05', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1037955141174214657', 'PV001', '1037656821039718401', '0', null, 'medsci', '2018-09-07 14:46:05', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1037979180967747584', 'cro', '1037954581507260417', '0', null, 'medsci', '2018-09-07 16:21:36', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037979180967747585', 'cro', '1037955588645281793', '0', null, 'medsci', '2018-09-07 16:21:36', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037979180967747586', 'cro', '1037956742540255233', '0', null, 'medsci', '2018-09-07 16:21:36', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037979180967747587', 'cro', '1037656821039718401', '0', null, 'medsci', '2018-09-07 16:21:36', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037985612429615104', 'cro', '1037985529973792769', '0', null, 'medsci', '2018-09-07 16:47:10', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037985612429615105', 'cro', '1037954581507260417', '0', null, 'medsci', '2018-09-07 16:47:10', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037985612429615106', 'cro', '1037955588645281793', '0', null, 'medsci', '2018-09-07 16:47:10', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037985612429615107', 'cro', '1037956742540255233', '0', null, 'medsci', '2018-09-07 16:47:10', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1037985612429615108', 'cro', '1037656821039718401', '0', null, 'medsci', '2018-09-07 16:47:10', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038028269616979968', 'PV001', '1037954581507260417', '0', null, 'medsci', '2018-09-07 19:36:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028269616979969', 'PV001', '1037985529973792769', '0', null, 'medsci', '2018-09-07 19:36:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028269616979970', 'PV001', '1037955588645281793', '0', null, 'medsci', '2018-09-07 19:36:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028269616979971', 'PV001', '1037956742540255233', '0', null, 'medsci', '2018-09-07 19:36:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028269616979972', 'PV001', '1037656821039718401', '0', null, 'medsci', '2018-09-07 19:36:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028320993009664', 'PV001', '1038010578330370049', '0', null, 'medsci', '2018-09-07 19:36:52', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028320993009665', 'PV001', '1037954581507260417', '0', null, 'medsci', '2018-09-07 19:36:52', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028320993009666', 'PV001', '1037985529973792769', '0', null, 'medsci', '2018-09-07 19:36:52', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028320993009667', 'PV001', '1037955588645281793', '0', null, 'medsci', '2018-09-07 19:36:52', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028320993009668', 'PV001', '1037956742540255233', '0', null, 'medsci', '2018-09-07 19:36:52', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038028320993009669', 'PV001', '1037656821039718401', '0', null, 'medsci', '2018-09-07 19:36:52', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038972162906873856', 'PV001', '1037985529973792769', '0', null, 'medsci', '2018-09-10 10:07:21', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038972162906873857', 'PV001', '1038010578330370049', '0', null, 'medsci', '2018-09-10 10:07:21', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038972162906873858', 'PV001', '1037954581507260417', '0', null, 'medsci', '2018-09-10 10:07:21', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038972162906873859', 'PV001', '1037955588645281793', '0', null, 'medsci', '2018-09-10 10:07:21', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038972162906873860', 'PV001', '1037956742540255233', '0', null, 'medsci', '2018-09-10 10:07:21', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038972162906873861', 'PV001', '1037656821039718401', '0', null, 'medsci', '2018-09-10 10:07:21', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038972204476620800', 'cro2', '1037985529973792769', '0', null, 'medsci', '2018-09-10 10:07:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038972204476620801', 'cro2', '1038010578330370049', '0', null, 'medsci', '2018-09-10 10:07:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038972204476620802', 'cro2', '1037954581507260417', '0', null, 'medsci', '2018-09-10 10:07:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038972204476620803', 'cro2', '1037955588645281793', '0', null, 'medsci', '2018-09-10 10:07:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038972204476620804', 'cro2', '1037956742540255233', '0', null, 'medsci', '2018-09-10 10:07:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038972204476620805', 'cro2', '1037656821039718401', '0', null, 'medsci', '2018-09-10 10:07:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973250062082048', 'cro2', '1037985529973792769', '0', null, 'medsci', '2018-09-10 10:11:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973250062082049', 'cro2', '1038010578330370049', '0', null, 'medsci', '2018-09-10 10:11:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973250062082050', 'cro2', '1037954581507260417', '0', null, 'medsci', '2018-09-10 10:11:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973250062082051', 'cro2', '1037955588645281793', '0', null, 'medsci', '2018-09-10 10:11:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973250062082052', 'cro2', '1037956742540255233', '0', null, 'medsci', '2018-09-10 10:11:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973325534388224', 'cro2', '1037985529973792769', '0', null, 'medsci', '2018-09-10 10:11:59', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973325534388225', 'cro2', '1038010578330370049', '0', null, 'medsci', '2018-09-10 10:11:59', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973325534388226', 'cro2', '1037954581507260417', '0', null, 'medsci', '2018-09-10 10:11:59', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973325534388227', 'cro2', '1037955588645281793', '0', null, 'medsci', '2018-09-10 10:11:59', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973325534388228', 'cro2', '1037956742540255233', '0', null, 'medsci', '2018-09-10 10:11:59', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038973923910574080', 'cro', '1037985529973792769', '0', null, 'medsci', '2018-09-10 10:14:21', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038973923910574081', 'cro', '1037954581507260417', '0', null, 'medsci', '2018-09-10 10:14:21', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038973923910574082', 'cro', '1037955588645281793', '0', null, 'medsci', '2018-09-10 10:14:21', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038973923910574083', 'cro', '1037956742540255233', '0', null, 'medsci', '2018-09-10 10:14:21', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038973923910574084', 'cro', '1037656821039718401', '0', null, 'medsci', '2018-09-10 10:14:21', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038984771290882048', 'cro2', '1037985529973792769', '0', null, 'medsci', '2018-09-10 10:57:28', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038984771290882049', 'cro2', '1038010578330370049', '0', null, 'medsci', '2018-09-10 10:57:28', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038984771290882050', 'cro2', '1037954581507260417', '0', null, 'medsci', '2018-09-10 10:57:28', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038984771290882051', 'cro2', '1037955588645281793', '0', null, 'medsci', '2018-09-10 10:57:28', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038984771290882052', 'cro2', '1037956742540255233', '0', null, 'medsci', '2018-09-10 10:57:28', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038984771290882053', 'cro2', '1038984688151388161', '0', null, 'medsci', '2018-09-10 10:57:28', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985670299279360', 'cro2', '1038010578330370049', '0', null, '2', '2018-09-10 11:01:02', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985670299279361', 'cro2', '1037954581507260417', '0', null, '2', '2018-09-10 11:01:02', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985670299279362', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 11:01:02', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985670299279363', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 11:01:02', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985670299279364', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 11:01:02', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985670299279365', 'cro2', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:01:02', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985670299279366', 'cro2', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:01:02', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985670299279367', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 11:01:02', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038985722124099584', 'PV001', '1038010578330370049', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985722124099585', 'PV001', '1037954581507260417', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985722124099586', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985722124099587', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985722124099588', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985722124099589', 'PV001', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985722124099590', 'PV001', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985722124099591', 'PV001', '1037656821039718401', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985722124099592', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 11:01:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038985757826015232', 'cro', '1037954581507260417', '0', null, '2', '2018-09-10 11:01:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038985757826015233', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 11:01:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038985757826015234', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 11:01:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038985757826015235', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 11:01:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038985757826015236', 'cro', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:01:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038985757826015237', 'cro', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:01:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038985757826015238', 'cro', '1037656821039718401', '0', null, '2', '2018-09-10 11:01:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038985757826015239', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 11:01:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990532839792640', 'cro2', '1037954581507260417', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792641', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792642', 'cro2', '1038010578330370049', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792643', 'cro2', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792644', 'cro2', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792645', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792646', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792647', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792648', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792649', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792650', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990532839792651', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 11:20:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038990571943288832', 'PV001', '1037954581507260417', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288833', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288834', 'PV001', '1038010578330370049', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288835', 'PV001', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288836', 'PV001', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288837', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288838', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288839', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288840', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288841', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288842', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288843', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990571943288844', 'PV001', '1037656821039718401', '0', null, '2', '2018-09-10 11:20:31', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038990606017814528', 'cro', '1037954581507260417', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814529', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814530', 'cro', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814531', 'cro', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814532', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814533', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814534', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814535', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814536', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814537', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814538', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038990606017814539', 'cro', '1037656821039718401', '0', null, '2', '2018-09-10 11:20:39', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038991978264059904', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059905', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059906', 'cro2', '1037954581507260417', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059907', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059908', 'cro2', '1038010578330370049', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059909', 'cro2', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059910', 'cro2', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059911', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059912', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059913', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059914', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059915', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059916', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038991978264059917', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 11:26:06', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038992002377113600', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113601', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113602', 'PV001', '1037954581507260417', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113603', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113604', 'PV001', '1038010578330370049', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113605', 'PV001', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113606', 'PV001', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113607', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113608', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113609', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113610', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113611', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113612', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113613', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992002377113614', 'PV001', '1037656821039718401', '0', null, '2', '2018-09-10 11:26:12', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038992024699199488', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199489', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199490', 'cro', '1037954581507260417', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199491', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199492', 'cro', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199493', 'cro', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199494', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199495', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199496', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199497', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199498', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199499', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199500', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038992024699199501', 'cro', '1037656821039718401', '0', null, '2', '2018-09-10 11:26:17', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993277160316928', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316929', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316930', 'cro2', '1038010578330370049', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316931', 'cro2', '1037954581507260417', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316932', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316933', 'cro2', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316934', 'cro2', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316935', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316936', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316937', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316938', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316939', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316940', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316941', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316942', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993277160316943', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 11:31:15', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038993308244303872', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303873', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303874', 'PV001', '1038010578330370049', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303875', 'PV001', '1037954581507260417', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303876', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303877', 'PV001', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303878', 'PV001', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303879', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303880', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303881', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303882', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303883', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303884', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303885', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303886', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303887', 'PV001', '1037656821039718401', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993308244303888', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 11:31:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038993337671540736', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540737', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540738', 'cro', '1037954581507260417', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540739', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540740', 'cro', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540741', 'cro', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540742', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540743', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540744', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540745', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540746', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540747', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540748', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540749', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540750', 'cro', '1037656821039718401', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038993337671540751', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 11:31:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998078199750656', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750657', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750658', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750659', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750660', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750661', 'cro2', '1038010578330370049', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750662', 'cro2', '1037954581507260417', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750663', 'cro2', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750664', 'cro2', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750665', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750666', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750667', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750668', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750669', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750670', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750671', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750672', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998078199750673', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 11:50:20', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1038998103067779072', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779073', 'PV001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779074', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779075', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779076', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779077', 'PV001', '1038010578330370049', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779078', 'PV001', '1037954581507260417', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779079', 'PV001', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779080', 'PV001', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779081', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779082', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779083', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779084', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779085', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779086', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779087', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779088', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779089', 'PV001', '1037656821039718401', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998103067779090', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 11:50:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1038998125318561792', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561793', 'cro', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561794', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561795', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561796', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561797', 'cro', '1037954581507260417', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561798', 'cro', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561799', 'cro', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561800', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561801', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561802', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561803', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561804', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561805', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561806', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561807', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561808', 'cro', '1037656821039718401', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1038998125318561809', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 11:50:31', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000683512651776', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651777', 'PV001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651778', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651779', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651780', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651781', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651782', 'PV001', '1037954581507260417', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651783', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651784', 'PV001', '1038010578330370049', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651785', 'PV001', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651786', 'PV001', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651787', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651788', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651789', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651790', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651791', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651792', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651793', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651794', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651795', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000683512651796', 'PV001', '1037656821039718401', '0', null, '2', '2018-09-10 12:00:41', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039000708187742208', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742209', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742210', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742211', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742212', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742213', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742214', 'cro2', '1037954581507260417', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742215', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742216', 'cro2', '1038010578330370049', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742217', 'cro2', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742218', 'cro2', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742219', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742220', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742221', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742222', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742223', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742224', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742225', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742226', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000708187742227', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 12:00:47', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039000735073230848', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230849', 'cro', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230850', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230851', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230852', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230853', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230854', 'cro', '1037954581507260417', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230855', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230856', 'cro', 'bee02dcccb7149cb8aa3934f0772e9a2', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230857', 'cro', 'ca2ca6de676943058048b05239d9d77e', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230858', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230859', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230860', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230861', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230862', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230863', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230864', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230865', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230866', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039000735073230867', 'cro', '1037656821039718401', '0', null, '2', '2018-09-10 12:00:54', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039035063866023936', '1001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023937', '1001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023938', '1001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023939', '1001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023940', '1001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023941', '1001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023942', '1001', '1037985529973792769', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023943', '1001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023944', '1001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023945', '1001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023946', '1001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023947', '1001', '1037955588645281793', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023948', '1001', '1037956742540255233', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023949', '1001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023950', '1001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039035063866023951', '1001', '1038984688151388161', '0', null, '2', '2018-09-10 14:17:18', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039042702742183936', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183937', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183938', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183939', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183940', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183941', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183942', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183943', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183944', 'cro2', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183945', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183946', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183947', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183948', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183949', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183950', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183951', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183952', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183953', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042702742183954', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 14:47:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039042836104273920', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273921', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273922', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273923', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273924', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273925', 'cro', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273926', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273927', 'cro', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273928', 'cro', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273929', 'cro', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273930', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273931', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273932', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273933', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273934', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273935', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273936', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273937', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039042836104273938', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 14:48:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039045854216380416', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380417', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380418', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380419', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380420', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380421', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380422', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380423', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380424', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380425', 'cro2', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380426', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380427', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380428', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380429', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380430', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380431', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380432', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380433', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380434', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380435', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045854216380436', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 15:00:11', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039045904195706880', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706881', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706882', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706883', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706884', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706885', 'PV001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706886', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706887', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706888', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706889', 'PV001', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706890', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706891', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706892', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706893', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706894', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706895', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706896', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706897', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706898', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706899', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039045904195706900', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 15:00:23', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848512', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848513', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848514', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848515', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848516', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848517', 'PV001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848518', 'PV001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848519', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848520', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848521', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848522', 'PV001', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848523', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848524', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848525', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848526', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848527', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848528', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848529', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848530', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848531', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848532', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048430982848533', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 15:10:25', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039048455305617408', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617409', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617410', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617411', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617412', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617413', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617414', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617415', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617416', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617417', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617418', 'cro2', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617419', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617420', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617421', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617422', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617423', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617424', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617425', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617426', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617427', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617428', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048455305617429', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 15:10:31', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119616', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119617', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119618', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119619', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119620', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119621', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119622', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119623', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119624', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119625', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119626', 'cro2', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119627', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119628', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119629', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119630', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119631', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119632', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119633', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119634', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119635', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119636', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048579675119637', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 15:11:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039048644112211968', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211969', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211970', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211971', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211972', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211973', 'cro', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211974', 'cro', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211975', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211976', 'cro', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211977', 'cro', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211978', 'cro', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211979', 'cro', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211980', 'cro', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211981', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211982', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211983', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211984', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211985', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211986', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211987', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211988', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048644112211989', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 15:11:16', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039048746184794112', '1005', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794113', '1005', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794114', '1005', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794115', '1005', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794116', '1005', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794117', '1005', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794118', '1005', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794119', '1005', '1037985529973792769', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794120', '1005', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794121', '1005', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794122', '1005', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794123', '1005', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794124', '1005', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794125', '1005', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794126', '1005', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794127', '1005', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794128', '1005', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794129', '1005', '1037955588645281793', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794130', '1005', '1037956742540255233', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794131', '1005', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794132', '1005', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039048746184794133', '1005', '1038984688151388161', '0', null, '2', '2018-09-10 15:11:40', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039077668394323968', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323969', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323970', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323971', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323972', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323973', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323974', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323975', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323976', 'cro2', '9e0bc51734a24e6e9c2a043a418cf0f7', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323977', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323978', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323979', 'cro2', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323980', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323981', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323982', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323983', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323984', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323985', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323986', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323987', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323988', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323989', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039077668394323990', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 17:06:36', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039078238475735040', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735041', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735042', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735043', 'cro', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735044', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735045', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735046', 'cro', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735047', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735048', 'cro', '9e0bc51734a24e6e9c2a043a418cf0f7', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735049', 'cro', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735050', 'cro', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735051', 'cro', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735052', 'cro', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735053', 'cro', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735054', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735055', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735056', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735057', 'cro', '1037956742540255233', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735058', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735059', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735060', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735061', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078238475735062', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 17:08:52', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621312', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621313', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621314', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621315', 'cro', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621316', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621317', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621318', 'cro', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621319', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621320', 'cro', '9e0bc51734a24e6e9c2a043a418cf0f7', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621321', 'cro', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621322', 'cro', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621323', 'cro', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621324', 'cro', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621325', 'cro', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621326', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621327', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621328', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621329', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621330', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621331', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621332', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078622644621333', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 17:10:23', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039078885661036544', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036545', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036546', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036547', 'PV001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036548', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036549', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036550', 'PV001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036551', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036552', 'PV001', '9e0bc51734a24e6e9c2a043a418cf0f7', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036553', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036554', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036555', 'PV001', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036556', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036557', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036558', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036559', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036560', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036561', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036562', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036563', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036564', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036565', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078885661036566', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 17:11:26', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121024', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121025', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121026', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121027', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121028', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121029', 'PV001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121030', 'PV001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121031', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121032', 'PV001', '9e0bc51734a24e6e9c2a043a418cf0f7', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121033', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121034', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121035', 'PV001', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121036', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121037', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121038', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121039', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121040', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121041', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121042', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121043', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121044', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121045', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039078931253121046', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 17:11:37', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079673712037888', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037889', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037890', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037891', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037892', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037893', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037894', 'cro2', '9e0bc51734a24e6e9c2a043a418cf0f7', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037895', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037896', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037897', 'cro2', '7400670c4c2a42c4a9609fd494dd08f4', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037898', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037899', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037900', 'cro2', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037901', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037902', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037903', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037904', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037905', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037906', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037907', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037908', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037909', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037910', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079673712037911', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-10 17:14:34', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039079698055778304', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778305', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778306', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778307', 'cro', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778308', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778309', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778310', 'cro', '9e0bc51734a24e6e9c2a043a418cf0f7', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778311', 'cro', '1037985529973792769', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778312', 'cro', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778313', 'cro', '7400670c4c2a42c4a9609fd494dd08f4', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778314', 'cro', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778315', 'cro', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778316', 'cro', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778317', 'cro', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778318', 'cro', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778319', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778320', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778321', 'cro', '1037955588645281793', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778322', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778323', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778324', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778325', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079698055778326', 'cro', '1038984688151388161', '0', null, '2', '2018-09-10 17:14:40', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039079719086018560', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018561', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018562', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018563', 'PV001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018564', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018565', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018566', 'PV001', '9e0bc51734a24e6e9c2a043a418cf0f7', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018567', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018568', 'PV001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018569', 'PV001', '7400670c4c2a42c4a9609fd494dd08f4', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018570', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018571', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018572', 'PV001', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018573', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018574', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018575', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018576', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018577', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018578', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018579', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018580', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018581', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018582', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039079719086018583', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-10 17:14:45', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439245543403520', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403521', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403522', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403523', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403524', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403525', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403526', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403527', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403528', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403529', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403530', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403531', 'cro2', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403532', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403533', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403534', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403535', 'cro2', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403536', 'cro2', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403537', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403538', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403539', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403540', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403541', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403542', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439245543403543', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-11 17:03:23', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439536791678976', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678977', 'PV001', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678978', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678979', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678980', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678981', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678982', 'PV001', '1037985529973792769', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678983', 'PV001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678984', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678985', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678986', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678987', 'PV001', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678988', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678989', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678990', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678991', 'PV001', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678992', 'PV001', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678993', 'PV001', '1037955588645281793', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678994', 'PV001', '1037956742540255233', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678995', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678996', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678997', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678998', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439536791678999', 'PV001', '1038984688151388161', '0', null, '2', '2018-09-11 17:04:32', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039439575765151744', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151745', 'cro2', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151746', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151747', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151748', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151749', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151750', 'cro2', '1037985529973792769', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151751', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151752', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151753', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151754', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151755', 'cro2', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151756', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575765151757', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346048', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346049', 'cro2', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346050', 'cro2', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346051', 'cro2', '1037955588645281793', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346052', 'cro2', '1037956742540255233', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346053', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346054', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346055', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346056', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439575769346057', 'cro2', '1038984688151388161', '0', null, '2', '2018-09-11 17:04:41', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039439635349434368', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434369', 'cro', '5feb2171b3a74265b9150f5accefd204', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434370', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434371', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434372', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434373', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434374', 'cro', '1037985529973792769', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434375', 'cro', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434376', 'cro', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434377', 'cro', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434378', 'cro', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434379', 'cro', 'c57a029bac4144e2a3b8c6472d730752', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434380', 'cro', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434381', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434382', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434383', 'cro', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434384', 'cro', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434385', 'cro', '1037955588645281793', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434386', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434387', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434388', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434389', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039439635349434390', 'cro', '1038984688151388161', '0', null, '2', '2018-09-11 17:04:56', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039683202683457536', '1002', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 09:12:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039683202683457537', '1002', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 09:12:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039696129318670336', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670337', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670338', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670339', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670340', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670341', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670342', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670343', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670344', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670345', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670346', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670347', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670348', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670349', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670350', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670351', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670352', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670353', 'cro2', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696129318670354', 'cro2', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 10:04:09', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039696151879831552', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831553', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831554', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831555', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831556', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831557', 'PV001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831558', 'PV001', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831559', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831560', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831561', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831562', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831563', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831564', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831565', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831566', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831567', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831568', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831569', 'PV001', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039696151879831570', 'PV001', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 10:04:14', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702541495128064', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128065', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128066', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128067', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128068', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128069', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128070', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128071', 'cro2', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128072', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128073', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128074', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128075', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128076', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128077', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128078', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128079', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128080', 'cro2', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128081', 'cro2', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128082', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702541495128083', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 10:29:37', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039702576366571520', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571521', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571522', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571523', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571524', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571525', 'PV001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571526', 'PV001', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571527', 'PV001', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571528', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571529', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571530', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571531', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571532', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571533', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571534', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571535', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571536', 'PV001', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571537', 'PV001', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571538', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702576366571539', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 10:29:46', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039702609287663616', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663617', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663618', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663619', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663620', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663621', 'cro', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663622', 'cro', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663623', 'cro', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663624', 'cro', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663625', 'cro', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663626', 'cro', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663627', 'cro', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663628', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663629', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663630', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663631', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663632', 'cro', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663633', 'cro', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663634', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039702609287663635', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 10:29:53', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039747307552333824', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528128', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528129', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528130', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528131', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528132', 'cro2', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528133', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528134', 'cro2', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528135', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528136', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528137', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528138', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528139', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528140', 'cro2', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528141', 'cro2', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528142', 'cro2', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528143', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528144', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528145', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528146', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528147', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747307556528148', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:27:30', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039747743525068800', '1003', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068801', '1003', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068802', '1003', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068803', '1003', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068804', '1003', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068805', '1003', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068806', '1003', 'd541d7d219094a2c98d0a8fc717e9da8', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068807', '1003', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068808', '1003', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068809', '1003', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068810', '1003', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068811', '1003', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068812', '1003', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068813', '1003', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068814', '1003', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068815', '1003', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068816', '1003', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068817', '1003', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068818', '1003', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068819', '1003', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068820', '1003', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747743525068821', '1003', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-12 13:29:14', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1039747878745235456', '1001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235457', '1001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235458', '1001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235459', '1001', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235460', '1001', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235461', '1001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235462', '1001', 'd541d7d219094a2c98d0a8fc717e9da8', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235463', '1001', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235464', '1001', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235465', '1001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235466', '1001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235467', '1001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235468', '1001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235469', '1001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235470', '1001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235471', '1001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235472', '1001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235473', '1001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235474', '1001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235475', '1001', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235476', '1001', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747878745235477', '1001', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-12 13:29:47', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1039747987369320448', '1005', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320449', '1005', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320450', '1005', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320451', '1005', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320452', '1005', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320453', '1005', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320454', '1005', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320455', '1005', 'd541d7d219094a2c98d0a8fc717e9da8', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320456', '1005', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320457', '1005', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320458', '1005', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320459', '1005', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320460', '1005', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320461', '1005', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320462', '1005', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320463', '1005', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320464', '1005', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320465', '1005', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320466', '1005', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320467', '1005', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320468', '1005', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320469', '1005', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039747987369320470', '1005', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-12 13:30:12', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1039748124887965696', '1004', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965697', '1004', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965698', '1004', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965699', '1004', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965700', '1004', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965701', '1004', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965702', '1004', 'd541d7d219094a2c98d0a8fc717e9da8', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965703', '1004', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965704', '1004', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965705', '1004', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965706', '1004', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965707', '1004', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965708', '1004', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965709', '1004', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965710', '1004', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965711', '1004', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965712', '1004', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965713', '1004', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965714', '1004', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965715', '1004', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965716', '1004', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748124887965717', '1004', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-12 13:30:45', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1039748235038777344', '1002', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777345', '1002', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777346', '1002', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777347', '1002', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777348', '1002', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777349', '1002', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777350', '1002', 'd541d7d219094a2c98d0a8fc717e9da8', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777351', '1002', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777352', '1002', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777353', '1002', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777354', '1002', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777355', '1002', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777356', '1002', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777357', '1002', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777358', '1002', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777359', '1002', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777360', '1002', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777361', '1002', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777362', '1002', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777363', '1002', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777364', '1002', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748235038777365', '1002', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-12 13:31:11', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1039748360771428352', '1006', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428353', '1006', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428354', '1006', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428355', '1006', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428356', '1006', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428357', '1006', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428358', '1006', 'd541d7d219094a2c98d0a8fc717e9da8', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428359', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428360', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428361', '1006', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428362', '1006', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428363', '1006', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428364', '1006', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428365', '1006', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428366', '1006', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428367', '1006', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428368', '1006', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428369', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428370', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428371', '1006', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428372', '1006', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748360771428373', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1039748827421302784', 'cro2', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302785', 'cro2', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302786', 'cro2', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302787', 'cro2', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302788', 'cro2', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302789', 'cro2', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302790', 'cro2', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302791', 'cro2', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302792', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302793', 'cro2', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302794', 'cro2', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302795', 'cro2', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302796', 'cro2', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302797', 'cro2', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302798', 'cro2', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302799', 'cro2', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302800', 'cro2', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302801', 'cro2', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302802', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302803', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302804', 'cro2', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748827421302805', 'cro2', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:33:33', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1039748858849222656', 'PV001', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222657', 'PV001', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222658', 'PV001', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222659', 'PV001', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222660', 'PV001', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222661', 'PV001', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222662', 'PV001', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222663', 'PV001', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222664', 'PV001', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222665', 'PV001', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222666', 'PV001', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222667', 'PV001', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222668', 'PV001', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222669', 'PV001', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222670', 'PV001', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222671', 'PV001', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222672', 'PV001', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222673', 'PV001', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222674', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222675', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222676', 'PV001', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748858849222677', 'PV001', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:33:40', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1039748888200962048', 'cro', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962049', 'cro', '04cea8ff16344dd7a1aa2043fa81026e', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962050', 'cro', '5dad8dba8317459a8123b996b131f3b5', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962051', 'cro', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962052', 'cro', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962053', 'cro', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962054', 'cro', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962055', 'cro', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962056', 'cro', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962057', 'cro', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962058', 'cro', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962059', 'cro', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962060', 'cro', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962061', 'cro', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962062', 'cro', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962063', 'cro', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962064', 'cro', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962065', 'cro', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962066', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962067', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962068', 'cro', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1039748888200962069', 'cro', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:33:47', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125120022728704', 'cro2', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728705', 'cro2', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728706', 'cro2', '65da9d9014154e718dc9f40abd866a20', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728707', 'cro2', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728708', 'cro2', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728709', 'cro2', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728710', 'cro2', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728711', 'cro2', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728712', 'cro2', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728713', 'cro2', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728714', 'cro2', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728715', 'cro2', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728716', 'cro2', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728717', 'cro2', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728718', 'cro2', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728719', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728720', 'cro2', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728721', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125120022728722', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-13 14:28:48', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125215153737728', 'PV001', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737729', 'PV001', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737730', 'PV001', '65da9d9014154e718dc9f40abd866a20', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737731', 'PV001', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737732', 'PV001', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737733', 'PV001', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737734', 'PV001', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737735', 'PV001', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737736', 'PV001', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737737', 'PV001', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737738', 'PV001', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737739', 'PV001', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737740', 'PV001', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737741', 'PV001', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737742', 'PV001', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737743', 'PV001', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737744', 'PV001', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737745', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125215153737746', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-13 14:29:11', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125297160769536', 'cro', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769537', 'cro', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769538', 'cro', '65da9d9014154e718dc9f40abd866a20', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769539', 'cro', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769540', 'cro', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769541', 'cro', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769542', 'cro', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769543', 'cro', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769544', 'cro', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769545', 'cro', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769546', 'cro', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769547', 'cro', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769548', 'cro', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769549', 'cro', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769550', 'cro', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769551', 'cro', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769552', 'cro', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769553', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125297160769554', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-13 14:29:30', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125678704021504', 'cro2', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021505', 'cro2', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021506', 'cro2', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021507', 'cro2', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021508', 'cro2', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021509', 'cro2', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021510', 'cro2', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021511', 'cro2', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021512', 'cro2', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021513', 'cro2', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021514', 'cro2', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021515', 'cro2', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021516', 'cro2', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021517', 'cro2', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021518', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021519', 'cro2', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021520', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125678704021521', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-13 14:31:01', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1040125697842630656', 'PV001', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630657', 'PV001', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630658', 'PV001', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630659', 'PV001', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630660', 'PV001', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630661', 'PV001', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630662', 'PV001', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630663', 'PV001', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630664', 'PV001', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630665', 'PV001', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630666', 'PV001', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630667', 'PV001', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630668', 'PV001', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630669', 'PV001', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630670', 'PV001', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630671', 'PV001', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630672', 'PV001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125697842630673', 'PV001', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-09-13 14:31:06', '2', '2018-09-13 14:31:06');
INSERT INTO `role_menu` VALUES ('1040125720902914048', 'cro', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914049', 'cro', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914050', 'cro', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914051', 'cro', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914052', 'cro', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914053', 'cro', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914054', 'cro', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914055', 'cro', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914056', 'cro', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914057', 'cro', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914058', 'cro', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914059', 'cro', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914060', 'cro', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914061', 'cro', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914062', 'cro', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914063', 'cro', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914064', 'cro', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1040125720902914065', 'cro', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-09-13 14:31:11', '2', '2018-09-13 14:31:11');
INSERT INTO `role_menu` VALUES ('1041610006177935360', 'cro2', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935361', 'cro2', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935362', 'cro2', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935363', 'cro2', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935364', 'cro2', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935365', 'cro2', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935366', 'cro2', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935367', 'cro2', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935368', 'cro2', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935369', 'cro2', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935370', 'cro2', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935371', 'cro2', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935372', 'cro2', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935373', 'cro2', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935374', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935375', 'cro2', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935376', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610006177935377', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-17 16:49:12', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1041610188399472640', '1003', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472641', '1003', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472642', '1003', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472643', '1003', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472644', '1003', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472645', '1003', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472646', '1003', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472647', '1003', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472648', '1003', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472649', '1003', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472650', '1003', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472651', '1003', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472652', '1003', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472653', '1003', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472654', '1003', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472655', '1003', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472656', '1003', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041610188399472657', '1003', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-17 16:49:56', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211584', '1003', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211585', '1003', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211586', '1003', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211587', '1003', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211588', '1003', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211589', '1003', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211590', '1003', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211591', '1003', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211592', '1003', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211593', '1003', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211594', '1003', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211595', '1003', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211596', '1003', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211597', '1003', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211598', '1003', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211599', '1003', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211600', '1003', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211601', '1003', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930404262211602', '1003', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:02:21', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1041930462261047296', '1001', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462261047297', '1001', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462261047298', '1001', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462261047299', '1001', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462261047300', '1001', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462261047301', '1001', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462261047302', '1001', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241600', '1001', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241601', '1001', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241602', '1001', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241603', '1001', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241604', '1001', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241605', '1001', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241606', '1001', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241607', '1001', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241608', '1001', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241609', '1001', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241610', '1001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930462265241611', '1001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:02:35', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094912', '1001', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094913', '1001', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094914', '1001', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094915', '1001', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094916', '1001', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094917', '1001', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094918', '1001', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094919', '1001', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094920', '1001', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094921', '1001', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094922', '1001', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094923', '1001', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094924', '1001', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094925', '1001', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094926', '1001', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094927', '1001', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094928', '1001', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094929', '1001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930491533094930', '1001', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:02:42', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1041930545589284864', '1005', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284865', '1005', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284866', '1005', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284867', '1005', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284868', '1005', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284869', '1005', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284870', '1005', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284871', '1005', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284872', '1005', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284873', '1005', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284874', '1005', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284875', '1005', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284876', '1005', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284877', '1005', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284878', '1005', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284879', '1005', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284880', '1005', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284881', '1005', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041930545589284882', '1005', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:02:55', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137408', '1005', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137409', '1005', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137410', '1005', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137411', '1005', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137412', '1005', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137413', '1005', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137414', '1005', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137415', '1005', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137416', '1005', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137417', '1005', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137418', '1005', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137419', '1005', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137420', '1005', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137421', '1005', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137422', '1005', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137423', '1005', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137424', '1005', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137425', '1005', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934412469137426', '1005', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:18:17', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236608', '1005', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236609', '1005', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236610', '1005', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236611', '1005', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236612', '1005', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236613', '1005', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236614', '1005', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236615', '1005', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236616', '1005', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236617', '1005', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236618', '1005', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236619', '1005', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236620', '1005', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236621', '1005', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236622', '1005', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236623', '1005', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236624', '1005', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236625', '1005', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934435223236626', '1005', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:18:22', '2', '2018-10-18 13:51:57');
INSERT INTO `role_menu` VALUES ('1041934483449344000', '1004', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344001', '1004', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344002', '1004', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344003', '1004', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344004', '1004', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344005', '1004', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344006', '1004', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344007', '1004', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344008', '1004', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344009', '1004', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344010', '1004', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344011', '1004', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344012', '1004', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344013', '1004', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344014', '1004', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344015', '1004', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344016', '1004', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344017', '1004', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934483449344018', '1004', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:18:34', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1041934548536553472', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553473', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553474', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553475', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553476', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553477', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553478', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553479', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553480', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553481', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553482', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553483', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553484', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553485', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553486', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553487', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553488', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553489', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1041934548536553490', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1044774494282665984', '1002', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665985', '1002', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665986', '1002', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665987', '1002', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665988', '1002', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665989', '1002', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665990', '1002', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665991', '1002', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665992', '1002', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665993', '1002', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665994', '1002', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665995', '1002', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665996', '1002', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665997', '1002', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665998', '1002', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282665999', '1002', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282666000', '1002', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774494282666001', '1002', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-26 10:23:45', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774660301606912', 'cro2', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606913', 'cro2', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606914', 'cro2', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606915', 'cro2', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606916', 'cro2', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606917', 'cro2', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606918', 'cro2', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606919', 'cro2', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606920', 'cro2', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606921', 'cro2', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606922', 'cro2', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606923', 'cro2', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606924', 'cro2', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606925', 'cro2', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606926', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606927', 'cro2', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606928', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774660301606929', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-26 10:24:25', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1044774980238921728', '1002', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921729', '1002', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921730', '1002', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921731', '1002', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921732', '1002', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921733', '1002', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921734', '1002', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921735', '1002', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921736', '1002', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921737', '1002', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921738', '1002', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921739', '1002', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921740', '1002', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921741', '1002', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921742', '1002', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921743', '1002', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044774980238921744', '1002', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-26 10:25:41', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496832', '1002', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496833', '1002', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496834', '1002', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496835', '1002', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496836', '1002', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496837', '1002', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496838', '1002', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496839', '1002', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496840', '1002', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496841', '1002', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496842', '1002', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496843', '1002', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496844', '1002', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496845', '1002', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496846', '1002', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496847', '1002', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496848', '1002', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1044775133125496849', '1002', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-26 10:26:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052750199163375616', 'cro2', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375617', 'cro2', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375618', 'cro2', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375619', 'cro2', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375620', 'cro2', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375621', 'cro2', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375622', 'cro2', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375623', 'cro2', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375624', 'cro2', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375625', 'cro2', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375626', 'cro2', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375627', 'cro2', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375628', 'cro2', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375629', 'cro2', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375630', 'cro2', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375631', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375632', 'cro2', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375633', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750199163375634', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 10:36:21', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052750277814964224', '5678', 'f538197465f14f9b870f661fd4407549', '1', null, '2', '2018-10-18 10:36:40', '2', '2018-10-18 10:36:40');
INSERT INTO `role_menu` VALUES ('1052750398606725120', '1003', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725121', '1003', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725122', '1003', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725123', '1003', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725124', '1003', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725125', '1003', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725126', '1003', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725127', '1003', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725128', '1003', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725129', '1003', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725130', '1003', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725131', '1003', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725132', '1003', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725133', '1003', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725134', '1003', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725135', '1003', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725136', '1003', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725137', '1003', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725138', '1003', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750398606725139', '1003', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 10:37:09', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052750451836637184', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637185', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637186', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637187', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637188', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637189', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637190', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637191', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637192', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637193', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637194', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637195', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637196', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637197', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637198', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637199', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637200', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637201', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637202', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052750451836637203', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052758830487359488', 'cro2', 'f538197465f14f9b870f661fd4407549', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359489', 'cro2', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359490', 'cro2', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359491', 'cro2', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359492', 'cro2', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359493', 'cro2', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359494', 'cro2', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359495', 'cro2', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359496', 'cro2', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359497', 'cro2', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359498', 'cro2', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359499', 'cro2', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359500', 'cro2', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359501', 'cro2', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359502', 'cro2', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359503', 'cro2', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359504', 'cro2', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359505', 'cro2', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052758830487359506', 'cro2', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-10-18 11:10:39', '2', '2018-10-18 11:10:39');
INSERT INTO `role_menu` VALUES ('1052771236210987008', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987009', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987010', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987011', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987012', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987013', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987014', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987015', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987016', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987017', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987018', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987019', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987020', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987021', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987022', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987023', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987024', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987025', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987026', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052771236210987027', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052799255147368448', '1002', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368449', '1002', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368450', '1002', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368451', '1002', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368452', '1002', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368453', '1002', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368454', '1002', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368455', '1002', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368456', '1002', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368457', '1002', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368458', '1002', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368459', '1002', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368460', '1002', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368461', '1002', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368462', '1002', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368463', '1002', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368464', '1002', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368465', '1002', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799255147368466', '1002', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 13:51:17', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052799378380214272', '1004', 'a0b37036e239423bb5f574ec99b690c7', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378380214273', '1004', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378380214274', '1004', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378380214275', '1004', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378380214276', '1004', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378380214277', '1004', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378380214278', '1004', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378380214279', '1004', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408576', '1004', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408577', '1004', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408578', '1004', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408579', '1004', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408580', '1004', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408581', '1004', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408582', '1004', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408583', '1004', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408584', '1004', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408585', '1004', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799378384408586', '1004', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-10-18 13:51:47', '2', '2018-10-18 13:51:47');
INSERT INTO `role_menu` VALUES ('1052799424404312064', '1005', 'a0b37036e239423bb5f574ec99b690c7', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312065', '1005', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312066', '1005', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312067', '1005', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312068', '1005', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312069', '1005', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312070', '1005', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312071', '1005', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312072', '1005', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312073', '1005', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312074', '1005', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312075', '1005', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312076', '1005', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312077', '1005', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312078', '1005', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312079', '1005', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312080', '1005', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312081', '1005', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799424404312082', '1005', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-10-18 13:51:58', '2', '2018-10-18 13:51:58');
INSERT INTO `role_menu` VALUES ('1052799448328622080', '1001', 'a0b37036e239423bb5f574ec99b690c7', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622081', '1001', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622082', '1001', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622083', '1001', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622084', '1001', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622085', '1001', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622086', '1001', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622087', '1001', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622088', '1001', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622089', '1001', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622090', '1001', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622091', '1001', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622092', '1001', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622093', '1001', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622094', '1001', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622095', '1001', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622096', '1001', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622097', '1001', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799448328622098', '1001', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-10-18 13:52:03', '2', '2018-10-18 13:52:03');
INSERT INTO `role_menu` VALUES ('1052799477818773504', '1003', 'f538197465f14f9b870f661fd4407549', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773505', '1003', 'a0b37036e239423bb5f574ec99b690c7', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773506', '1003', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773507', '1003', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773508', '1003', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773509', '1003', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773510', '1003', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773511', '1003', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773512', '1003', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773513', '1003', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773514', '1003', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773515', '1003', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773516', '1003', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773517', '1003', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773518', '1003', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773519', '1003', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773520', '1003', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773521', '1003', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773522', '1003', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052799477818773523', '1003', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-10-18 13:52:10', '2', '2018-10-18 13:52:10');
INSERT INTO `role_menu` VALUES ('1052820769313837056', '1002', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837057', '1002', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837058', '1002', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837059', '1002', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837060', '1002', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837061', '1002', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837062', '1002', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837063', '1002', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837064', '1002', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837065', '1002', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837066', '1002', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837067', '1002', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837068', '1002', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837069', '1002', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837070', '1002', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837071', '1002', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837072', '1002', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837073', '1002', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820769313837074', '1002', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 15:16:47', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929536', '1002', 'f538197465f14f9b870f661fd4407549', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929537', '1002', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929538', '1002', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929539', '1002', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929540', '1002', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929541', '1002', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929542', '1002', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929543', '1002', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929544', '1002', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929545', '1002', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929546', '1002', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929547', '1002', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929548', '1002', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929549', '1002', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929550', '1002', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929551', '1002', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929552', '1002', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929553', '1002', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052820849508929554', '1002', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-10-18 15:17:06', '2', '2018-10-18 15:17:06');
INSERT INTO `role_menu` VALUES ('1052845948131790848', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790849', '1006', 'b62a2a1a6bf8432e976e8787713cfb6b', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790850', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790851', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790852', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790853', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790854', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790855', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790856', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790857', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790858', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790859', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790860', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790861', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790862', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790863', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790864', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790865', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790866', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790867', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1052845948131790868', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296832', '1006', 'b62a2a1a6bf8432e976e8787713cfb6b', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296833', '1006', 'f538197465f14f9b870f661fd4407549', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296834', '1006', 'a0b37036e239423bb5f574ec99b690c7', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296835', '1006', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296836', '1006', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296837', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296838', '1006', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296839', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296840', '1006', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296841', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296842', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296843', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296844', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296845', '1006', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296846', '1006', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296847', '1006', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296848', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296849', '1006', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296850', '1006', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296851', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');
INSERT INTO `role_menu` VALUES ('1054185601682296852', '1006', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-10-22 09:40:08', '2', '2018-10-22 09:40:08');

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `field_id` char(32) DEFAULT NULL COMMENT '字段ID',
  `dict_data` varchar(64) DEFAULT NULL COMMENT '字典资源',
  `dict_display_chinese` varchar(64) DEFAULT NULL COMMENT '字典中文显示值',
  `dict_display_english` varchar(64) DEFAULT NULL COMMENT '字典英文显示值',
  `dict_real_values` int(11) DEFAULT NULL COMMENT '字典真实的值',
  `dict_sort` int(11) DEFAULT NULL COMMENT '字典排序',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1删除，2正常',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO `sys_dictionary` VALUES ('006031455f054386a7322e068df359d0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶片', 'enteric-coated tablet', '90', '90', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0099779fd2834696a0d0d38aea228ceb', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '膜剂', 'membranes', '152', '152', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('00cdd6a8bfc44d9590d376cbd6b9fcbc', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道片', 'vaginal tablet', '68', '68', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('00fa62ea138f47cf8e728a06424be4af', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '醑', 'spirit', '88', '88', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('02a7758d839c414db51c28b35d7b6f23', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '药品检验报告', '', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('02e7202c723d4f8581fe003ac43907f3', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '舌下片', 'sublingual tablet', '93', '93', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('03cacf34babb45d9a79badfceee87b6a', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经鼻给药', 'Nasal', '45', '45', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('06068107671941c0b61317b56fe01b27', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '体内诊断试剂', 'In vivo diagnostic reagents', '141', '141', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('06fee16682114ed9ac90d741ffd38afc', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', 'IIb期', 'phase IIb clinical trials', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('07314182c80244889ab53ff60efb55fd', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '静脉给药', 'Intravenous (not otherwise specified) ', '42', '42', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('07b3efb9625f4eb3ab3c95215eaa65e5', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释小丸', 'sustained-release pellets', '112', '112', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('07f634935c354c1aa962763a95018cb8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释片', 'sustained-release tablet', '78', '78', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0839163b21634d31bda2132fc761d636', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服液', 'oral liquid', '34', '34', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('090fc6d67f8449ac92d3fb09fe913e54', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '不良事件', 'Adverse Event', '4', '4', 'AE', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0a85cf6e8c7c47e69896d1dd3c458541', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '含服', 'Buccal', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0ad4f48effeb4113b3d1a88d7799d9ef', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '胶囊', 'capsule', '129', '129', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0be54972b902404e9e20555001f96852', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '关节内给药', 'Periarticular', '52', '52', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0e133694d50242febd0e5fb858b6eff4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '油剂', 'oiling agent', '99', '99', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0e4b91fa76134bc4851add5efc09f264', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '膀胱内给药', 'Intravesical', '43', '43', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0ec80cc0d679490c98f07cae2f2a54e4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '熨剂', 'compression formula', '94', '94', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0fbeb3f8d9a44fbb9a99d7abd9ec362a', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '表面麻醉', '', '77', '77', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0fbfe68326514f68aeb6e6bc9bea583b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '气体', 'gaseous fluid', '14', '14', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('11dbe5e715dd41ee92908b3028fb0e85', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '冠动脉给药', 'Intracoronary', '22', '22', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('126752e25e0548ff8c41d3a425585d41', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '吸入剂', 'inhalant', '105', '105', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('129871899e824d2687b595d69b65783d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道栓', 'vaginal plug', '98', '98', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('14d3543e827f40aeab0f961b5ae1f2ed', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬注射剂', 'acetate suspension for injection', '104', '104', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('159e1147d25241da9f2efdf30367fa73', '8a81497c53c2466f82473409dea6aa91', 'province', '山西省', 'Shanxi', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('15e833306f9a4520a134b8bac0f3e01c', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '术中栓塞', '', '86', '86', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('15fbdeecbbb44b6e9e686330577e4dae', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经胎盘给药', 'Transplacental', '64', '64', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('16240ab0373048908b412f2ed49fd3a2', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '质疑问卷-解答', '', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('16a90567c5d04115afa3c77884fa1541', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬滴剂', 'suspend drops', '96', '96', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('170250cf89c24aec8c20b203d92d28d2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '管道喂养', 'Parenteral', '51', '51', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1728dd3296ff429984b695e979282df5', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '单项选择', '', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('17ad0e1fe1d74f5c9639f9ec40d1a64d', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'OT_country', '美国', 'a', '1', '1', null, '2', null, 'ybb', '2018-09-14 09:55:18', null, null);
INSERT INTO `sys_dictionary` VALUES ('17aee99046c74cc3b63c78b4ce24eadb', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶微粒胶囊', 'enteric-coated microsomes capsule', '153', '153', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('181faab1bfdc4cb5bb7865b3c7d8885c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '水煎剂', 'water decoction', '110', '110', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('183fab5c0d5f4d6ab6e5d257846b55a2', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '下拉录入', '', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('185e5fdc56cc429b8b72c3889fcce462', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '放松放松', 'sfs', '6', '6', null, '2', null, 'ybb', '2018-09-26 09:33:30', null, null);
INSERT INTO `sys_dictionary` VALUES ('1887ee180ae84534b0045d946c7c9f06', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴剂', 'drops', '15', '15', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1953fcb740b2489eac9ed790f83e228f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '喷雾剂', 'spray', '150', '150', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('195a218341fb449282cce919939bb7f7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '茶剂', 'medicinal tea', '154', '154', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1960a93aaabe4755babf04848613779e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '喷剂', 'spray', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('19afd2be9de64319b6906b4bd8870b6b', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '新药3类', 'New drug class 3', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1a860ef9e1724b90938518f1f0ecc777', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '颈丛阻滞', '', '76', '76', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1b88e007839440dabb9d213f015ec915', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '软膏', 'ointment', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1ba55ed2839a41b4aa4888b47f37be91', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释丸剂', 'sustain-released bolus', '10', '10', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1bd9c0af163a477d941cb9c2681db3c4', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', 'ewrwr', 'sfss', '6', '6', null, '1', null, 'ybb', '2018-09-18 11:39:53', 'ybb', '2018-09-18 16:45:12');
INSERT INTO `sys_dictionary` VALUES ('1cbafa6f0f874605909ff88525c54b2d', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', 'IIa期', 'phase IIa clinical trials', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1cc0401183f241ee8787ea7a5606e4f2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '羊膜腔外给药', 'Extra-amniotic', '9', '9', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1d543dc5dfe84946936d00f450502aad', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '吸入混悬液', 'Inhalation suspension liquid', '160', '160', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1e2db2aeab0f4e489823df1d10e0ea4d', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '所属', 'sa', '6', '6', null, '1', null, 'ybb', '2018-09-18 17:37:49', 'ybb', '2018-09-18 17:37:54');
INSERT INTO `sys_dictionary` VALUES ('1e34a8504e7f47e2a322dac7e50116db', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经淋巴管内灌注', 'Intralymphatic', '27', '27', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1fdbf07cd6d242fb988178bb58f9374f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '植入剂', 'implant', '62', '62', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('200921568e954cb1a6f88f06f2948d46', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '蛋糕店', 'dgdg', '9', '6', null, '2', null, 'ybb', '2018-09-25 10:06:05', 'ybb', '2018-09-25 11:26:19');
INSERT INTO `sys_dictionary` VALUES ('20d6f9a450624bb8afd0fbbd2d62d54e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释凝胶', 'sustained-release gel', '73', '73', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2102abdc674b4f6ba2bb0d8df079a51f', '8a81497c53c2466f82473409dea6aa91', 'province', '甘肃省', 'Gansu', '25', '25', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('21e0d496ac61444ab53001ff988bac33', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '双释放胶囊', 'double release capsules', '23', '23', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('23035c5331b841c98f9b3909485fea24', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '搽剂', 'liniment', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('23aad6119e334d048f1f120e63bd7926', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '球后注射', '', '80', '80', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('23b621d9eeec4f18bc4660b51d079666', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '药物信息', 'Drug Information', '3', '3', 'DI', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('24348f81d450490d84f2adc0018b56b7', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intracorneal', '21', '21', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2481026af3c34afc953546e2e91aaf9e', '689305baa7d748d88aa73836f1c9c9b8', 'mailbox_setting', 'Exchange', 'Exchange', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('249d309c311a487da6c9e553872fcfb5', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intracervical', '19', '19', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('25280612ab7c4424a46231033f078989', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', '针对常见疾病的探索性研究', 'exploratory research on common diseases', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('264d0578fef143bdb83cbcccde2d9484', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '水剂', 'water aqua', '123', '123', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('268b438728394578b272c5560843fafc', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '涂剂', 'lotion', '101', '101', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('27b3c50e08424a028e136cb078e5781a', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '泡腾片', 'effervescent tablets', '139', '139', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('27bef430c4164c4faf5351cb25449914', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '患者信息', 'Patient Information', '2', '2', 'PI', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('28072e1f9f24462fa45ed81c4b8a511d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '洗剂', 'lotion', '41', '41', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2872c54b8ca2435c83757477d41f6752', '8a81497c53c2466f82473409dea6aa91', 'province', '广西壮族自治区', 'Guangxi', '29', '29', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('288a2b0d3cc4439d994c80b2868f91f2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '滑膜内给药', 'Intrasynovial', '35', '35', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('289088e0a7c9411fb91cc1b21f5ba581', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '颗粒', 'granule', '133', '133', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('29029d1d0efe42849c455749809772bd', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '粉剂', 'pulveres', '71', '71', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2b2fea065a114332b3d53f283d0ec038', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '划痕剂', 'nick agent', '26', '26', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2b3912eff8d44b4f9c6f16e816b9acbe', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释微粒', 'delay release', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2bd983ed18134af5ac6c26b0d09c7719', '79ee4f58da164d6795029d8012094b04', 'drug-class', '预防用生物制品', 'Vacine', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2bfbc28961fa4e649851cfdb5e31b79b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肿瘤内注射', 'Intratumor', '36', '36', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2d124aee39ce44738b4c2095e670f137', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '新药6类', 'New drug class 6', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2d357d03807f48a69d6bc19bd0fafdf1', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '浸膏片', 'extract tablets', '43', '43', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2d77313b19fa460a97ba0a2c0a9d3bf2', '8a81497c53c2466f82473409dea6aa91', 'province', '江苏省', 'Jiangsu', '10', '10', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2d8ca8340db9497382918249765b6a7f', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '阴道给药', 'Vaginal', '67', '67', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2ec4fc6a860b494394310e1a3cd30593', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道灌注液', 'vagina perfusate', '146', '146', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2ed2677f0dab4030a1f52acee7054f7d', 'b1dbb4b46c6443d68eca08727b9463ea', 'company_info_type', '药企', 'Pharmaceutical Company', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2f1063b4bc6b45729c7fd9c6f23df357', '8a81497c53c2466f82473409dea6aa91', 'province', '浙江省', 'Zhejiang', '11', '11', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2f55d551d4ed4e7f9fd4135671808a83', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '双释放肠溶胶囊', 'dual release enteric-coated capsules', '145', '145', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2f765872beac4faea1cf09add787c860', '8a81497c53c2466f82473409dea6aa91', 'province', '北京市', 'Beijing', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2f81e5ed2d534e22891913ce61d35d08', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '3', '3', '3', '1', null, '1', null, 'ybb', '2018-09-18 11:38:34', 'ybb', '2018-09-18 16:45:06');
INSERT INTO `sys_dictionary` VALUES ('3015b3c4353149ffb4f65a8dcc85a9a8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '泡沫剂', 'foaming agent', '80', '80', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('31be8f966e004921996d2d1f425145e8', '8a81497c53c2466f82473409dea6aa91', 'province', '山东省', 'Shandong', '15', '15', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('334486c8b4574ede9aad9fe7d5be7ab7', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Cutaneous', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('34b9eae2f2d04c38919820ad911ab48d', '8a81497c53c2466f82473409dea6aa91', 'province', '新疆维吾尔自治区', 'Sinkiang', '32', '32', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('34c1383efcb54356bf17b3ccfec08954', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释透皮贴', 'slow-release transdermal stick', '115', '115', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('34e847493c014494a9da0855ab672373', '8a81497c53c2466f82473409dea6aa91', 'province', '四川省', 'Sichuan', '21', '21', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3528a9ab50c04a4ebdc02eef22b8f5eb', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', 'Ⅲ 期', 'Ⅲexpect', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('359c54147b9441d89f587ff0d3aa7284', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '灸剂', 'moxa-preparation', '57', '57', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('364e6cfaa16e4f8c94062c3c023580cf', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '片剂', 'tablet', '70', '70', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3653f910f12d49dfbf09a6fc60646412', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '丹剂', 'sublimed preparation', '75', '75', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3882f918bfa44e9ea2bbe459c0a6e067', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '尿道给药', 'Urethral', '66', '66', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('389974be115a4fcf8d94643cd28ee034', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '敷料', 'surgical dressing', '100', '100', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3a778622e032450c90ee7563b5b10f4c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '外用凝胶', 'gels ', '126', '126', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3ab769a8310b47159fd495e7f34dab88', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '外用', '', '78', '78', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3bc790cbc0504f2bbe76db8b2e769c62', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '多项选择', '', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3c96674ac35c41ea9bb000b3384ab84d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经眼给药', 'Ophthalmic', '47', '47', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3cf234be0b4b4f3fa1ebf8a61c55ca0d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道软胶囊', 'vaginal soft capsule', '54', '54', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3cf5c9137f9a43c690fac2faade162ff', '8a81497c53c2466f82473409dea6aa91', 'province', '天津市', 'Tianjin', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3d356215c2634781bd2bec007e5250fa', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', 'Ⅳ期', 'Ⅳexpect', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3def1547a85649ffac7b85e045131d80', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '局部浸润麻醉', 'Iontophoresis', '44', '44', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3e427901ede445e2adebb36556ca3c9b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '酊剂', 'tincture', '48', '48', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3ec6d314be6c477bb25366ab8b712534', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '分散片', 'dispersible tablet', '132', '132', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3f0f4d66bdb5435e87838d75621fb606', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', 'Ia期', 'phase Ia clinical trials', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3f97073c4d1d48efabcfdaab8059faa6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '露剂', 'Distillate medicinal water', '16', '16', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3fce0b91e513493298b357248f8e7965', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '植入给药', '', '70', '70', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3fe2cd388fd5424e876396f81d4d4d08', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '皮下给药', 'Subcutaneous', '58', '58', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('40204a3f153149c1a20ff7d3db6a695f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '乳胶', 'latex', '50', '50', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4118b7b710844d9799edde00dc1f90e6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '试剂', 'reagent', '74', '74', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('42220316b8bd48d98f35b5d2e3c33337', '1b7d555940284fe6b0b0bf527042c02d', 'research-design', '开放', 'Open Label', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('426de0eda00e4d31ac0470a518fe1b08', '8a81497c53c2466f82473409dea6aa91', 'province', '安徽省', 'Anhui', '12', '12', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('42fb4cdf5a284e3d9b9a598f7aade897', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '漱口', '', '71', '71', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('457ea0b3c2d9405a8bc3414ef7a51aa0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '胶浆剂', 'mucilage', '19', '19', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('45dd93b736144a259736d117394dd8de', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '明胶纤维', 'gelatin fibre', '84', '84', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('45fd170009934445966b3d16447ed668', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '含漱液', 'gargle', '138', '138', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4692a31bba374d12a8ba635ba6f16d97', '1b7d555940284fe6b0b0bf527042c02d', 'research-design', '双盲', 'Double Blinded', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('46f9b4cfb72c49eeaf082f5d4452aa9f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '煎膏剂', 'soft extract', '67', '67', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('472530752d3f4b2db1e3d942565ebf20', '8a81497c53c2466f82473409dea6aa91', 'province', '广东省', 'Guangdong', '19', '19', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4830190e8ece4fcda913ef850cb6fdfb', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '细粒', 'fine stuff', '122', '122', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('48511434e9774299b25b58856f1dc47e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '糖浆', 'syrup', '136', '136', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4b19e47f696f4a71b2aed23adf9f', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '病例', '', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4d91dcfd6be944bd8bae79613a0a7f2d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '病灶内给药', 'Intralesional', '26', '26', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('50647e82c8ce4f8199598ad9ce2918a9', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'country', '中国', 'china', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('50843a86aae0473998d18d88c467383f', '8a81497c53c2466f82473409dea6aa91', 'province', '海南省', 'Hainan', '20', '20', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('53679fb12ad44d79981243692893a225', '8a81497c53c2466f82473409dea6aa91', 'province', '青海省', 'Qinghai', '26', '26', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('53d856949fc84185a2095b44374ba8b4', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '单行文本', '', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('53ff4d8e10604541a4a2c80b10407797', '8a81497c53c2466f82473409dea6aa91', 'province', '台湾省', 'Taiwan', '27', '27', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('54a26c97704245e6bfc2ff877a9e2e32', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', '针对特殊人群的探索性研究', 'exploratory research on special populations', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('559f31dc443145d396d49476d8d04698', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '下拉选择', '', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('56253fd1b4d14e338c28380819e939c0', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '包膜内给药', 'Intrathecal', '37', '37', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5642f1af6ba849768f065512529fbfaa', '8a81497c53c2466f82473409dea6aa91', 'province', '上海市', 'Shanghai', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5826f7ecb27b445281daa0921ebd0a7b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释片', 'controlled-release tablet', '37', '37', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5833a82b558b4b90bd7d22faab8a', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '现场调查报告', '', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5b1c4760614743be8d7fe0b9d32ff592', 'c5f5c4ed3e0c41798f5676e1940bf175', 'report-regulations', '其他', 'Other', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `sys_dictionary` VALUES ('5b6652946b74475fb1418073d9d8d278', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', 'Ⅰ期', 'Ⅰexpect', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5b7d64ca72794e3188386b427e3fbbeb', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '消毒液', 'disinfectant', '121', '121', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5bf9093db07c482a9823fa29a33680db', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '灌洗液', 'graft caval effluent ', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5d03588baaec4e9fabda79471350edd0', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '气管/支气管内给药', 'Endotracheal', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5d0a2ecf7dc048a6bd634ac00542fc33', '8a81497c53c2466f82473409dea6aa91', 'province', '湖北省', 'Hubei', '17', '17', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5d6658b2fa96473a9b371a79d760704c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口胶', 'chewing gum', '162', '162', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5ee7419ae01f43e39cc2b87efe80dace', '8a81497c53c2466f82473409dea6aa91', 'province', '宁夏回族自治区', 'Ningxia', '31', '31', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5fab6b8f69144143afde0b554a19da69', '8a81497c53c2466f82473409dea6aa91', 'province', '澳门特别行政区', 'Macau', '34', '34', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5fc712ab210843b3a26531386ecb1388', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '乳膏', 'emulsifiable paste', '72', '72', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6002a57610f4420aac375385793cedf0', '8a81497c53c2466f82473409dea6aa91', 'province', '黑龙江省', 'Heilongjiang', '9', '9', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6033a46838b44b0497a30059512dd8f8', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肝动脉灌注', '', '73', '73', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('60eac979b16f4866acf775b0659a9b47', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '胸膜腔内注射', 'Intrapleural', '34', '34', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('61268781f6374e05a828d7596a0d4dfc', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '基本信息', 'Basic Information', '1', '1', 'BI', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('639f1dbc265043d6b028bd0bd534bd56', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '眼用凝胶', 'eye gel', '113', '113', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('64615863889c46c09733419e6516caf7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '流浸膏', 'liquid extract', '116', '116', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('64ced7bc8b4d474f953b044f6d590e53', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '微丸', 'pellet', '24', '24', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('662fbfd411d2448ea38c5de76325ca54', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '泡腾颗粒', 'effervescent granules', '49', '49', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('663a95de3aef463eb30b5d6a8618d940', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', '观察性研究', 'observation study', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('669d13e45e8b4e68b66f74e1aae4ff3b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释透皮贴', 'controlled release transdermal stick', '59', '59', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('66b21e2d9d904c13b8fdc8d4df7ec688', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '其他', 'Other', '7', '7', 'OT', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('671e1971a47348d78698f10cc61959b0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '软胶囊', 'soft capsule', '114', '114', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('67c177ac4fda48ff88803e888853a0cf', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '其它', 'newDrug', '5', '2', null, '2', null, 'ybb', '2018-09-25 09:55:50', 'ybb', '2018-09-25 10:06:53');
INSERT INTO `sys_dictionary` VALUES ('6905cc9a68cd45fc8dbb22053a20875b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴眼液', 'eye drops', '155', '155', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('693a2fcf187c4b06b5e7ada04c6d79e8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '染发剂', 'hair dyes', '142', '142', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('699e5b819ea64334a21a6e51d6a82b50', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '贴剂', 'patch', '44', '44', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('69d92dd1768840b2a2d8eb0a0f231477', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '涂膜', 'coating', '89', '89', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6b232efd7ad74e8599e09a9dd35a17a7', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经耳给药', 'Auricular (otic)', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6b9a3b6db1734358afb98052e32e019d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '吸入给药', 'Respiratory (inhalation)', '55', '55', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6d57ea0dbcce409aa40dc54cec5c0dd1', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '舌下给药', 'Sublingual', '60', '60', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6d7f8381c12b4f989c4180a2f7261d61', '8a81497c53c2466f82473409dea6aa91', 'province', '福建省', 'Fujian', '13', '13', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6d89644ce5454fa3a2294c94bb134583', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '21', '212', '21', '212', null, '1', null, 'ybb', '2018-09-25 11:06:56', 'ybb', '2018-09-25 11:06:59');
INSERT INTO `sys_dictionary` VALUES ('6d8bc9b51a534cb19f65e8ff790903f8', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '电话记录', '', '10', '10', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6e64022bd75745419647b1257179a621', '689305baa7d748d88aa73836f1c9c9b8', 'mailbox_setting', 'POP3', 'POP3', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6e7b3174a3fb4a7288d8ff8712bbb01f', '8a81497c53c2466f82473409dea6aa91', 'province', '云南省', 'Yunnan', '23', '23', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6fd02cdf01ba4093a4833c8cf6ca524e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '凝胶', 'hydrogel ', '97', '97', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('71700d62dfe141c79bf29a89b91d10ac', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '萨', 'sa', '3', '3', null, '1', null, 'ybb', '2018-09-18 17:38:18', 'ybb', '2018-09-18 17:38:30');
INSERT INTO `sys_dictionary` VALUES ('71af632d3bea4c4481ef7f3490a4c8a0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服乳', 'oral emulsion', '51', '51', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('71bb6db2b35b486d9e5f3fb56f6628b1', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '橡胶膏', 'rubber', '66', '66', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('73738572a4cf417cac436d1f10314804', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '鼻甲注射', '', '72', '72', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('745da395a8914d36870deab583e0d680', 'c5f5c4ed3e0c41798f5676e1940bf175', 'report-regulations', '一般', 'General', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `sys_dictionary` VALUES ('74c68678693b4cf093e9efec4e50e594', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intrameningeal', '29', '29', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('74d0d87ec6f44f29a62d5ea82c4077c4', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '灌注', '', '68', '68', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7602e5745bef4f899ddd382a6c26cbe4', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '心包内给药', 'Intrapericardial', '32', '32', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('76b9745f78a24b4794afb1f3abf9bcb4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬注射液', 'suspension injection', '29', '29', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('76dee0424d914f8a951e604528a49da9', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '密码', '', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('77618b99db144406a221d5e3a43ed2a2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '椎管给药', '', '87', '87', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('787a643568e5402ba12d8c5146c8496b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '粉雾剂', 'powder ', '108', '108', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('796b951d82a84ead9fb131682e7f165e', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'BI_country', '我', '12', '21212', '1', null, '2', null, 'ybb', '2018-09-21 14:30:55', null, null);
INSERT INTO `sys_dictionary` VALUES ('79a0b0f3c33443e096b1b4b4fbd25541', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服冻干粉', 'oral lyophilized powder', '156', '156', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('79b7d60da9dc4dd681c53d2792fbdd62', 'c5f5c4ed3e0c41798f5676e1940bf175', 'report-regulations', '严重', 'Serious', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `sys_dictionary` VALUES ('7c129f232ce04df19991aa8f57f185d3', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '局部注射', '', '82', '82', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7c1c23edf70647c5904adb87d46e9aa2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经皮给药', 'Transdermal', '62', '62', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7cfa0dc48acf4c0eb1f24ae421d03388', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '化学药', 'Chemicals', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7df6dc4249874c43afcbd5a32ad8a4e3', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '外用冻干制剂', 'freeze-dried preparation for external use ', '109', '109', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7e59d9287ff841e0bdd17d2a489245ac', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '尸检报告', '', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7ea84c41278d4704a17b19bb4a954002', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经乳房给药', 'Transmammary', '63', '63', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7f01de8c78bb439bb9de6010d081c1f7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '合剂', 'mixture', '79', '79', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7fc0d24d3496400d958da82928670c9a', '79ee4f58da164d6795029d8012094b04', 'drug-class', '治疗用生物制品', 'Biopharmaceutical', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8018986098094351bcda93ca9d3360e4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴鼻液', 'nasal drops', '102', '102', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('80b1382a8ad34218a547252ccac58b43', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '膏剂', 'paste', '55', '55', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8157c9f2ff394fefa4d308cc29bc6639', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '造瘘管注入', '', '75', '75', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('835d6a4de53946019e37d8ab046293fb', '5515eba38a1541c59820b5440acbb5e1', 'drug_info_type', '进口', '', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8587c6657fe848209991c138522d949d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '羊膜腔内给药', 'Intra-amniotic', '12', '12', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('86606fe59fb04a6daa4048aed0820be7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '胶剂', 'colloids', '143', '143', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('866c12e14bf248f999c91359f7ef5aff', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '微粒', 'particle', '30', '30', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('86ece8f32a454906b970a5120910fd84', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '直肠给药', 'Rectal', '54', '54', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('871052fb050941c4a32198e2983ed155', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '酏', 'elixir', '144', '144', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('898f3cd86b31470eb359262eedc876f5', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '速释片', 'rapid-release tablets', '53', '53', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('89ddaf4edb6145f3a70b6428672c314c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '雾化溶液', 'nebulising solution', '63', '63', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8a03b5efb0e34d4da473982f87e260f1', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '骶管注射', '', '79', '79', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8b14fcc927f44060b3956f641ed9711b', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '2', '2', '2', '2', null, '1', null, 'ybb', '2018-09-18 17:42:28', 'ybb', '2018-09-18 17:42:30');
INSERT INTO `sys_dictionary` VALUES ('8c3f486df0394bea9f6d1f0146965171', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '中药材', 'traditional chinese medicine', '106', '106', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8cd358aaeb1e42568c2ddc1490d6f532', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '报告评价', 'Report Evaluation', '5', '5', 'RE', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8f294ac476a64df0879dca03058e106d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释干混悬剂', 'sustained release suspension', '27', '27', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8f5176e58ea94629ac10696f6ca2bf76', '8a81497c53c2466f82473409dea6aa91', 'province', '陕西省', 'Shanxi', '24', '24', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8f89ddea3e0047c5a4efb5d66d05b58b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '泵内注射', '', '83', '83', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8fe3725d0bf34b2291d4ee528b678201', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶胶丸', 'enteric-coated soft capsules', '83', '83', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('91b84a1c73504025957b5a870be96e6f', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '关节内给药', 'Intra-articular', '14', '14', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('91ec8ff89b994b33887dfa28394abbfd', '79ee4f58da164d6795029d8012094b04', 'drug-class', '化学药', 'Chemicals', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9202b02ce85a42b685e7b16e0d99541f', '8a81497c53c2466f82473409dea6aa91', 'province', '香港特别行政区', 'HongKong', '33', '33', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9259830e73694d3ea99265536ebbbdca', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', '生物等效性试验', 'bioequivalence test', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('92acd83bfea04ba899c7e296077b50bc', '8a81497c53c2466f82473409dea6aa91', 'province', '辽宁省', 'Liaoning', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('92b2a2f0d22f45b183f3a96ef13e2ec4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '洗液', 'washing liquor', '32', '32', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('92d48b8b2d0d4859aeabe877ccfaa566', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '消毒剂', 'sanitizer', '28', '28', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('92da23dde8464554af98fe3c3cc42356', 'b1dbb4b46c6443d68eca08727b9463ea', 'company_info_type', 'CRO公司', 'CRO', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9396d45f59784853be3465170de54375', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '口腔/咽喉给药', 'Oropharingeal', '49', '49', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('940d471630404de786182eb4ecd7af3e', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '皮内注射', 'Intradermal', '23', '23', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('942b685b53214be38b26758f6b88e1da', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '鼻饲', '', '69', '69', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('95202b30aaa648a6958c15ef4e5c8889', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '湿敷剂', 'wet packing', '45', '45', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('956e4e66a01241adae8ffcacea8c64ec', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '气雾剂', 'aerosol', '92', '92', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('95fff34d1a7c46b282a30be7194eff89', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '121', '21', '34', '5', null, '1', null, 'ybb', '2018-09-25 10:22:12', 'ybb', '2018-09-25 10:26:35');
INSERT INTO `sys_dictionary` VALUES ('96a90b9d0b87463087ea153684bccff3', 'c5f5c4ed3e0c41798f5676e1940bf175', 'report-regulations', '死亡', 'Death', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `sys_dictionary` VALUES ('971631501ba64e5fa1a37fcc608b3435', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '大蜜丸', 'big honeyed pills', '130', '130', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('978ae2c6dbae4b7181f19d6e1f779dbd', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '注射剂', 'injection', '39', '39', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9963c101efa34a4298986e968b371193', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释胶囊', 'controlled-release pellet', '11', '11', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9c50bf44f32240aaaaa7ae8ae1fd8768', '8a81497c53c2466f82473409dea6aa91', 'province', '河南省', 'Henan', '16', '16', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9d29d72b984949dd9071df8064ea6608', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '撒币', 'sb', '7', '7', null, '1', null, 'ybb', '2018-09-21 15:12:55', 'ybb', '2018-09-21 17:47:56');
INSERT INTO `sys_dictionary` VALUES ('9e1ad5988d684ec2965d3a9ce4c078f2', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '多行文本', '', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9f3cfbdfa24f412582f173b6567801c6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '干混悬剂', 'dry suspension', '18', '18', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9fa1825c571c43a8982dfd157bd38242', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶缓释片', 'enteric-coated and sustained-release tablets', '58', '58', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9fb756fe2bc44d6a84b90fe12caf820c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道泡腾胶囊', 'vaginal effervescent capsule', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9fb7a4b867184b1188788c6eb1758d70', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '脊髓内给药', 'Intradiscal (intraspinal)', '24', '24', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a02c0c58b80b4144adcf2431198d90c5', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '粉针剂', 'powder-injection', '120', '120', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a0acaabc665442f09045156ff4580dd6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '眼膏', 'eye ointment ', '124', '124', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a0f5298b05b54d369ccb7b56209cd3c7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '浓缩丸', 'condensed pill', '81', '81', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a11396ca2c1f4383821020106dd6bf58', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '冲洗液', 'Irrigation solution', '119', '119', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a18ea73a827a4c68aed5a4a9eb190534', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肌内注射', 'Intramuscular', '30', '30', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a27a4dbfcabc4e3386d7daed4198720e', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '牙科给药', 'Dental', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a374e0eb13f841ab939cdff6ce2a41e7', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '新药1类', 'New drug class 1', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a385eb18055f416b9499970075791545', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '涂膜剂', 'liniment', '61', '61', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a55e7a1c1ef14dd48daf024c61a8b9e4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道药膜', 'medical film for vaginal use', '151', '151', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a97d423cd44c413cb559af22a95a52b7', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '日期', '', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('aa1690787bd84ebba57ad8e0f6421abf', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服缓释混悬液', 'oral sustained-release suspension liquid', '35', '35', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ab3251c2029549108ceb4fb4b9917f28', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '鞘内给药', '', '88', '88', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ac1fbca02471466e939e95e6ed9fc403', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '真皮下给药', 'Subdermal', '59', '59', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('acac1f8cf94f4cf0a2471bfc16755626', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '子宫颈给药', 'Endocervical', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ad80d8fa8625428da4c1e32fba746cae', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '新药5类', 'New drug class 5', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('adbd88f1c80f44adb52c01b92f1556cb', '5515eba38a1541c59820b5440acbb5e1', 'drug_info_type', '国产', '', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('aeb688ca30614fb8b89dde70d42f4074', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intracavernous', '17', '17', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b11969dbe7594455ad4bf42030586ac0', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肾内给药', 'Intracisternal', '20', '20', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b1457da8408f4eaf95b438bc0299a05e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬颗粒', 'suspended granules', '46', '46', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b1c9313c5141463aa89ddd91b870681e', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Endosinusial', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b1eeb16359e14a36b7f14f789628d619', '8a81497c53c2466f82473409dea6aa91', 'province', '河北省', 'Hebei', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b2c09bc2239e4312913dfb591af6cef0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '锭剂', 'lozenge', '95', '95', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b308bb90c17441b594e96b720ad7b72d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '心内注射', 'Intracardiac', '16', '16', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b3c48d7d7598463a98349d89cd713747', '8a81497c53c2466f82473409dea6aa91', 'province', '重庆市', 'Chongqing', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b80fb8c0e8664523b9d2619600c6c014', '79ee4f58da164d6795029d8012094b04', 'drug-class', '中药', 'Traditional Chinese Medicine', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b8451a77d47641c18a34bdd82d20913e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '干糖浆', 'dry syrup', '125', '125', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b92c935621a0416591d1b672b8f16482', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '洗发剂', 'shampoo', '38', '38', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b95c2713a653464093c294388bc53a9c', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '口服', 'Oral', '48', '48', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ba7447b712cc4874ab5f958942cbd472', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intra corpus cavernosum', '11', '11', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bb43f25f26484b1795c88b72a2fc007d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '溶液', 'solution', '87', '87', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bb502b227f854e9093f06410a335ad5c', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '胜多负少', 'gsf', '6', '6', null, '1', null, 'ybb', '2018-09-25 10:00:05', 'ybb', '2018-09-25 10:05:35');
INSERT INTO `sys_dictionary` VALUES ('bc7b8eda1c4a4937a27e8b34fc864b4f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶颗粒', 'enteric coated granules ', '60', '60', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bd6702e2c36c48738b23c2f6a7e2d872', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '蛛网膜下腔给药', 'Intracerebral', '18', '18', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('be9cab5c08714a39af90fa1b6d9d60d9', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '硬膏', 'plaster', '47', '47', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bec377a0791a4a10986d7df79ca90f45', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释混悬液', 'sustained release suspension', '31', '31', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bf4897cb523a4b349a1645e40359d01c', '8a81497c53c2466f82473409dea6aa91', 'province', '贵州省', 'Guizhou', '22', '22', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bf768add9fe84d858fa159901cc4a740', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '注射液', 'Injection', '20', '20', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bfa8cc629f5b419c9de1bf596f511606', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '冲洗', '', '84', '84', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c02d4a3136b3491da0cc82b276defd8d', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '爽肤水', 'ssfs', '8', '5', null, '1', null, 'ybb', '2018-09-21 14:46:23', 'ybb', '2018-09-21 17:47:58');
INSERT INTO `sys_dictionary` VALUES ('c0447c66b0d14be2b1acea2c649cc77f', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '预防用生物制品', 'Preventive Biological Products ', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c10cddcab2ce4aa0bdf387a944880b43', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '外用片', 'tablet', '85', '85', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c2f6385bff604d9c974faa4009cb0d7b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '硬膜外给药', 'Epidural', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c3e8f3d033054b83846207921953014b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '栓剂', 'suppository', '117', '117', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c43cf03b139848ecaf40662e4688e10b', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', 'Ib期', 'phase Ib clinical trials', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c54cf46e501443848670e8848972c47d', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '临床前药物', 'Preclinical drug', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c5bedc3a300e48e3a49f0a4a01e12b5e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '灌肠剂', 'enema', '128', '128', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c633ee5b31b24198bfa817474514cbe8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '冻干制剂', 'lyophilized formulation', '36', '36', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c65e49551f294122941c01d13199b2a6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '含片', 'lozenge', '135', '135', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c6f7366f531349c193cee74736c7e635', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '巴布膏', 'cataplasm', '134', '134', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c758be0bb26945eaa648905d2b7308c8', '8a81497c53c2466f82473409dea6aa91', 'province', '江西省', 'Jiangxi', '14', '14', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c82d40debec04e61b10fbd71a48ecd0b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '眼球内给药', 'Retrobulbar', '56', '56', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c89d54e7471944e9b6e3f93435db8e98', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道泡腾片', 'vaginal effervescent tablets', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c94e0694566d4263b2277ec8b4349dbe', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '浸膏', 'extract', '82', '82', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c9c8f3fe570b4cfb936284b059004243', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶胶囊', 'capsulae enterosolubilis', '111', '111', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ca1a6b17ed984c9eb58e62467b2c9ae4', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '前房内注射', '', '85', '85', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cad6ae30dec543049d1d3c589bdcf52b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服溶液', 'oral solution', '158', '158', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cbae31f48d564aed9841911c85c2607d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '咀嚼胶', 'chewing-gum', '21', '21', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cbc24a3bd0d24cedbce92e0a7165721b', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '中药', 'Traditional Chinese Medicine', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cc9a4bdf0a21421ab1ff9c03434bcf63', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', 'dfg', '电饭锅', '8456', '4', null, '1', null, 'ybb', '2018-09-21 16:55:18', 'ybb', '2018-09-21 17:47:59');
INSERT INTO `sys_dictionary` VALUES ('ccc137d698fd4df4ac390d75311feb7b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肝内给药', 'Intrahepatic', '25', '25', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cf642d6f2b5643f396a91592cf50d2b0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬剂', 'suspension', '148', '148', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cfd5e2a61e434c168aa8ecf3f3d017df', '8a81497c53c2466f82473409dea6aa91', 'province', '吉林省', 'Jilin', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d0180498425a42ae934f56d5b0dcadd6', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '胸腔内给药', 'Intrathoracic', '38', '38', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d06db8a553c342e6a3bee97022f64dc7', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '骨髓内给药', 'Intramedullar (bone marrow)', '28', '28', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d1cf8fb10c644640b0b992aa4609ba98', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '咀嚼片', 'chewable tablet', '25', '25', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d2950a6a30cc4a7eae063349b12c8b67', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '静脉滴注', 'Intravenous drip', '41', '41', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d3b46234abbc46d789fbf1162fc02d76', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口腔贴片', 'buccal tablets', '137', '137', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d40f17b224854d70aa8dd2fc3054c602', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '封闭', 'Occlusive dressing technique', '46', '46', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d43e99309d0242f1ab4356036abb8d04', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', 'Ⅱ期', 'Ⅱexpect', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d459b60fb629472f958ed72b5e8ecf19', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '臂丛麻醉', '', '74', '74', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d4c4727fe7224f6a843796870e06b4ed', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '鼻用喷雾剂', 'nasal spray', '118', '118', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d554b66365ba4d1c92218f8fafa326e3', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '吸入溶液', 'Inhalation solution', '13', '13', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d610d741bfa44b57a5dad72b843f8e44', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶缓释胶囊', 'enteric sustained-release capsules', '157', '157', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d6135ceafb5b4cbd913760113f2b593c', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '动脉给药', 'Intra-arterial', '13', '13', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d79d8bb71eed4177927e7962c49124c8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '颗粒剂', 'granules', '69', '69', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d8d0229375684677b14b57f4eaf654aa', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '乳剂', 'emulsion', '22', '22', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d944acf949964019a801f270368892a0', '79ee4f58da164d6795029d8012094b04', 'drug-class', '其他', 'Other', '5', '5', '', '1', null, '', null, 'ybb', '2018-09-21 17:47:57');
INSERT INTO `sys_dictionary` VALUES ('daa84d64653c49559a29a9d316b514a9', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '腹膜腔内注射', 'Intraperitoneal', '33', '33', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('dc2c85089135419d9b8a309aacf08655', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '事件描述', 'Event Description', '6', '6', 'ED', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('dd8c4400b6314d58acefbb7ba6a66c31', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', '0期', 'phase 0 clinical trials', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('dda97b41daaa4c5db8d412b2fb5d23b9', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释贴', 'controlled-release patches', '86', '86', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ddae4b81e5cf4496922334ddd1fdb19f', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '未知', 'Unknown', '65', '65', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e2b841adc83146b295c55a9b581682da', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '气管/支气管内给药', 'Intratracheal', '39', '39', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e3d21831fca7474093a0c2868abcaca1', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '糊剂', 'paste', '163', '163', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e3e036fe91094c4da153e667f756d7ee', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴耳剂', 'ear drops', '161', '161', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e3ec55e91e3c4fe79f8d5730a6dfe4fc', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '液体', 'liquid', '33', '33', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e407bd59f13f4155b0ccc852964a7ebd', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '文献', '', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e4b09ffaaac544919426d1af6d48dabe', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴丸', 'dropping pill', '91', '91', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e5fb5c0b450a4078b0d7c64298d04f51', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '电风扇', '诉讼费', '6', '4', null, '1', null, 'ybb', '2018-09-25 10:07:14', 'ybb', '2018-09-25 10:26:39');
INSERT INTO `sys_dictionary` VALUES ('e66430678aeb4f87846e934d9c279f34', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '其他', 'Other', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e68674e47fea4239adaf4b361070f969', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释颗粒', 'sustained-release granules', '107', '107', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e7cf3f3f70a1405680f50c9889e33a1b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释植入剂', 'sustained-release implant', '17', '17', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e84889b10bc7464986d38b8d59c1e2e7', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '爽肤水', '上市', '6', '4', null, '1', null, 'ybb', '2018-09-18 17:03:30', 'ybb', '2018-09-18 17:03:33');
INSERT INTO `sys_dictionary` VALUES ('e8c30156117341fc8bc9ef9c7a28c8ec', '1b7d555940284fe6b0b0bf527042c02d', 'research-design', '单盲', 'Single Blinded', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e9ecde8f20dc4d01aa11d8e911dccdde', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '血液透析', 'Hemodialysis', '10', '10', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eac0cadf287f42a4b711409bb9101fb6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口腔崩解片', 'orally disintegrating tablet', '147', '147', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eac5ffcc123f40ccacd9f2547d53b0d1', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶微丸', 'enteric coated micropil', '131', '131', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eb040276b32a4c6d8e3392583d79f5ed', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '透皮贴剂', 'transdermal patch', '149', '149', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eb0800c964694a3aa1cedf781d68ba13', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '治疗用生物制品', 'Therapeutic BIologics', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eb6d0b4c56694a07969efe41d04e9445', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '丸剂', 'pilula', '42', '42', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eb928e08e71043d4a69014e4bac1f32e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '霜剂', 'cream', '12', '12', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ec179db66dc04db6bab0d4015d97744f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释口颊片', 'modified-release bucral tablets', '65', '65', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ecaa59fbd5e34da4afd4e0cb9b18e4dc', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经眼给药', 'Intraocular', '31', '31', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ede59dc7eff64265a1b0bda00f74f528', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', '临床验证', 'clinical verifications', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ee030a7201a44710be6c3bf156510636', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '静脉注射', 'Intravenous bolus', '40', '40', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ef09fc0345774b909096ad40bb169321', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '出院小结', '', '9', '9', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ef94f30566bc4b86bb88f7f5e3d86d51', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '1发送', '1上市', '3', '3', null, '1', null, 'ybb', '2018-09-17 14:49:05', 'ybb', '2018-09-18 16:45:09');
INSERT INTO `sys_dictionary` VALUES ('f1167f7ed730437b9d5befaffbd2f8e0', '8a81497c53c2466f82473409dea6aa91', 'province', '西藏自治区', 'Tibet', '30', '30', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f1e5835ef75343b1a9db99a72b106ee3', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', '上市后研究', 'post marketing study', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f42afc87b43c47d59f2445700a22862a', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '子宫内给药', 'Intra-uterine', '15', '15', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f4c9bd70c58d4f6db50cdd2aa1fc4975', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释胶囊', 'sustained release capsules', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f51d0c42616c41279c16d931d9bb1b36', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '汤剂', 'decoction', '40', '40', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f536c998792c4d9390deabb48a5c9361', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '注射用乳', 'Injection milk', '56', '56', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f57d686278f94cc08e6b87374d5a310c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '包衣片', 'coating tablet', '164', '164', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f59b6eccb0fc4acdbf171e1add32172b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释颗粒', 'sustained-release granules', '127', '127', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f6033323ed29492496580291294678d6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '酒剂', 'medicinal liquor', '76', '76', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f6126e147e554760bd06cf208d6825ea', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '结膜下给药', 'Sunconjunctival', '57', '57', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f6cd29b11b014f21ba96b214d225cf0a', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '试剂', 'reagent', '140', '140', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f6f66cc1829745c68611ccd8741b3d66', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '糖丸', 'sugar pills', '9', '9', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f70ca4ad6c574f9fa28a6696abe0c11c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '散剂', 'powder', '52', '52', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f7fdebd6ca8347ac83ae88c97480ef94', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '原始资料', '', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f8aa2346586d4cf09b85212ea155acd8', '8a81497c53c2466f82473409dea6aa91', 'province', '内蒙古自治区', 'Neimenggu', '28', '28', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f8c79a19364a480cbdbd549efb1c9a71', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '鼻用吸入剂', 'nasal inhalation', '64', '64', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f92ed90836f9434c9cb7525b656b1f9e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '双层片', 'double-layer tablet', '77', '77', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fadf3b085bd9418f92ab0af3ad6025dc', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '局部给药', 'Topical', '61', '61', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fbe92a7408cf44f8b84dd761ee326deb', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '注射', '', '81', '81', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fc476ea8d27a47a6b4ba9c735483610d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶微丸胶囊', 'enteric coated micropill capsule', '103', '103', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fd3555cafc90472f990ed52a59e55f7c', '689305baa7d748d88aa73836f1c9c9b8', 'mailbox_setting', 'IMAP', 'IMAP', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fd74f7451fe9492ab2edf2213b80570d', '8a81497c53c2466f82473409dea6aa91', 'province', '湖南省', 'Hunan', '18', '18', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fdcd543a81634b5da829ec16ba90b0b9', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '周围神经给药', 'Perineural', '53', '53', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fe2288dea5314fcc9594b79d6ac21642', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬液', 'suspension', '159', '159', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fe2653055db3460cb4b986ea21a62935', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '说明书', 'instruction', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ff8ecff797a3476193ef12e8da40b43b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '其他', 'Other', '50', '50', '', '2', null, '', null, '', null);

-- ----------------------------
-- Table structure for sys_field_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_field_config`;
CREATE TABLE `sys_field_config` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `report_field_id` char(32) DEFAULT NULL COMMENT '导出报表显示ID',
  `field_private` char(32) DEFAULT NULL COMMENT '私有字段ID',
  `field_type` int(11) DEFAULT '1' COMMENT '字段类型1系统通用，2内置字段，3私有字段',
  `field_code` varchar(64) DEFAULT NULL COMMENT '字段编码',
  `field_chinese_name` varchar(32) DEFAULT NULL COMMENT '字段中文名',
  `field_english_name` varchar(32) DEFAULT NULL COMMENT '字段英文名',
  `table_name` varchar(32) DEFAULT NULL COMMENT '数据表名称',
  `html_type` varchar(32) DEFAULT NULL COMMENT '控件类型',
  `field_length` int(11) DEFAULT NULL COMMENT '最大长度',
  `field_owner_boundary` int(11) DEFAULT NULL COMMENT '所属界面',
  `field_owner_paragraph` int(11) DEFAULT NULL COMMENT '所属段落',
  `field_etob` int(11) DEFAULT NULL COMMENT '是否导出etb(1:是,2:否)',
  `dic_type` int(11) DEFAULT NULL COMMENT '字典类型',
  `dic_language` int(11) DEFAULT NULL COMMENT '字典语言',
  `dic_version` int(11) DEFAULT NULL COMMENT '字典版本',
  `field_statistical` int(11) DEFAULT NULL COMMENT '参与统计(1:是,2:否)',
  `field_qc` int(11) DEFAULT NULL COMMENT '参与QC(1:是,2:否)',
  `field_search` int(11) DEFAULT NULL COMMENT '参与搜索(1:是,2:否)',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `disable_status` int(11) DEFAULT NULL COMMENT '禁用状态1正常，2禁用',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1正常，2删除',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段自定义配置表';

-- ----------------------------
-- Records of sys_field_config
-- ----------------------------
INSERT INTO `sys_field_config` VALUES ('1b7d555940284fe6b0b0bf527042c02d', '', '', '2', 'research-design', '研究设计', 'Research Design', '', '2', null, '7', null, null, null, null, null, null, null, null, '', '2', '1', null, '', '2018-09-20 13:35:34', 'ybb', '2018-09-29 10:19:31');
INSERT INTO `sys_field_config` VALUES ('1fd6e3b0ef104b4596b26fb93c8a9a3d', '', '', '2', 'clinical-research', '临床研究分类', 'Research Classify', '', '', null, '7', null, null, null, null, null, null, null, null, '', '2', '1', null, '', null, 'ybb', '2018-09-18 17:33:20');
INSERT INTO `sys_field_config` VALUES ('366aa471ea73449ea1217f0e26739b87', '', '', '2', 'product-categories', '产品分类', 'Product Classify', '', '1', null, '7', null, null, null, null, null, null, null, null, '', '1', '1', null, '', '2018-09-20 14:17:29', 'ybb', '2018-09-18 17:33:22');
INSERT INTO `sys_field_config` VALUES ('50b5143e40c34e8c842c89ca5e35c9a6', '', '', '2', 'registration-classification', '注册分类', 'Registry Classify', '', '', null, '7', null, null, null, null, null, null, null, null, '', '2', '1', null, '', null, 'ybb', '2018-09-18 17:33:26');
INSERT INTO `sys_field_config` VALUES ('54d8c772d67c41abaf2f7c9ad7ebf5be', '', '', '2', 'country', '国家', 'Country', '', '1', null, '1', null, null, null, null, null, null, null, null, '', '2', '1', null, '', '2018-09-20 13:35:06', 'ybb', '2018-09-29 10:19:04');
INSERT INTO `sys_field_config` VALUES ('5515eba38a1541c59820b5440acbb5e1', '', '', '2', 'drug_info_type', '进口/国产', 'Domestic/Importing', '', '', null, '7', null, null, null, null, null, null, null, null, '', '2', '1', null, '', null, 'ybb', '2018-09-18 17:33:24');
INSERT INTO `sys_field_config` VALUES ('689305baa7d748d88aa73836f1c9c9b8', '', '', '2', 'mailbox_setting', '服务器类型', 'Server Type', '', '', null, '7', null, null, null, null, null, null, null, null, '', '2', '1', null, '', null, 'ybb', '2018-09-18 18:06:21');
INSERT INTO `sys_field_config` VALUES ('79ee4f58da164d6795029d8012094b04', '', '', '1', 'drug-class', '药品分类', 'Drug Classification', '', '2', null, '7', null, null, '1', '1', '1', '1', '1', '1', '', '1', '1', null, '', '2018-09-21 10:35:52', 'ybb', '2018-09-18 18:06:23');
INSERT INTO `sys_field_config` VALUES ('8a81497c53c2466f82473409dea6aa91', '', '', '2', 'province', '省/市', 'Province', '', '', null, '7', null, null, null, null, null, null, null, null, '', '2', '1', null, '', null, 'ybb', '2018-09-18 10:50:55');
INSERT INTO `sys_field_config` VALUES ('a0ccd90132994b48948e7334a7959a45', '', '', '2', 'drug-formulation', '剂型', 'Dosage Form', '', '1', null, '7', null, null, null, null, null, null, null, null, '', '2', '1', null, '', '2018-09-20 13:32:53', 'ybb', '2018-09-29 10:17:23');
INSERT INTO `sys_field_config` VALUES ('a641be4ed58b47ac98ad47895227f48e', '', '', '2', 'maintain_control', '控件类型', 'Control Type', '', '', null, '7', null, null, null, null, null, null, null, null, '', '1', '1', null, '', null, '', null);
INSERT INTO `sys_field_config` VALUES ('b1dbb4b46c6443d68eca08727b9463ea', '', '', '2', 'company_info_type', '企业类型', 'Company Type', '', '', null, '7', null, null, null, null, null, null, null, null, '', '1', '1', null, '', null, '', null);
INSERT INTO `sys_field_config` VALUES ('c5f5c4ed3e0c41798f5676e1940bf175', null, null, '2', 'report-regulations', '报告规则', 'Reporting rules', null, null, null, '7', null, null, null, null, null, null, null, null, null, '2', '1', null, null, null, 'ybb', '2018-09-29 10:20:33');
INSERT INTO `sys_field_config` VALUES ('cfca673980cd4b20a5a131eae56cb12a', '', '', '2', 'research-subdivision', '研究类型细分', 'Research Phase', '', '', null, '7', null, null, null, null, null, null, null, null, '', '2', '1', null, '', null, 'ybb', '2018-09-19 13:57:31');
INSERT INTO `sys_field_config` VALUES ('d4dbeda432e742ea90ebd5f40b467c27', '', '', '2', 'drug-way', '给药途径', 'Administration Route', '', '', null, '7', null, null, null, null, null, null, null, null, '', '1', '1', null, '', null, '', null);
INSERT INTO `sys_field_config` VALUES ('eab1a4857e744b0ea43c23c36c09d8bb', '', '', '2', 'maintain_page', '所属页面', 'Page Table', '', '', null, '7', null, null, null, null, null, null, null, null, '', '1', '1', null, '', null, '', null);
INSERT INTO `sys_field_config` VALUES ('ffdebcb9ecb445018026acbce70a4a45', '', '', '2', 'attach-class', '附件分类', 'Attach Type', '', '', null, '7', null, null, null, null, null, null, null, null, '', '1', '1', null, '', null, '', null);

-- ----------------------------
-- Table structure for sys_field_manage
-- ----------------------------
DROP TABLE IF EXISTS `sys_field_manage`;
CREATE TABLE `sys_field_manage` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `field_id` char(32) DEFAULT NULL COMMENT '字段ID',
  `field_statistical` int(11) DEFAULT NULL COMMENT '参与统计(1:是,2:否)',
  `field_qc` int(11) DEFAULT NULL COMMENT '参与QC(1:是,2:否)',
  `field_search` int(11) DEFAULT NULL COMMENT '参与搜索(1:是,2:否)',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `company_id` varchar(32) DEFAULT NULL,
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_field_manage
-- ----------------------------

-- ----------------------------
-- Table structure for sys_field_private
-- ----------------------------
DROP TABLE IF EXISTS `sys_field_private`;
CREATE TABLE `sys_field_private` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `field_id` char(32) DEFAULT NULL COMMENT '字段ID',
  `private_name` varchar(32) DEFAULT NULL COMMENT '私有配置名称',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1正常，2删除',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `company_id` varchar(32) DEFAULT NULL,
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段私有配置';

-- ----------------------------
-- Records of sys_field_private
-- ----------------------------
INSERT INTO `sys_field_private` VALUES ('111', '3333', 'cccc1', '1', null, '62', null, null, '2018-08-30 15:35:47', null, null);
INSERT INTO `sys_field_private` VALUES ('ff15c761b3ad40da98bada9bd91e7bd8', '3333', null, '1', null, null, null, null, '2018-09-12 18:53:39', null, null);

-- ----------------------------
-- Table structure for sys_field_report
-- ----------------------------
DROP TABLE IF EXISTS `sys_field_report`;
CREATE TABLE `sys_field_report` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `field_id` char(32) DEFAULT NULL COMMENT '字段ID',
  `report_name` varchar(32) DEFAULT NULL COMMENT '导出报表名称',
  `field_name` varchar(32) DEFAULT NULL COMMENT '字段显示名称',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1正常，2删除',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段配置报表显示';

-- ----------------------------
-- Records of sys_field_report
-- ----------------------------
INSERT INTO `sys_field_report` VALUES ('02c3798adf3c43e6bef334358ca0f7cc', '79ee4f58da164d6795029d8012094b04', 'CIOMSI', 'CIOMSI', '1', null, null, null, '2018-09-21 10:35:52', null, null);
INSERT INTO `sys_field_report` VALUES ('06da03d2b8a14936a8c7ca44a820871b', '1111', 'etb', '意图比', '1', null, null, null, '2018-09-04 19:21:31', null, null);
INSERT INTO `sys_field_report` VALUES ('09ee6f6e1f0e4d81af146aff961bc1ae', '1111', 'SAE', '21221', '1', null, null, null, '2018-09-12 14:20:15', null, null);
INSERT INTO `sys_field_report` VALUES ('10221735060247fcac1da2dc675365d4', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'E2B', '212', '1', null, null, null, '2018-09-20 13:35:06', null, null);
INSERT INTO `sys_field_report` VALUES ('111', '1111', 'etb', '意图比', '1', '呜呜呜', null, null, '2018-08-30 15:37:02', null, null);
INSERT INTO `sys_field_report` VALUES ('14fa2c06cf8f4cc1ba0d3ddbd6dac5cc', '79ee4f58da164d6795029d8012094b04', 'CIOMSI', 'CIOMSI', '2', null, null, null, '2018-09-21 10:35:19', null, '2018-09-21 10:35:52');
INSERT INTO `sys_field_report` VALUES ('14fbe4bc172743e6b46cb3b5d794331c', '79ee4f58da164d6795029d8012094b04', 'MedWATCH', 'MedWATCH', '1', null, null, null, '2018-09-21 10:35:52', null, null);
INSERT INTO `sys_field_report` VALUES ('1628accd456941b19c9059eee45f0afe', '79ee4f58da164d6795029d8012094b04', 'SAE', 'CIOMSI', '2', null, null, null, '2018-09-21 10:35:19', null, '2018-09-21 10:35:52');
INSERT INTO `sys_field_report` VALUES ('248bf055e89e40bebeccd4c1e3b84fd4', '1111', 'etb', '意图比', '1', null, null, null, '2018-09-04 19:19:18', null, null);
INSERT INTO `sys_field_report` VALUES ('2804bb42d914454ea01f6dc2fc3f6ba6', '1111', 'etb', '最新', '1', null, null, null, '2018-09-12 14:38:27', null, null);
INSERT INTO `sys_field_report` VALUES ('2bba4471f46d425d9f3355b07174b1b1', '79ee4f58da164d6795029d8012094b04', 'SAE', 'CIOMSI', '1', null, null, null, '2018-09-21 10:35:52', null, null);
INSERT INTO `sys_field_report` VALUES ('2c91d5f8c831406a9dfc26bd6f3d40cd', '79ee4f58da164d6795029d8012094b04', 'SAE', 'SAE', '2', null, null, null, '2018-09-18 11:13:08', null, '2018-09-20 14:22:51');
INSERT INTO `sys_field_report` VALUES ('34928695ea1a4417b98dfc6db2d17913', '2222', 'etb', '212', '1', null, null, null, '2018-09-05 20:49:33', null, null);
INSERT INTO `sys_field_report` VALUES ('365725d2042c41dba50bc7b61c3cea1a', '366aa471ea73449ea1217f0e26739b87', 'ADR', '212', '1', null, null, null, '2018-09-20 14:17:29', null, null);
INSERT INTO `sys_field_report` VALUES ('3ba80524bd46485b8e50bff136685e66', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'etb', 'ETOB', '2', null, null, null, '2018-09-14 13:21:36', null, '2018-09-17 11:35:40');
INSERT INTO `sys_field_report` VALUES ('3fe2c674c75e4cd4bc5eb7e9ab5bed17', '1111', 'ADR', '最新', '1', null, null, null, '2018-09-12 14:38:27', null, null);
INSERT INTO `sys_field_report` VALUES ('40df8382690d4eefb24d007a36c2a32d', '1111', 'etb', 'etob字段', '1', null, null, null, '2018-09-10 16:14:28', null, null);
INSERT INTO `sys_field_report` VALUES ('42a6ea52502f4b2fab799e1fcb4361d2', '1111', 'SAE', 'SAE字段', '1', null, null, null, '2018-09-10 15:51:46', null, null);
INSERT INTO `sys_field_report` VALUES ('47febebbf88c43acb146efdd4246e78b', '1111', 'etb', 'etob字段212', '1', null, null, null, '2018-09-12 14:20:15', null, null);
INSERT INTO `sys_field_report` VALUES ('497860d9471b402494e978b502bf7862', '79ee4f58da164d6795029d8012094b04', 'CIOMSI', 'CIOMSI', '2', null, null, null, '2018-09-18 11:13:08', null, '2018-09-20 14:22:51');
INSERT INTO `sys_field_report` VALUES ('4c30471bd9134c159100a7316b30e653', '1111', 'etb', 'etob字段', '1', null, null, null, '2018-09-10 15:51:46', null, null);
INSERT INTO `sys_field_report` VALUES ('4cba27419df24ecaae7278a462879397', '79ee4f58da164d6795029d8012094b04', 'ADR', 'ADR', '2', null, null, null, '2018-09-21 10:35:19', null, '2018-09-21 10:35:52');
INSERT INTO `sys_field_report` VALUES ('4cdd3b05f8734d51b276d2307a91d65f', '79ee4f58da164d6795029d8012094b04', 'MedWATCH', 'MedWATCH', '2', null, null, null, '2018-09-21 10:35:19', null, '2018-09-21 10:35:52');
INSERT INTO `sys_field_report` VALUES ('4e0938c280bc40b4abb63969dba5b248', '1111', 'ADR', 'zui', '1', null, null, null, '2018-09-12 14:33:29', null, null);
INSERT INTO `sys_field_report` VALUES ('4efcf0465fed4a43b7224db76b338dd3', '79ee4f58da164d6795029d8012094b04', 'E2B', 'E2B', '2', null, null, null, '2018-09-21 10:35:19', null, '2018-09-21 10:35:52');
INSERT INTO `sys_field_report` VALUES ('5181c188e5574f48b43f9f17331576e7', '79ee4f58da164d6795029d8012094b04', 'ADR', 'ADR', '2', null, null, null, '2018-09-18 11:13:08', null, '2018-09-20 14:22:51');
INSERT INTO `sys_field_report` VALUES ('524804b85d8b4e50a65774a388579fca', '1111', 'ADR', '212sa21', '1', null, null, null, '2018-09-12 14:20:15', null, null);
INSERT INTO `sys_field_report` VALUES ('5fc85af02390440b8c0ba3e8fa9e628f', '79ee4f58da164d6795029d8012094b04', ' MedWATCH', 'MedWATCH', '2', null, null, null, '2018-09-18 11:13:08', null, '2018-09-20 14:22:51');
INSERT INTO `sys_field_report` VALUES ('5fe48c1ca8524c4f972803232871934b', '1111', 'etb', '意图比212', '1', null, null, null, '2018-09-04 19:21:42', null, null);
INSERT INTO `sys_field_report` VALUES ('600699f3df174846baa4d5d4ec02b5cf', '1b7d555940284fe6b0b0bf527042c02d', 'ADR', '第二个', '1', null, null, null, '2018-09-20 13:35:34', null, null);
INSERT INTO `sys_field_report` VALUES ('679da770a49e4dd8b2dee733dc1778b7', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'ADR', 'ADR', '2', null, null, null, '2018-09-14 13:21:03', null, '2018-09-17 11:35:40');
INSERT INTO `sys_field_report` VALUES ('6a95c3711803436c9a7cf145944eb059', '1b7d555940284fe6b0b0bf527042c02d', 'E2B', '第二个', '1', null, null, null, '2018-09-20 13:35:34', null, null);
INSERT INTO `sys_field_report` VALUES ('6f35888641a948169177fcdd3139c48b', '1111', 'ADR', '212sa212', '1', null, null, null, '2018-09-12 14:20:28', null, null);
INSERT INTO `sys_field_report` VALUES ('7920ffc18ce64ca8853a490096745e62', '1111', 'etb', 'etob字段', '1', null, null, null, '2018-09-10 15:43:52', null, null);
INSERT INTO `sys_field_report` VALUES ('8138c1aaacdc4e78b5dcedabcd83229f', '79ee4f58da164d6795029d8012094b04', 'ADR', 'ADR', '1', null, null, null, '2018-09-21 10:35:52', null, null);
INSERT INTO `sys_field_report` VALUES ('91a2f4e9aca745599f84a289d8956c29', '1111', 'etb', 'etob字段21', '1', null, null, null, '2018-09-12 14:20:28', null, null);
INSERT INTO `sys_field_report` VALUES ('98e70cd0bdd44272bf8ef16463279917', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'ADR', '21212', '1', null, null, null, '2018-09-20 13:35:06', null, null);
INSERT INTO `sys_field_report` VALUES ('9a4c311606ac43789f9ddfd3411e29cd', '1111', 'SAE', '212212121', '1', null, null, null, '2018-09-12 14:20:28', null, null);
INSERT INTO `sys_field_report` VALUES ('a0085bb4349547c9a0fdb4ba009bb82c', '1111', 'ADR', 'ADR字段', '1', null, null, null, '2018-09-10 15:51:46', null, null);
INSERT INTO `sys_field_report` VALUES ('a847d076a5004f4690e0eb6bbbd5fa3f', '1111', 'ADR', 'ADR字段', '1', null, null, null, '2018-09-10 15:43:52', null, null);
INSERT INTO `sys_field_report` VALUES ('a8a715fa683c4188b95047ef99ab1168', '79ee4f58da164d6795029d8012094b04', 'E2B', 'E2B', '2', null, null, null, '2018-09-18 11:13:08', null, '2018-09-20 14:22:51');
INSERT INTO `sys_field_report` VALUES ('ad0050a9f3a740ff90ad9dcfd59f4c78', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'etb', 'ETOB', '2', null, null, null, '2018-09-14 13:19:57', null, '2018-09-17 11:35:40');
INSERT INTO `sys_field_report` VALUES ('b8c48d3786144d269458de674f2401ba', '1111', 'ADR', '212sa', '1', null, null, null, '2018-09-04 19:19:18', null, null);
INSERT INTO `sys_field_report` VALUES ('bb805dc620724c6894309e5ed87f1181', '1111', 'SAE', '最新', '1', null, null, null, '2018-09-12 14:38:27', null, null);
INSERT INTO `sys_field_report` VALUES ('c1cdbe2886c647fb817a3b4a46ca2dd5', '1b7d555940284fe6b0b0bf527042c02d', 'ADR', '2121212', '2', null, null, null, '2018-09-20 13:35:00', null, '2018-09-20 13:35:34');
INSERT INTO `sys_field_report` VALUES ('c87456e8ba2e4cc392b3a31ee8ac6e61', '366aa471ea73449ea1217f0e26739b87', 'E2B', '121', '1', null, null, null, '2018-09-20 14:17:29', null, null);
INSERT INTO `sys_field_report` VALUES ('d0384a26e7454322bd40feff66dc76ad', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'etb', 'ETOB', '2', null, null, null, '2018-09-14 13:21:03', null, '2018-09-17 11:35:40');
INSERT INTO `sys_field_report` VALUES ('d9741e04656a4b1f8d7992238a1bdbeb', '1111', 'SAE', 'sae字段', '1', null, null, null, '2018-09-10 15:43:52', null, null);
INSERT INTO `sys_field_report` VALUES ('db33ca81391e425fa3321454884172d0', '1111', 'SAE', '212', '1', null, null, null, '2018-09-04 19:21:42', null, null);
INSERT INTO `sys_field_report` VALUES ('de0c6809165a4ad3bf12a6fc65e9f420', '1b7d555940284fe6b0b0bf527042c02d', 'E2B', '2121', '2', null, null, null, '2018-09-20 13:35:00', null, '2018-09-20 13:35:34');
INSERT INTO `sys_field_report` VALUES ('e92d7c836f7f4b0fa22e66f736c4af6f', '79ee4f58da164d6795029d8012094b04', 'E2B', 'E2B', '1', null, null, null, '2018-09-21 10:35:52', null, null);
INSERT INTO `sys_field_report` VALUES ('ef02c980588b4fd3acd13097494232b6', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'SAE', 'SAE', '2', null, null, null, '2018-09-14 13:21:03', null, '2018-09-17 11:35:40');
INSERT INTO `sys_field_report` VALUES ('f271cd69c50c4b74a8ac794c583d202f', '1111', 'etb', 'etob字段21', '1', null, null, null, '2018-09-12 14:33:29', null, null);
INSERT INTO `sys_field_report` VALUES ('f53f0c1f0217406da74b49d993210462', '1111', 'ADR', '212sa', '1', null, null, null, '2018-09-04 19:21:31', null, null);
INSERT INTO `sys_field_report` VALUES ('fa72abe1ce464fcf94e352af9642916a', '1111', 'SAE', '212', '1', null, null, null, '2018-09-12 14:33:29', null, null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `menu_code` varchar(32) NOT NULL COMMENT '菜单编号',
  `parent_code` varchar(32) DEFAULT NULL COMMENT '父级编号',
  `menu_chinese_name` varchar(32) DEFAULT NULL COMMENT '菜单中文名称',
  `menu_english_name` varchar(32) DEFAULT NULL COMMENT '菜单英文名称',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型（1：菜单 2：权限）',
  `menu_route` varchar(32) DEFAULT NULL COMMENT '菜单路由',
  `menu_pers` varchar(32) DEFAULT NULL COMMENT '菜单权限',
  `menu_cron` varchar(32) DEFAULT NULL COMMENT '菜单图标',
  `menu_sort` int(11) DEFAULT NULL COMMENT '排序号',
  `menu_show` int(11) DEFAULT NULL COMMENT '是否显示（1显示 0隐藏）',
  `menu_delete` int(11) DEFAULT NULL COMMENT '删除状态（0正常 1删除 ）',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('02006de76c274f158ffd475cbc439c47', '2fd66a73cfe54dbdbe40d55fb97fec9b', '', '字段管理', 'fieldManagement', '1', '/fieldManagement', '', 'form', '1', '2', '1', '1', null, '33', '2018-09-10 14:56:46', '33', '2018-09-13 14:28:00');
INSERT INTO `sys_menu` VALUES ('02c961d49a58495aaf95de4bc0a19b2b', 'c6b999553dda470a9afa2bae6d270798', '', '菜单配置', 'menu', '1', '/menu/index', '', '1', '3', '1', '0', '', null, '33', '2018-09-12 10:03:33', '33', '2018-09-13 14:43:44');
INSERT INTO `sys_menu` VALUES ('0376b173d8654af6b9a4a9abdb259ac4', '1c30189542904319b1691a1497254efe', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '项目信息', 'index', '1', '/PjtInfmt/index', '', 'form', '2', '1', '0', 'PjtInfmt.index', null, '33', '2018-09-10 11:17:38', '33', '2018-09-10 11:17:38');
INSERT INTO `sys_menu` VALUES ('0a22c133c0a84f88bd92de6c57208a51', 'bfaee91265104706b2296d4d4c946d78', '2cd9f888aede41419c6efe2a641ca1f1', 'test', '万千瓦', '2', '', '21', '21', '21', '1', '0', '', null, '33', '2018-09-13 11:42:20', '33', '2018-09-13 11:42:20');
INSERT INTO `sys_menu` VALUES ('0c834d539553452c9ee2eb5bc65d92ac', '13cf21b481074730b7f1ab6dc2e46cac', 'c5da4b34ec2d47b1ad016bbd483cb86b', '用户管理', 'users', '1', '/users/index', '', '', '4', '1', '0', '4', null, '33', '2018-09-13 14:27:26', '33', '2018-09-13 14:27:26');
INSERT INTO `sys_menu` VALUES ('10f3c371448243428b5a602cc215610a', 'e7092728c02f43489cbacfd03e10d1f2', 'b42a5b673b774688add97ceaf13f0698', '接受者信息(E2B)', 'receiver', '1', '/receiver/index', '', '', '6', '1', '0', 'receiver', null, '33', '2018-09-13 14:19:47', '33', '2018-09-13 14:45:27');
INSERT INTO `sys_menu` VALUES ('12c2811240f94dbdb57a3846f8d68e11', '41760ed52cdc4eab8075bf1a3579949d', '', '', '', '1', '', '', '', null, '2', '1', '', null, '33', '2018-10-18 11:12:14', '33', '2018-10-18 11:12:18');
INSERT INTO `sys_menu` VALUES ('167d1fbb323949298079346688d1ac3a', '8cf8b04e5fb040b4ac24f95352de6106', 'b42a5b673b774688add97ceaf13f0698', '发送者信息(E2B)', 'sender', '1', '/sender/index', '', '', '5', '1', '0', '5', null, '33', '2018-09-13 14:18:38', '33', '2018-09-13 14:18:38');
INSERT INTO `sys_menu` VALUES ('1897288f9a51456c817f725627aa74e3', '5916fcfcff6e46c793e92decd48f83e7', 'b42a5b673b774688add97ceaf13f0698', '上市后药品信息', 'postDrug', '1', '/postDrug/index', '', '', '4', '1', '0', '4', null, '33', '2018-09-13 14:17:13', '33', '2018-09-13 14:17:13');
INSERT INTO `sys_menu` VALUES ('1cb4c6c0811641d6af22cb4722cfe226', 'd43e4e58d6e5457b88d6b312dd4dff72', '2fd66a73cfe54dbdbe40d55fb97fec9b', '字段管理', 'index', '1', '/fieldManagement/index', '', 'form', '1', '2', '0', '1', null, '33', '2018-09-10 14:57:16', '33', '2018-09-10 14:57:16');
INSERT INTO `sys_menu` VALUES ('22fb41c3dfe84c68a99f2c615fa03543', '9e6f7f86c31d41c795dadb410f58f859', 'c5da4b34ec2d47b1ad016bbd483cb86b', '报告规则', 'rulesOfReporting', '1', 'rulesOfReporting', '', '', '1', '1', '0', '1', null, '33', '2018-09-13 14:25:02', '33', '2018-09-13 14:25:02');
INSERT INTO `sys_menu` VALUES ('269b5c1db61d4c48ab976614d0bfc2b3', '9f7225dcf0b748b3b94908e4457e7cef', '', '用户管理', 'users', '1', '/users', '', 'tree', '0', '1', '1', 'users', null, '33', '2018-09-10 11:49:21', '33', '2018-09-13 14:10:13');
INSERT INTO `sys_menu` VALUES ('2712bc1fd0814986874c7b119adb0394', '7400670c4c2a42c4a9609fd494dd08f4', '', '新建一级菜单', 'ch', '1', 'index', '', 'icon iconfont icon-ic_delete', '1', '1', '1', '1', null, '33', '2018-09-10 17:13:54', '33', '2018-09-11 09:47:21');
INSERT INTO `sys_menu` VALUES ('2fdeb40a58334a49b4ca1c33952438cc', '01cfaac737d446e1b031ffc69b56518e', '', '基础信息', 'baseMessage', '2', '/base', '', '', '0', '2', '0', '基础信息', null, '33', '2018-09-13 14:05:21', '33', '2018-09-13 14:05:21');
INSERT INTO `sys_menu` VALUES ('3691518b1e694d3380613b24bdaf8208', '04cea8ff16344dd7a1aa2043fa81026e', '', '字段管理', 'fieldManagement', '1', '/fieldManagement', '', 'tree', '0', '1', '1', 'fieldManagement', null, '33', '2018-09-10 11:59:36', '33', '2018-09-13 14:10:20');
INSERT INTO `sys_menu` VALUES ('38bb4cd7e5ab447c8fe4f74eb27e539b', '2ff5a4ca74bf4359ba4ee498f1e288a8', '', 'gdf', 'fg', '1', 'df', '', 'fd', '1', '1', '1', 'ads', null, '33', '2018-09-12 18:39:28', '33', '2018-09-12 18:39:39');
INSERT INTO `sys_menu` VALUES ('3eaed72f62de41609d5631255de201ef', '4611dfcec52b41b4877ae8dbf2736f87', 'b42a5b673b774688add97ceaf13f0698', '项目信息', 'PjtInfmt', '1', '/PjtInfmt/index', '', '', '1', '1', '0', '/PjtInfmt/index', null, '33', '2018-09-13 14:11:24', '33', '2018-09-13 14:11:24');
INSERT INTO `sys_menu` VALUES ('40e05fe01c754fb792d4b946811db7fa', 'e66d9275b9c644518f60d8ae51985ead', 'c5da4b34ec2d47b1ad016bbd483cb86b', '字段管理', 'fieldManagement', '1', '/fieldManagement/index', '', '', '2', '1', '0', '2', null, '33', '2018-09-13 14:25:39', '33', '2018-09-13 14:25:39');
INSERT INTO `sys_menu` VALUES ('4bf896bfc68a431e8d499de1cc93b8df', 'edcef1bf62eb4687a223e10df4085db0', 'b42a5b673b774688add97ceaf13f0698', '企业信息', 'enterpriseInfo', '1', '/enterpriseInfo/index', '', '', '0', '1', '0', 'enterpriseInfo', null, '33', '2018-09-13 14:09:02', '33', '2018-09-13 14:12:51');
INSERT INTO `sys_menu` VALUES ('508f2207d7044a868d7b90c14537923a', '02c5b1d1b82046ee9143353eedbbbdad', 'a9bcc8574ce6449b856b5369eac72842', 'test2', 'test2', '2', '', 'test2', 'test2', '1', '1', '0', 'test2', null, '33', '2018-09-10 17:38:28', '33', '2018-09-10 17:38:28');
INSERT INTO `sys_menu` VALUES ('51db7958ff0e4aa1aa9c87a456200f07', '346e598043ec479eab323f6458ee7c27', 'ebcd8028d5444e6886157ef8ba6c57b4', 'test·', '21', '1', '21', '', '212', '212', '1', '0', '', null, '33', '2018-09-12 10:18:01', '33', '2018-09-12 10:18:01');
INSERT INTO `sys_menu` VALUES ('552e7e2bc8a14b8fb45a194139e7d45b', 'ca2ca6de676943058048b05239d9d77e', 'bee02dcccb7149cb8aa3934f0772e9a2', '菜单管理', 'index', '1', '/menu/index', '', 'form', '2', '1', '0', 'menu.index', null, '33', '2018-09-10 10:59:35', '33', '2018-09-10 10:59:35');
INSERT INTO `sys_menu` VALUES ('5d0c07b5d61f4fab9c5728f7039f44ef', 'f1cd8a4b25354134a1eaa49cb90385b8', '', '企业信息', 'enterpriseInfo', '1', '/enterpriseInfo', '', 'form', '1', '1', '1', 'enterpriseInfo', null, '33', '2018-09-10 11:18:59', '33', '2018-09-13 14:28:11');
INSERT INTO `sys_menu` VALUES ('5d25c98132d0441ca038dee64d4bf3fe', '28f1475d6ec54eaaa8e913c3f19c3e85', 'c5da4b34ec2d47b1ad016bbd483cb86b', '工作流管理', 'Workflow', '1', '/Workflow/index', '', '', '0', '1', '0', '0', null, '33', '2018-09-13 14:24:07', '33', '2018-09-13 14:24:07');
INSERT INTO `sys_menu` VALUES ('619ec2ac5c764375927efd0eb222b11d', 'a9bcc8574ce6449b856b5369eac72842', '9e0bc51734a24e6e9c2a043a418cf0f7', 'test1', 'test1', '1', 'test1', '', 'test1', '1', '1', '1', 'test', null, '33', '2018-09-10 17:38:09', '33', '2018-09-11 09:15:40');
INSERT INTO `sys_menu` VALUES ('624b5b45ee4b4571a8fb39a988ee08dc', '9e0bc51734a24e6e9c2a043a418cf0f7', '', 'test', '1', '1', '1', '', 'icon iconfont icon-ic_delete', '1', '2', '1', '1', null, '33', '2018-09-10 17:04:23', '33', '2018-09-11 09:47:01');
INSERT INTO `sys_menu` VALUES ('631a1b15325d47ba9e22ed7ca23b9053', 'bee02dcccb7149cb8aa3934f0772e9a2', '', '菜单管理', 'menu', '1', '/menu', '', 'form', '1', '1', '1', 'menu', null, '33', '2018-09-10 10:58:31', '33', '2018-09-10 14:05:20');
INSERT INTO `sys_menu` VALUES ('6650b167530c4bf8a9ca7616efe2f286', '7ed59e1dd74049ae95543ea5c8b24b07', '04cea8ff16344dd7a1aa2043fa81026e', 'test', '1', '1', '1', '', '1', '1', '1', '0', '', null, '33', '2018-09-12 10:17:11', '33', '2018-09-12 10:17:11');
INSERT INTO `sys_menu` VALUES ('66d6b24ed90e4f36b6f62ed1207b262c', '89df9b7c7b744ca39f49aef5de0fa46a', '3ba6e0e0fc33464e8317cb38e14537eb', '工作流', 'index', '1', '/Workflow/index', '', 'form', '1', '1', '0', '1', null, '33', '2018-09-10 14:45:40', '33', '2018-09-10 14:45:40');
INSERT INTO `sys_menu` VALUES ('67dcc2bca5954051a6cb7bbab3327ab2', '24ce88922af440efbdb397aa5e84bf07', '57830d80b9e94438801da25492647ddb', '报告规则', 'index', '1', '/rulesOfReporting/index', '', 'form', '2', '1', '0', '2', null, '33', '2018-09-11 17:02:57', '33', '2018-09-11 17:02:57');
INSERT INTO `sys_menu` VALUES ('6ec99312a9da4a1bb4e283b19a303b4f', 'd541d7d219094a2c98d0a8fc717e9da8', '', '报告规则', 'ccc', '1', '/rulesOfReporting', '', '', '1', '1', '1', '', null, '33', '2018-09-12 13:22:00', '33', '2018-09-13 14:27:40');
INSERT INTO `sys_menu` VALUES ('702a7d54856949698ec1767aad87d755', 'b62a2a1a6bf8432e976e8787713cfb6b', '', '原始资料管理池_文献', 'source', '1', '/source/index', '', 'el-icon-goods', '0', '1', '0', '原始资料管理池', null, '33', '2018-10-18 16:56:33', '33', '2018-10-22 09:39:51');
INSERT INTO `sys_menu` VALUES ('7091f754d5054ba789991af178d219ba', '1a4d987f25504198b678ecc8f1fa6271', 'edcef1bf62eb4687a223e10df4085db0', '12', '12', '2', '', '12', '1', '1', '1', '1', '1', null, '33', '2018-09-26 14:46:18', '33', '2018-09-26 14:48:07');
INSERT INTO `sys_menu` VALUES ('71f7d00756704721aecc1fdbafc6ad7f', 'f8567dfe9e2d4e679be65cc72e0814fb', '', 'hfgh', 'fgh', '1', 'fgh', '', 'sdf', '1', '1', '1', '1', null, '33', '2018-09-11 14:53:44', '33', '2018-09-11 14:53:52');
INSERT INTO `sys_menu` VALUES ('76aac86bcd4549db86ca2f083e80ddfb', '0965be7f783a42adae1547864404281c', 'c6b999553dda470a9afa2bae6d270798', '菜单配置', 'index', '1', '/menu/index', '', 'form', '1', '1', '0', '1', null, '33', '2018-09-12 10:29:20', '33', '2018-09-12 10:29:20');
INSERT INTO `sys_menu` VALUES ('7a8595effa7f4539933979e1194c5aaa', 'd361facdd85444f3b222259910f84e22', 'ebcd8028d5444e6886157ef8ba6c57b4', '基础信息', 'baseInfo', '1', '1', '', '1', '1', '1', '0', '', null, '33', '2018-09-13 11:45:04', '33', '2018-09-13 11:45:04');
INSERT INTO `sys_menu` VALUES ('7c5aa97db7624e628ccbdb987dfb817c', '5feb2171b3a74265b9150f5accefd204', '9f7225dcf0b748b3b94908e4457e7cef', '用户管理', 'users', '1', '/users/index', '', 'tree', '1', '1', '1', 'users.index', null, '33', '2018-09-10 11:50:07', '33', '2018-09-10 17:30:56');
INSERT INTO `sys_menu` VALUES ('803ca033c6c049e8885c58e04400cdb1', 'c57a029bac4144e2a3b8c6472d730752', '3ba6e0e0fc33464e8317cb38e14537eb', '工作流配置', 'configure', '1', '/Workflow/configure', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-10 14:47:00', '33', '2018-09-10 15:33:20');
INSERT INTO `sys_menu` VALUES ('854e5cc214e54323b4b01099e6633e76', '94b2adbd099448d9a0edc53130ad4e54', 'b42a5b673b774688add97ceaf13f0698', '项目成员', 'PjtMembers', '1', '/PjtMembers/index', '', '', '2', '1', '0', '/PjtMembers/index', null, '33', '2018-09-13 14:12:17', '33', '2018-09-13 14:13:13');
INSERT INTO `sys_menu` VALUES ('87a22f1126b54134b3b444f803652182', '2cd9f888aede41419c6efe2a641ca1f1', 'ebcd8028d5444e6886157ef8ba6c57b4', '邮箱配置', 'index', '1', '/email/index', '', 'form', '1', '1', '0', 'email.index', null, '33', '2018-09-10 11:25:41', '33', '2018-09-10 11:25:41');
INSERT INTO `sys_menu` VALUES ('888bf6f771574365966c5cab7ff7d8d6', '958f7d0b25ef402d9980516cb7e709fa', '', '基础信息', 'baseMessage', '2', '/base', '', '', '0', '2', '0', '基础信息', null, '33', '2018-09-13 14:05:21', '33', '2018-09-13 14:05:21');
INSERT INTO `sys_menu` VALUES ('89bd097db7b14e30820911dc55fe8f4c', '5dad8dba8317459a8123b996b131f3b5', '04cea8ff16344dd7a1aa2043fa81026e', '字段管理', 'index', '1', '/fieldManagement/index', '', 'tree', '1', '1', '0', 'fieldManagement.index', null, '33', '2018-09-10 12:00:27', '33', '2018-09-10 12:00:27');
INSERT INTO `sys_menu` VALUES ('8cc1bf0c2c4a4b4bb5b834081b710edf', '57830d80b9e94438801da25492647ddb', '', '报告规则', 'rulesOfReporting', '1', '/rulesOfReporting', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-11 16:18:09', '33', '2018-09-13 14:28:06');
INSERT INTO `sys_menu` VALUES ('90d0a8ab11354293846ed49282d953b8', '65da9d9014154e718dc9f40abd866a20', 'b42a5b673b774688add97ceaf13f0698', '系统设置', 'systemSetup', '1', '/system', '', '', '1', '1', '1', 'system', null, '33', '2018-09-13 14:22:12', '33', '2018-09-13 14:30:33');
INSERT INTO `sys_menu` VALUES ('918dfd34ae134cc1a7d3a359517dbece', '376b19473ead4f568bc4ccce23f103d8', '', '基础信息', 'baseMessage', '2', '/base', '', '', '0', '2', '0', '基础信息', null, '33', '2018-09-13 14:05:20', '33', '2018-09-13 14:05:20');
INSERT INTO `sys_menu` VALUES ('92435256855544a3ab2cdd122716e5e5', 'db4c0b27a85342df8c826c087a4bc8fc', '', '菜单管理', 'menu', '1', '/menu', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-12 10:27:19', '33', '2018-09-12 10:28:42');
INSERT INTO `sys_menu` VALUES ('96092bb18dd843b1a50d0a2a5724bc8a', '48185ec5072a405494e26ff2e086c41b', '', '', '', '1', '', '', '', null, '2', '1', '', null, '33', '2018-10-18 11:31:20', '33', '2018-10-18 11:31:25');
INSERT INTO `sys_menu` VALUES ('988efb0eae8547cfb5871c2c7b3d0036', '71d6a3dd0c294b79add8026d21e1f00f', 'f1cd8a4b25354134a1eaa49cb90385b8', '企业信息', 'index', '1', '/enterpriseInfo/index', '', 'form', '2', '1', '0', 'enterpriseInfo.indx', null, '33', '2018-09-10 11:19:50', '33', '2018-09-10 11:19:50');
INSERT INTO `sys_menu` VALUES ('9ce28f94b6e14659a43f979ae792a3c8', '0f16c762326342bf9028dcd73d177f3c', '', '1', '1', '1', '1', '', '1', '1', '2', '1', '', null, '33', '2018-09-17 14:14:56', '33', '2018-09-17 14:15:01');
INSERT INTO `sys_menu` VALUES ('a23d7eadd52f42bc9fac20f0251f8d98', '493383d370014b7ab4aacfb7f69e84bc', 'a0b37036e239423bb5f574ec99b690c7', '2', '3', '1', '4', '', '5', '1', '1', '1', '爽肤水', null, '33', '2018-09-21 15:06:29', '33', '2018-09-21 15:06:47');
INSERT INTO `sys_menu` VALUES ('a5d95e8ad75a4122ae64ca11e0e70a93', 'e4eaa4c5d8c64b5280938f54a63c830c', '', 'sdf', 'sdf', '1', '/email/sfsdfsdf/sfsdf', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-11 14:47:21', '33', '2018-09-11 14:47:32');
INSERT INTO `sys_menu` VALUES ('ad5e13543a294f699fbcc24265c4ce75', '1db79efe54144dc99a3952ee6ff25701', '', '基础信息', 'baseMessage', '1', '/base', '', '', '0', '1', '1', '基础信息', null, '33', '2018-09-13 14:05:18', '33', '2018-09-13 14:07:41');
INSERT INTO `sys_menu` VALUES ('b159c29d7c194373a128c8a8868e580b', 'fe3028648f6040728cd13c85b7f176be', '', '测试', 'test', '1', '/test', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-12 13:18:12', '33', '2018-09-12 13:18:18');
INSERT INTO `sys_menu` VALUES ('b19d7cffde8d4c49b8ed90864757a9fa', '41028f1bdc254f24b38f2eb5f572421c', '', 'sdf', 'sdf', '1', '/sd', '', 'sdf', '2', '1', '1', 'sdf', null, '33', '2018-10-18 10:34:06', '33', '2018-10-18 10:34:12');
INSERT INTO `sys_menu` VALUES ('b51ba63351d74f0eb5a174b15684c0b1', '96141b02268e4705b98eb45ca65affac', '', '药物信息-上市前', 'aaa', '1', '/preDrug/index', '', '', '1', '1', '1', '', null, '33', '2018-09-12 13:19:28', '33', '2018-09-13 14:27:44');
INSERT INTO `sys_menu` VALUES ('b6c5e48dfe6b4c9a8be1a3f946f64cfb', '58463887615c4a54815f9f83625c02ec', '2cd9f888aede41419c6efe2a641ca1f1', 'test', 'test', '2', '', '删除', 'form', '1', '1', '1', '1', null, '33', '2018-09-11 14:34:26', '33', '2018-09-12 09:07:32');
INSERT INTO `sys_menu` VALUES ('c0b866d3c99a4279acbdefd8bfaa76a7', '3ba6e0e0fc33464e8317cb38e14537eb', '', '工作流', 'Workflow', '1', '/Workflow', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-10 14:45:07', '33', '2018-09-13 14:27:54');
INSERT INTO `sys_menu` VALUES ('c4f7dd90fe7b4c9ba38b964108b3fe9c', 'ebcd8028d5444e6886157ef8ba6c57b4', '', '邮箱配置', 'email', '1', '/email', '', 'tree', '0', '1', '1', 'email', null, '33', '2018-09-10 11:22:44', '33', '2018-09-13 14:10:01');
INSERT INTO `sys_menu` VALUES ('c9ca44b7c360462db2719d45f184d27e', 'b901bff502414927a2b2fe0cb0f7328f', '9f7225dcf0b748b3b94908e4457e7cef', 'test', 'test', '2', 'test', '', 'test', '1', '2', '1', 'test', null, '33', '2018-09-10 17:37:51', '33', '2018-09-11 14:52:08');
INSERT INTO `sys_menu` VALUES ('cce78f83afd34a65a6e1bf5167724d02', '1aeb4779df6940a6b92f1c7fb2ee946a', 'b42a5b673b774688add97ceaf13f0698', '上市前药品信息', 'preDrug', '1', '/preDrug/index', '', '', '3', '1', '0', '/preDrug/index', null, '33', '2018-09-13 14:14:21', '33', '2018-09-13 14:14:21');
INSERT INTO `sys_menu` VALUES ('cf55a3c9a4b8425a93acbb586291e9f7', 'f538197465f14f9b870f661fd4407549', '', '检索任务管理', 'retrievalTask', '1', '/retrievalTask/index', '', 'el-icon-info', '0', '1', '0', '检索任务管理', null, '33', '2018-10-18 10:35:51', '33', '2018-10-18 10:35:51');
INSERT INTO `sys_menu` VALUES ('d5592402086c4182b26bb5fb9a36c423', 'a0b37036e239423bb5f574ec99b690c7', '', '测试菜单', 'sfsf爽肤水', '1', '/roles', '', '是非得失', '1', '2', '0', '乌尔亢', null, '33', '2018-09-17 17:04:49', '33', '2018-09-21 15:06:11');
INSERT INTO `sys_menu` VALUES ('dc6bb55c610141d6a1a5bd4b8d954533', '859824ce1b354484b31d926a3320e1a3', 'c5da4b34ec2d47b1ad016bbd483cb86b', '邮箱配置', 'email', '1', '/email/index', '', '', '3', '1', '0', '3', null, '33', '2018-09-13 14:26:32', '33', '2018-09-13 14:26:32');
INSERT INTO `sys_menu` VALUES ('e18224705a0b42528c641c62fa32a32c', '1f0572716ef2454081c6371b4261b1e8', '', '1', '1', '1', '1', '', '1', '1', '1', '1', '', null, '33', '2018-09-11 17:50:16', '33', '2018-09-11 17:50:22');
INSERT INTO `sys_menu` VALUES ('e43c3fdf7f9848f59444888cf24e7fb7', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '', '角色管理', 'roles', '1', '/roles', '', 'tree', '4', '1', '0', 'tree', null, '33', '2018-09-10 11:28:17', '33', '2018-09-13 14:43:49');
INSERT INTO `sys_menu` VALUES ('e4d1de0d77424c40874bc2c84f2bb66c', 'ab4bba83523d4da79b66c46ba560d8f2', '', '测试', 'test', '1', '/email/index', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-11 14:13:23', '33', '2018-09-11 14:26:28');
INSERT INTO `sys_menu` VALUES ('e99d808d9ce041f2a9cc43f018656a1c', '93fa07c3f25e472bbe6b0b8c0458ab53', '1037955588645281793', 'test', 'test', '1', 'test', '', 'test', '1', '1', '1', '1', null, '33', '2018-09-11 19:00:23', '33', '2018-09-11 19:01:30');
INSERT INTO `sys_menu` VALUES ('eaf375040462414186230c4e10c9117b', '528d9514c59049d994433a8a82b3f995', '', '药品信息-上市后', 'bbb', '1', '/postDrug/index', '', '', '1', '1', '1', '', null, '33', '2018-09-12 13:21:17', '33', '2018-09-13 14:27:47');
INSERT INTO `sys_menu` VALUES ('eafaea376ccf434789e1657f8481deca', 'b42a5b673b774688add97ceaf13f0698', '', '基础信息', 'baseMessage', '1', '/base', '', '', '1', '1', '0', 'base', null, '33', '2018-09-13 14:07:27', '33', '2018-09-13 14:43:32');
INSERT INTO `sys_menu` VALUES ('ee9b7bd3b2a04f8099efc947cd27bdbf', 'f7c1d1c923ab42629bfe543b33da0d2a', '9f7225dcf0b748b3b94908e4457e7cef', 'test', 'test', '1', '/test', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-11 14:31:55', '33', '2018-09-11 16:27:35');
INSERT INTO `sys_menu` VALUES ('f2bf4675f8a44c14a98765ed28344b4e', 'c74ae8cb0caa43599f196533dde11a60', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '角色管理', 'index', '1', '/roles/index', '', 'tree', '2', '1', '0', 'index', null, '33', '2018-09-10 11:30:21', '33', '2018-09-10 11:30:21');
INSERT INTO `sys_menu` VALUES ('f8d627f276654603932c09884e4040e5', '68cf608f21c7476fac9d0213ba1778e2', '', '项目成员', 'PjtMembers', '1', '/PjtMembers/index', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-10 15:09:32', '33', '2018-09-13 14:27:36');
INSERT INTO `sys_menu` VALUES ('fa41feefea9e4230b3cc7b231a3a9b5d', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '', '项目信息', 'PjtInfmt', '1', '/PjtInfmt', '', 'form', '1', '1', '1', 'PjtInfmt', null, '33', '2018-09-10 11:16:50', '33', '2018-09-13 14:28:14');
INSERT INTO `sys_menu` VALUES ('fefc7989a97146ea80b303d7a61bb167', 'c5da4b34ec2d47b1ad016bbd483cb86b', '', '系统管理', 'System Management', '1', '/system', '', '', '2', '1', '0', 'system', null, '33', '2018-09-11 09:57:00', '33', '2018-09-13 14:43:36');

-- ----------------------------
-- Table structure for sys_project
-- ----------------------------
DROP TABLE IF EXISTS `sys_project`;
CREATE TABLE `sys_project` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `project_code` varchar(100) DEFAULT NULL COMMENT '项目编号',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `research_name` varchar(100) DEFAULT NULL COMMENT '研究方案名称',
  `study_drug` varchar(150) DEFAULT NULL COMMENT '其他研究用药',
  `bid_id` char(32) DEFAULT NULL COMMENT '申办方Id',
  `research_type` int(4) DEFAULT NULL COMMENT '临床研究分类',
  `research_type_subdivision` int(4) DEFAULT NULL COMMENT '研究类型细分',
  `indication` text COMMENT '临床实验适应症',
  `research_comments` varchar(100) DEFAULT NULL COMMENT '新药物临床研究批准文号',
  `research_design` int(4) DEFAULT NULL COMMENT '研究设计',
  `start_time` varchar(30) DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(30) DEFAULT NULL COMMENT '结束时间',
  `product_classification` int(4) DEFAULT NULL COMMENT '产品分类',
  `registration_classification` int(4) DEFAULT NULL COMMENT '注册分类',
  `delete_status` tinyint(4) DEFAULT '0' COMMENT '删除状态：0正常，1-关闭',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_project
-- ----------------------------
INSERT INTO `sys_project` VALUES ('13', 'xxx-32894', '62', '222', '其他研究用药', '申办方', '7', '7', '临床实验适应症', '新药临床研究批准文号', '3', '2018-09-18 17:08:36', '2018-10-30 17:08:28', '4', '4', '0', null, 'wq', '2018-08-23 10:21:44', null, null);
INSERT INTO `sys_project` VALUES ('17', 'xxx-32894', '62', '222', '其他研究用药', '申办方', '7', '8', '临床实验适应症', '新药临床研究批准文号', '2', '2018-09-17 17:08:36', '2018-09-16 17:08:28', '2', '4', '0', null, null, '2018-09-17 10:09:16', null, null);

-- ----------------------------
-- Table structure for sys_receiver
-- ----------------------------
DROP TABLE IF EXISTS `sys_receiver`;
CREATE TABLE `sys_receiver` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `receiver_identifier` varchar(100) DEFAULT NULL COMMENT '接收者标识',
  `receiver_name` varchar(100) DEFAULT NULL COMMENT '接收者名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '接收者备注',
  `delete_status` int(1) DEFAULT NULL COMMENT '删除状态：1.未删除 2.删除',
  `receiver_forbidden` int(11) DEFAULT NULL COMMENT '接收者状态： 1、启用 2、禁止',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接收者信息';

-- ----------------------------
-- Records of sys_receiver
-- ----------------------------
INSERT INTO `sys_receiver` VALUES ('03c86e56dac541d7bf2abf456ba78fd1', '62', '=uiiuiuiu', '21212121', '212', '2', '1', null, 'ybb', '2018-08-22 16:03:50', 'ybb', '2018-09-10 18:09:07');
INSERT INTO `sys_receiver` VALUES ('1111', '62', 'aa11111', '李四', '开发', '2', '1', null, null, '2018-08-22 10:28:50', 'ybb', '2018-08-22 15:00:07');
INSERT INTO `sys_receiver` VALUES ('1497556dacca43219c879bf9e8afcbae', '62', '2018MEDRI000277', 'test', '1', '2', '1', null, 'ybb', '2018-09-04 13:46:19', 'ybb', '2018-09-10 18:09:07');
INSERT INTO `sys_receiver` VALUES ('14e39118f798443c86aa0b1eecf5642f', '62', 'Sfsfsfsfsfd135646464645646656564545etertretjfgjfjhfgh4594dgdfgd', '接收者11', '备注111', '2', '1', null, 'ybb', '2018-09-11 16:50:02', '33', '2018-09-21 13:31:54');
INSERT INTO `sys_receiver` VALUES ('194495becca845c3afd9c96262645fdc', '62', '2018MEDRI000286', '212323', '21', '2', '1', null, 'ybb', '2018-09-04 19:38:44', 'ybb', '2018-09-10 18:09:07');
INSERT INTO `sys_receiver` VALUES ('1ede55a757e6477db14f7e2a520d4631', '62', '2018MEDRI000091', '2121', '221', '2', '1', null, 'ybb', '2018-08-22 15:00:17', 'ybb', '2018-08-22 15:00:34');
INSERT INTO `sys_receiver` VALUES ('25e5ca09315b45868a8029de87d61035', '62', 'ssss212444', '麻子', '麻子', '2', '1', null, 'wuqian', '2018-08-22 10:33:33', 'ybb', '2018-08-22 14:44:54');
INSERT INTO `sys_receiver` VALUES ('2cbbaa64fa9343909f4b7ef3c7257ece', '62', 'Sfsfsfsfsfd135646464645646656564545etertretjfgjfjhfgh4594dgdfgd', '去', '1', '2', '1', null, 'ybb', '2018-09-06 18:05:35', '33', '2018-09-21 13:31:55');
INSERT INTO `sys_receiver` VALUES ('370c3637dbe94adaa05ddc5ee26bb816', '62', '2018MEDRI000298', '1', '1', '2', '1', null, 'ybb', '2018-09-05 15:00:25', 'ybb', '2018-09-10 18:09:20');
INSERT INTO `sys_receiver` VALUES ('3b86eca4a6ea48c1bf2475589caf8339', '62', null, null, null, '2', '1', null, 'ybb', '2018-09-03 13:17:10', 'ybb', '2018-09-04 13:46:23');
INSERT INTO `sys_receiver` VALUES ('4d2875569222443f979b95ba3dd8402c', '62', '2018MEDRI000597', '接收者2', '备注2', '2', '1', null, 'ybb', '2018-09-11 16:55:48', 'ybb', '2018-09-13 18:27:02');
INSERT INTO `sys_receiver` VALUES ('57baad2384b24cf4bfd516c0d681945a', '62', '2018MEDRI000276', '121', '1', '2', '1', null, 'ybb', '2018-09-04 13:46:02', 'ybb', '2018-09-11 16:56:26');
INSERT INTO `sys_receiver` VALUES ('6d8bc9b51a534cb19f65e8ff790903f8', '62', '2018MEDRI000097', '22323', '1212', '2', '1', null, 'ybb', '2018-08-22 15:05:36', 'ybb', '2018-08-22 15:27:48');
INSERT INTO `sys_receiver` VALUES ('78eb66d0433c402e91a276e5e55042b1', '62', 'Sfsfsfsfsfd135646464645646656564545etertretjfgjfjhfgh4594dgdfgd', '刚发的', '电风扇', '2', '1', null, 'jerry', '2018-09-21 14:29:18', 'jerry', '2018-09-29 14:49:09');
INSERT INTO `sys_receiver` VALUES ('80449f2f9e7a4e269104b40d9277ee49', '62', '2018MEDRI000098', '接收者名字', '4444', '2', '1', null, 'ybb', '2018-08-22 15:05:46', 'ybb', '2018-09-10 18:09:22');
INSERT INTO `sys_receiver` VALUES ('88e0e9b63eb743cf9ddb75381de894c4', '62', '2018AAAARI00000833333333333333333333333333333333333333333336', '接受者4', '爽肤水', '2', '1', null, 'ybb', '2018-09-11 17:07:05', 'ybb', '2018-09-13 18:27:01');
INSERT INTO `sys_receiver` VALUES ('964eddac20154a04ae904184d55d0b1d', '62', '2018MEDRI000076', '梅斯医学', '备注', '2', '1', null, 'ybb', '2018-08-22 14:37:34', 'ybb', '2018-08-22 15:00:10');
INSERT INTO `sys_receiver` VALUES ('a992209cf7de43a4bda968f59b6a4a44', '62', '2018MEDRI000365', '1', '1', '2', '1', null, 'ybb', '2018-09-06 09:46:43', 'ybb', '2018-09-11 10:32:06');
INSERT INTO `sys_receiver` VALUES ('aa75324ade7a4b9b81923545fea9fa76', '62', '2018MEDRI000347', '21', '212', '2', '1', null, 'ybb', '2018-09-05 19:53:59', 'ybb', '2018-09-11 16:56:21');
INSERT INTO `sys_receiver` VALUES ('bc53859844b44b89b6168c4d1ea912f0', '62', '2018MEDRI000434', '21', '21', '2', '1', null, 'ybb', '2018-09-07 09:48:07', 'ybb', '2018-09-13 18:27:00');
INSERT INTO `sys_receiver` VALUES ('cd0745d429b94973b803883d26e11c77', '62', '2018MEDRI000354', '1', '1', '2', '1', null, 'ybb', '2018-09-05 20:43:55', 'ybb', '2018-09-13 18:26:59');
INSERT INTO `sys_receiver` VALUES ('df3607f8d1d847bdbe10b697788c338b', '62', '2018MEDRI000127', '江湖啊', '2121', '2', '1', null, 'ybb', '2018-08-24 09:31:25', 'ybb', '2018-09-13 18:26:57');
INSERT INTO `sys_receiver` VALUES ('e407bd59f13f4155b0ccc852964a7ebd', '62', '2018MEDRI000081', '212121', null, '2', '1', null, 'ybb', '2018-08-22 14:39:19', 'ybb', '2018-08-22 14:44:56');
INSERT INTO `sys_receiver` VALUES ('eb4a3e3f1f414c9d8543e09a41d58db9', '62', '2018MEFSDFSFSFDSFSDFDSFDSFDSDRI000732', '接收者A', '师傅的说法是否收到', '2', '1', null, 'jerry', '2018-09-17 15:14:27', '33', '2018-09-21 13:31:56');
INSERT INTO `sys_receiver` VALUES ('ee4724bbb03644d9a6000a979e656a24', '62', '2018MEDRI000287', 'jianghua ', '1', '2', '1', null, 'ybb', '2018-09-04 19:38:52', 'ybb', '2018-09-13 18:26:55');
INSERT INTO `sys_receiver` VALUES ('ef09fc0345774b909096ad40bb169321', '62', '2018MEDRI000087', '生物谷112222', '备注', '2', '1', null, 'ybb', '2018-08-22 14:51:10', 'ybb', '2018-09-10 18:09:25');
INSERT INTO `sys_receiver` VALUES ('fd17a8dabeb14658aee3998fe00ba47a', '62', '2018MEDRI000888', '防守打法', '爽肤水', '1', '1', null, 'jerry', '2018-09-21 14:27:55', 'jerry', '2018-09-21 14:28:00');

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `role_code` varchar(32) NOT NULL COMMENT '角色编号',
  `role_name` varchar(32) NOT NULL COMMENT '角色名称',
  `role_display_name` varchar(32) NOT NULL COMMENT '角色显示名称',
  `role_belongs` int(11) NOT NULL COMMENT '角色所属',
  `role_delete` int(11) DEFAULT NULL COMMENT '删除状态(0:删除，1:未删除)',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('1037285675874807808', 'sdf', 'sdf', 'sf', '1', '0', 'sdf', null, 'medsci', '2018-09-05 18:25:52', 'medsci', '2018-09-05 18:49:10');
INSERT INTO `sys_roles` VALUES ('1037289553102008320', 'df', 'fg', 'dfg', '1', '0', 'dfg', null, 'medsci', '2018-09-05 18:41:16', 'medsci', '2018-09-05 18:49:37');
INSERT INTO `sys_roles` VALUES ('1037290094469214208', 'dfgd', 'fg', 'dfg', '1', '0', 'dfg', null, 'medsci', '2018-09-05 18:43:25', 'medsci', '2018-09-05 18:49:12');
INSERT INTO `sys_roles` VALUES ('1037290273477914624', 'fgdf', 'dfg', 'dfg', '1', '0', 'dfg', null, 'medsci', '2018-09-05 18:44:08', 'medsci', '2018-09-05 18:49:19');
INSERT INTO `sys_roles` VALUES ('1037290548284518400', 'dgf', 'dfg', 'dfg', '1', '0', 'dfg', null, 'medsci', '2018-09-05 18:45:13', 'medsci', '2018-09-05 18:49:22');
INSERT INTO `sys_roles` VALUES ('1037291057745653760', 'fdfg', 'dfg', 'sdf', '1', '0', 'sdf', null, 'medsci', '2018-09-05 18:47:15', 'medsci', '2018-09-05 18:49:29');
INSERT INTO `sys_roles` VALUES ('1037291212737769472', 'gf', 'dfg', 'dfg', '1', '0', 'dfg', null, 'medsci', '2018-09-05 18:47:52', 'medsci', '2018-09-05 18:49:32');
INSERT INTO `sys_roles` VALUES ('1037291389116641280', 'fg', 'df', 'dfg', '1', '0', 'dfg', null, 'medsci', '2018-09-05 18:48:34', 'medsci', '2018-09-05 18:49:34');
INSERT INTO `sys_roles` VALUES ('1037291759536599040', 'fg123', 'fg123', 'fg123', '3', '0', 'fg123', null, 'medsci', '2018-09-05 18:50:02', 'medsci', '2018-09-06 10:08:11');
INSERT INTO `sys_roles` VALUES ('1037291816507830272', 'fg', 'dfg', 'dfg', '1', '0', 'dfg', null, 'medsci', '2018-09-05 18:50:16', 'medsci', '2018-09-06 10:08:24');
INSERT INTO `sys_roles` VALUES ('1037294888109895680', '32', '23', '323', '2', '0', '32', null, 'medsci', '2018-09-05 19:02:28', 'medsci', '2018-09-06 10:08:14');
INSERT INTO `sys_roles` VALUES ('1037295382630920192', '123', 'gd', 'dfg', '1', '0', 'dfg', null, 'medsci', '2018-09-05 19:04:26', 'medsci', '2018-09-06 10:08:16');
INSERT INTO `sys_roles` VALUES ('1037295819002114048', 'pv001', 'ds', 'sdf', '1', '0', 'sdf', null, 'medsci', '2018-09-05 19:06:10', 'medsci', '2018-09-06 10:08:18');
INSERT INTO `sys_roles` VALUES ('1037305735469146112', '21', '21', '1', '62', '0', '1', null, 'medsci', '2018-09-05 19:45:34', 'medsci', '2018-09-06 10:08:20');
INSERT INTO `sys_roles` VALUES ('1037320969525293056', '312', '测试', 'sdf', '1', '0', 'sdf', null, 'medsci', '2018-09-05 20:46:06', 'medsci', '2018-09-06 13:56:55');
INSERT INTO `sys_roles` VALUES ('1037524797054939136', 'roleCode', '角色名称', '角色展示名', '62', '0', '胜多负少的12', null, 'medsci', '2018-09-06 10:16:03', 'medsci', '2018-09-06 13:55:36');
INSERT INTO `sys_roles` VALUES ('1037524947995357184', 'roleCode', 'dfg', 'fd', '999999', '0', 'dfg', null, 'medsci', '2018-09-06 10:16:39', 'medsci', '2018-09-06 10:17:08');
INSERT INTO `sys_roles` VALUES ('1037525172403204096', 'roleCode', 'r', 'df', '999999', '0', 'sdf', null, 'medsci', '2018-09-06 10:17:32', 'medsci', '2018-09-06 10:17:47');
INSERT INTO `sys_roles` VALUES ('1037527572321038336', '测试1', '角色名称', '角色展示名', '1', '0', '从自行车', null, 'medsci', '2018-09-06 10:27:04', 'medsci', '2018-09-06 13:56:01');
INSERT INTO `sys_roles` VALUES ('1037528745409146880', '发过火', '发过火', '发过火', '999999', '0', '发过火', null, 'medsci', '2018-09-06 10:31:44', 'medsci', '2018-09-06 10:32:22');
INSERT INTO `sys_roles` VALUES ('1037528988439703552', '双方都', 'sdf', '电风扇', '999999', '0', '地方', null, 'medsci', '2018-09-06 10:32:42', 'medsci', '2018-09-06 10:33:10');
INSERT INTO `sys_roles` VALUES ('1037529231835164672', '大概', '电饭锅', '电饭锅', '62', '0', '电饭锅', null, 'medsci', '2018-09-06 10:33:40', 'medsci', '2018-09-06 13:55:58');
INSERT INTO `sys_roles` VALUES ('1037541527652601856', 'roleCode1', 'roleName', 'sfd角色展示名', '62', '0', 'df', null, 'medsci', '2018-09-06 11:22:31', 'medsci', '2018-09-06 13:55:39');
INSERT INTO `sys_roles` VALUES ('1037541814169702400', '角色编码', '角色名称', '角色展示名', '62', '0', '123', null, 'medsci', '2018-09-06 11:23:40', 'medsci', '2018-09-06 11:25:30');
INSERT INTO `sys_roles` VALUES ('1037542354874208256', 'test', 'test1', 'test1', '62', '0', 'test12', null, 'medsci', '2018-09-06 11:25:49', 'medsci', '2018-09-06 11:27:36');
INSERT INTO `sys_roles` VALUES ('1037542856768819200', 'test', 'test', 'teset', '62', '0', 'test', null, 'medsci', '2018-09-06 11:27:48', 'medsci', '2018-09-06 13:55:56');
INSERT INTO `sys_roles` VALUES ('1037543382117978112', 'fg', 'fgh', 'fg', '62', '0', 'fgh', null, 'medsci', '2018-09-06 11:29:54', 'medsci', '2018-09-06 13:55:54');
INSERT INTO `sys_roles` VALUES ('1037544581269491712', 'hj4', '3', '43', '62', '0', '34444', null, 'medsci', '2018-09-06 11:34:39', 'medsci', '2018-09-06 13:55:51');
INSERT INTO `sys_roles` VALUES ('1037545095008817152', 'shasha', 'shasha1', 'sd34', '62', '0', 'sdf23', null, 'medsci', '2018-09-06 11:36:42', 'medsci', '2018-09-06 11:38:33');
INSERT INTO `sys_roles` VALUES ('1037549715435921408', '角色编码', '角色名称', '角色展示名', '1', '0', 'czc123', null, 'medsci', '2018-09-06 11:55:04', 'medsci', '2018-09-06 13:55:49');
INSERT INTO `sys_roles` VALUES ('1037550184447188992', 'qwer', 'qwer123123', 'qwer123123', '1', '0', 'qwer123213', null, 'medsci', '2018-09-06 11:56:55', 'medsci', '2018-09-06 13:55:46');
INSERT INTO `sys_roles` VALUES ('1037551063346814976', 'sdf', 'sdf', 'sdf', '1', '0', 'sdf', null, 'medsci', '2018-09-06 12:00:25', 'medsci', '2018-09-06 13:55:44');
INSERT INTO `sys_roles` VALUES ('1037551182712512512', 'qwerqwer', 'qwerqwer', 'qwerqwert', '999999', '0', 'zxcz', null, 'medsci', '2018-09-06 12:00:53', 'medsci', '2018-09-06 13:55:42');
INSERT INTO `sys_roles` VALUES ('1037580292118740992', '角色编码', '角色名称12', '角色展示名123', '1', '0', 'saassds123', null, 'medsci', '2018-09-06 13:56:34', 'medsci', '2018-09-07 10:09:00');
INSERT INTO `sys_roles` VALUES ('1037599497244454912', 'cro2', '测试角色', '角色验证', '62', '1', '1', null, 'medsci', '2018-09-06 15:12:52', '33', '2018-09-17 16:48:44');
INSERT INTO `sys_roles` VALUES ('1037884744961540096', 'PV001', '数据录入员角色1', '数据录入员1', '1', '0', '角色备注111', null, 'medsci', '2018-09-07 10:06:21', '33', '2018-09-17 16:43:00');
INSERT INTO `sys_roles` VALUES ('1038973788937871360', 'cro', 'test', '不许改的测试角色', '1', '0', '1', null, 'medsci', '2018-09-10 10:13:49', '33', '2018-09-17 16:38:11');
INSERT INTO `sys_roles` VALUES ('147498347052413d84b277840e680771', '5678', '88', '99', '999999', '0', '舒服舒服', null, '33', '2018-09-18 17:51:18', '33', '2018-10-18 13:30:50');
INSERT INTO `sys_roles` VALUES ('4ee416790e5f403494e6cf08c163db1f', '1003', '数据质控QC', '数据质控QC', '1', '1', '1003', null, '33', '2018-09-10 13:38:30', '33', '2018-09-10 13:44:52');
INSERT INTO `sys_roles` VALUES ('574fb69e838e4b1cb74defe1a2c79cda', '1001', '资料管理员', '资料管理员', '1', '1', '1001', null, '33', '2018-09-10 13:34:04', '33', '2018-09-10 13:45:01');
INSERT INTO `sys_roles` VALUES ('6775fab03af44a3cb6540e99a7a2480d', '1005', '医学评审QC', '医学评审QC', '1', '1', '1005', null, '33', '2018-09-10 13:40:30', '33', '2018-09-10 13:45:11');
INSERT INTO `sys_roles` VALUES ('7868fa788ad846bd9b81755d70b63a74', '4567', '345', '345', '1', '0', '345事故的事故的广泛地', null, '33', '2018-09-14 16:55:07', '33', '2018-09-18 14:02:13');
INSERT INTO `sys_roles` VALUES ('9cb6f5ff0e8d4b7bb2eed606b6140488', '1004', '医学评审', '医学评审', '1', '1', '1004', null, '33', '2018-09-10 13:39:43', '33', '2018-09-10 13:45:21');
INSERT INTO `sys_roles` VALUES ('a3bb55a11832493bbbaa50a036f2368c', '1000', '角色查验7', '角色查验7', '999999', '0', '角色查验6', null, '33', '2018-09-18 15:29:07', '33', '2018-10-18 13:51:38');
INSERT INTO `sys_roles` VALUES ('a514657ef3db4bf0a8fd12136699b16c', '1234', '234', '234', '999999', '0', '324', null, '33', '2018-09-18 17:42:29', '33', '2018-10-18 13:30:55');
INSERT INTO `sys_roles` VALUES ('cb692d02fa0f48fc85d52104ce62465a', '1002', '数据录入员', '数据录入员', '999999', '1', '1002\n', null, '33', '2018-09-10 13:37:19', '33', '2018-09-10 13:37:42');
INSERT INTO `sys_roles` VALUES ('d189d810dac34e46bcd9ade59f54f16f', '1234', '更好', '规划局', '999999', '0', '规划局', null, '33', '2018-09-14 16:53:35', '33', '2018-09-17 16:48:55');
INSERT INTO `sys_roles` VALUES ('ee9c0f6430294ef99c6e3879c7bf1a35', '1006', '报告递交', '报告递交', '999999', '1', '1006', null, '33', '2018-09-10 13:41:07', '33', '2018-10-18 13:31:13');

-- ----------------------------
-- Table structure for sys_sender
-- ----------------------------
DROP TABLE IF EXISTS `sys_sender`;
CREATE TABLE `sys_sender` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `sender_identifier` varchar(100) DEFAULT NULL COMMENT '发送者标识',
  `company_id` char(32) DEFAULT NULL COMMENT '公司id',
  `sender_name` varchar(100) DEFAULT NULL COMMENT '发送者名称',
  `sender_type` int(4) DEFAULT NULL COMMENT '发送者类型',
  `sender_organisation` varchar(100) DEFAULT NULL COMMENT '发送者机构',
  `sender_department` varchar(100) DEFAULT NULL COMMENT '发送者的部门',
  `sender_position` varchar(100) DEFAULT NULL COMMENT '发送者职位',
  `sender_country` varchar(5) DEFAULT NULL COMMENT '发送者国家',
  `sender_province` varchar(100) DEFAULT NULL COMMENT '发送者省/市',
  `sender_city` varchar(100) DEFAULT NULL COMMENT '城市(国家编码)',
  `sender_address` varchar(100) DEFAULT NULL COMMENT '发送者地址',
  `sender_zip_code` varchar(15) DEFAULT NULL COMMENT '发送者邮编',
  `sender_telephone` varchar(15) DEFAULT NULL COMMENT '发送者电话',
  `sender_fax` varchar(33) DEFAULT NULL COMMENT '发送者传真',
  `sender_email` varchar(33) DEFAULT NULL COMMENT '电子邮箱',
  `sender_default` int(2) DEFAULT NULL COMMENT '是否默认：1：是，2：否',
  `delete_status` int(2) DEFAULT NULL COMMENT '是否删除？1：是，2：否',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发送者信息';

-- ----------------------------
-- Records of sys_sender
-- ----------------------------
INSERT INTO `sys_sender` VALUES ('047297eb5c614722a06c65e576fdbfac', '2018MEDSI000103', '62', '21', '2', '2121', null, null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-09-12 09:25:09', null, null);
INSERT INTO `sys_sender` VALUES ('10c0dc01b50547218ef8fd89064ef391', '2018MEDSI000104', '62', 'test', '1', '击鼓', null, null, null, null, null, null, '4444', '222', '发送', '佛挡杀佛', '2', '1', null, null, '2018-09-12 09:25:27', null, null);
INSERT INTO `sys_sender` VALUES ('1111', 'ss1111', '62', '张三', '1', '开发', '开发', 'java', '中国', '上海', '上海', '光启城', '121212', '12345678912', '21212', '212', '2', '1', null, null, null, null, null);
INSERT INTO `sys_sender` VALUES ('11a5e04dd0e84ff2a686a3b0f2db5e04', '2018MEDSI000119', '62', '测试23', '1', '电饭锅', '电饭锅', '法规', '1', '6', '地方', '电饭锅', '234', '234', '34', '432', '2', '1', null, null, '2018-09-18 15:42:11', null, null);
INSERT INTO `sys_sender` VALUES ('2c05aa4b71824cce903b4b014308a15c', '2018MEDSI000288', '62', '讲话', '21', '1', null, '21', '1', '1', '21', '21', '21', '212', '21', '212', '2', '1', null, null, '2018-09-04 19:45:17', null, null);
INSERT INTO `sys_sender` VALUES ('2fcfbf02d848468eb68f5c08bfbb4c92', '2018MEDSI000055', '62', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, '1', '1', null, null, '2018-09-06 09:42:49', null, null);
INSERT INTO `sys_sender` VALUES ('35c6b5c7d9c54b30bef6cb3b1e7e322c', '2018MEDSI000105', '62', '21', '1', '212', null, null, null, null, null, null, null, '11111111111111', null, null, '2', '1', null, null, '2018-09-12 09:25:46', null, null);
INSERT INTO `sys_sender` VALUES ('3b8ac6a82a894a14bd0d31ff344a92be', '2018MEDSI000137', '62', '与润体乳', '2', '呱唧呱唧', null, null, null, null, null, null, null, null, '895-12345678', null, '2', '2', null, null, '2018-09-21 17:51:40', null, null);
INSERT INTO `sys_sender` VALUES ('40aaaf33f1bf4378a1b61c85ff8015f0', '2018MEDSI000058', '62', '发送者1', '21', '机构1', '部门1', '21', '1', '1', '1', '1', '1', '13112345678', '1', '1', '2', '2', null, null, '2018-09-06 10:01:09', null, null);
INSERT INTO `sys_sender` VALUES ('4843f9841d8a4af8bcc1e51150bee1d2', '2018MEDSI000289', '62', '212', '2', '212', '212', '212', '1', '1', '2121', '2121', '1212', '212', '1', '1', '2', '1', null, null, '2018-09-04 20:07:03', null, null);
INSERT INTO `sys_sender` VALUES ('5819e8ebba5b46ddb9ea407beb214004', '2018MEDSI000029', '62', '1221212', '2', '2121212', null, null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-08-22 14:26:28', null, null);
INSERT INTO `sys_sender` VALUES ('5b1c4760614743be8d7fe0b9d32ff592', null, '62', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-08-22 13:30:43', null, null);
INSERT INTO `sys_sender` VALUES ('659a658b94ba40df8793d89df930f44f', '2018MEDSI000028', '62', '232', '32323', '32323', null, null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-08-22 14:25:10', null, null);
INSERT INTO `sys_sender` VALUES ('6c608d9621724762915bfde45b96725f', '2018MEDSI000117', '62', '发送者B', '7', '发送者机构B', null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, '2018-09-17 15:06:02', null, null);
INSERT INTO `sys_sender` VALUES ('745da395a8914d36870deab583e0d680', '2018MEDSI000006', '62', '212', '21212', '212121', '21212', '1212', '1', '212121', '212121', '2121', '12121', '212121', '21212121', null, '2', '1', null, null, '2018-08-21 15:32:17', null, null);
INSERT INTO `sys_sender` VALUES ('79b7d60da9dc4dd681c53d2792fbdd62', '2018MEDSI000107', '62', '刘强东', '1', '1', null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, '2018-09-12 10:15:55', null, null);
INSERT INTO `sys_sender` VALUES ('7efc028e3f8146d79f3d963d0e1c5389', '2018MEDSI000116', '62', '发送者A', '5', '发送者机构A', '部门A', '职位A', '1', '2', '上海', '松江区泽悦路388号909', '20010', '13112345678', '+86 21 6408 5875', 'hui.shao@medsci.cn', '2', '2', null, null, '2018-09-17 15:05:40', null, null);
INSERT INTO `sys_sender` VALUES ('96a90b9d0b87463087ea153684bccff3', '2018MEDSI000078', '62', '1', '1', '1', '1', null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-09-07 18:27:56', null, null);
INSERT INTO `sys_sender` VALUES ('bf00dcf5bea446408ca98af9995f0e24', '2018MEDSI000106', '62', '21', '2', '21', null, null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-09-12 10:15:28', null, null);
INSERT INTO `sys_sender` VALUES ('c50cfa46fe694c938069ba48a996eb3c', '2018MEDSI000053', '62', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-09-05 20:43:48', null, null);
INSERT INTO `sys_sender` VALUES ('c5f5c4ed3e0c41798f5676e1940bf175', '2018MEDSI000098', '62', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-09-11 19:02:30', null, null);
INSERT INTO `sys_sender` VALUES ('cb69e6763d3b461a8fa3429d171f758e', '2018MEDSI000114', '62', '发发发', '3', '爽肤水', null, null, null, null, null, null, null, null, null, null, '2', '1', null, null, '2018-09-17 11:08:31', null, null);
INSERT INTO `sys_sender` VALUES ('d175bbf0f906486f806f1975c7f1fe14', '21', '62', '21', '1', '2121', null, null, null, null, null, null, null, null, null, null, '2', '1', null, 'ybb', '2018-08-22 14:21:37', null, null);
INSERT INTO `sys_sender` VALUES ('d2387e982a1e4be69f4f4b53e779b89f', '2018MEDSI000121法规和法国风格法国话费', '62', '恢复供货', '1', '发过火', null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, '2018-09-18 17:16:02', null, null);
INSERT INTO `sys_sender` VALUES ('dbabf7f1cd8c4db1b9f4770dbf8d437f', '2018MEDSI000008', '62', '2121', '212', '21212', '2121', '212', '1', '1', '21', null, '2121', '2121', '2121', null, '2', '1', null, null, '2018-08-21 17:14:36', null, null);
INSERT INTO `sys_sender` VALUES ('f1e554cc34394b91bde7951ebbf86bdb', '2018MEDSI000056', '62', '1231232312312', '1232111212', '2232131', '王企鹅去问问去', '房贷首付地方发呆时', '1', '1', '为期额', '放的感到很尴尬很头疼', '123121', '1231213213124', '3123饿的我', ' 3违法都是凡人3 ', '2', '1', null, null, '2018-09-06 09:55:33', null, null);
INSERT INTO `sys_sender` VALUES ('fd37953f23a7409dbb1eebf6a0eab9f7', '2018MEDSI000118', '62', '测试', '1', '双方都', '研发部', '前段', '1', '6', '漯河', '艾斯德斯', '1232', '13231', '23', '123', '1', '2', null, null, '2018-09-18 15:40:40', null, null);

-- ----------------------------
-- Table structure for user_role_project
-- ----------------------------
DROP TABLE IF EXISTS `user_role_project`;
CREATE TABLE `user_role_project` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `user_id` char(32) NOT NULL DEFAULT '' COMMENT '用户ID',
  `role_code` varchar(32) NOT NULL COMMENT '角色编码',
  `project_code` varchar(32) NOT NULL COMMENT '项目编码',
  `company_id` char(32) NOT NULL DEFAULT '' COMMENT '公司ID',
  `delete_status` int(11) NOT NULL COMMENT '删除状态1正常，2删除',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色项目表';

-- ----------------------------
-- Records of user_role_project
-- ----------------------------
INSERT INTO `user_role_project` VALUES ('00025e7a133348859fc3e14fd7df4f34', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('00fa4a48911946449068610dac891af0', '33', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('01055c7091fd401aacfd939e9d913e85', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:27', null, '2018-09-14 13:27:31');
INSERT INTO `user_role_project` VALUES ('01068605f50e4e528e1000d640eb4331', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:13', null, '2018-09-14 15:19:50');
INSERT INTO `user_role_project` VALUES ('014ff34b12d04a3daeb63118e0939a5d', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('0172bf3651324c30810273f27e74b381', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('018e8521b860446aa96a02b95b7f9816', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('01caeca8489943e9898a750260466bdb', '33', 'cro', 'test_04', '62', '2', null, null, '2018-09-17 15:50:42', null, '2018-09-17 16:39:36');
INSERT INTO `user_role_project` VALUES ('021046fcd85549a5968431688f0e4319', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:15', null, '2018-09-10 17:11:10');
INSERT INTO `user_role_project` VALUES ('021846c95c534b478c241be9546e7c36', 'bf4dd9b1769d4abc9b2bd556154f3147', '1004', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:12:25', null, '2018-10-18 15:24:58');
INSERT INTO `user_role_project` VALUES ('029c81a1e774419b8dfc075996e06ead', '33', '\"数据录入员角色1\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:21:58', null, '2018-09-07 15:24:07');
INSERT INTO `user_role_project` VALUES ('02a7758d839c414db51c28b35d7b6f23', '231231231', '[null]', 'xxx-32894', '123', '2', null, 'string', '2018-08-23 18:24:55', 'string', '2018-08-23 18:48:13');
INSERT INTO `user_role_project` VALUES ('034999e25fb44ba99e33697cd4da4550', '231231231', '[\"company manager\"]', 'xxx-32894', '123', '2', null, 'string', '2018-08-23 18:22:16', 'string', '2018-08-23 18:24:55');
INSERT INTO `user_role_project` VALUES ('03f6c25ed445409898ef3c9a5e665d66', 'bf4dd9b1769d4abc9b2bd556154f3147', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:12:25', null, '2018-10-18 15:24:58');
INSERT INTO `user_role_project` VALUES ('0548899e419744caa92eff026184d597', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('05a06c5682b342a2a5b8a7bb6e85e84b', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('08184602ca26433db7910ba041b039d7', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('0877b5cb5c054766a5f02eeca7cbdc83', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('08d0d9fc227a463ab30d73134cae580d', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-26 10:27:27', null, '2018-09-26 14:15:28');
INSERT INTO `user_role_project` VALUES ('08fc7352dda34f91bb918b8514225cfc', 'bf4dd9b1769d4abc9b2bd556154f3147', 'cro2', 'bjlh_pv', '62', '1', null, null, '2018-10-18 16:16:41', null, null);
INSERT INTO `user_role_project` VALUES ('0a59825a82f4493a99a5e75d633916c9', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('0ad73c52e2af47ff8b46d472019b1478', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:01', null, '2018-09-14 15:19:44');
INSERT INTO `user_role_project` VALUES ('0b164daa8a7b4743a1db6c9121bed162', '22', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:13', null, '2018-09-14 15:19:50');
INSERT INTO `user_role_project` VALUES ('0b26ec0e57a64480a63633ec2659f17c', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:28:25', null, '2018-09-12 13:32:41');
INSERT INTO `user_role_project` VALUES ('0b5cfb10aac24450a6142e0a23afc9c0', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('0b744c26f0044aebac8088dfd272ba2f', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('0beba7218522403cbfc7be3b37688cb3', '33', '1234', 'test_04', '62', '2', null, null, '2018-09-17 15:50:42', null, '2018-09-17 16:39:36');
INSERT INTO `user_role_project` VALUES ('0c3e6fef29bd456d97c31f5366b877c3', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('0cfa5f0fa67e4d578f7f6b7d73f69e8f', '0e22840e89944764911f48c298de5be3', '1004', '001', '62', '1', null, null, '2018-10-22 15:24:16', null, null);
INSERT INTO `user_role_project` VALUES ('0d05ce1b6aef430b954a94e9b17359f2', '33', '1006', 'test_04', '62', '2', null, null, '2018-09-17 16:39:36', null, '2018-09-17 16:50:25');
INSERT INTO `user_role_project` VALUES ('0d14045f103241c4aa50c1a0a98f9363', '22', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:12', null, '2018-09-26 09:40:44');
INSERT INTO `user_role_project` VALUES ('0dc3cf64ed2e4901ad9890b75abe6a47', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('0e1fe0c08122461bada278e0e7aeb195', '231231231', 'true', 'xxx-32894', '123', '2', null, 'string', '2018-08-24 09:57:18', 'string', '2018-08-24 10:09:09');
INSERT INTO `user_role_project` VALUES ('0e3d67f1daf54777ae16a8851bec537b', 'bf4dd9b1769d4abc9b2bd556154f3147', '1005', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:12:25', null, '2018-10-18 15:24:58');
INSERT INTO `user_role_project` VALUES ('0ee76add454d4536a88a20e78524e438', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:51:20', null, '2018-09-07 16:28:36');
INSERT INTO `user_role_project` VALUES ('0f0ec4f17f0843cca96b65d748137743', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('0f31357a189242d794379a7b19102cf3', '33', '[\"测试角色\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:26:08', null, '2018-09-07 15:27:07');
INSERT INTO `user_role_project` VALUES ('0f6ecb02d9834664b65db6318d22d752', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('0f9daa92a1a04ec994318c68b4597011', 'bf4dd9b1769d4abc9b2bd556154f3147', '1002', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:12:25', null, '2018-10-18 15:24:58');
INSERT INTO `user_role_project` VALUES ('10d72aeddfd74d09b3297993b2f6bfc0', '865e7d4a867c48da88f7a5465c1f3688', '1006', 'bjlh_pv', '62', '1', null, null, '2018-10-22 11:29:24', null, null);
INSERT INTO `user_role_project` VALUES ('10e92b2fa4164e4594d31a0d4ccaa205', '231231231', 'true', 'xxx-32894', '123', '2', null, 'string', '2018-08-24 09:54:31', 'string', '2018-08-24 09:57:18');
INSERT INTO `user_role_project` VALUES ('119a51f7bfb84e37b3d05f35ef54af66', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:01', null, '2018-09-14 15:19:44');
INSERT INTO `user_role_project` VALUES ('12190824b6bc427cbf9d0fe00107d5c5', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('13106adcf067444f889e6f8d638410f3', '33', '1002', 'test_04', '62', '2', null, null, '2018-09-17 15:50:37', null, '2018-09-17 15:50:42');
INSERT INTO `user_role_project` VALUES ('13eecc654e4042f3a8863daa68265fd3', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('13f4f100a0614def92f0c5bbd273a113', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:32:41', null, '2018-09-12 18:56:08');
INSERT INTO `user_role_project` VALUES ('1434ab5bbb434f9786085373dd8062ea', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('14ee71559e10417b99cc820125b8f2f8', '33', '[\"测试角色\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:37:37', null, '2018-09-07 15:38:44');
INSERT INTO `user_role_project` VALUES ('15074c4acf224defb1f60fd38f0c3adf', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('16178440a8db412fb07b5a53009656d8', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('16240ab0373048908b412f2ed49fd3a2', '231231231', 'true', 'xxx-32894', '123', '2', null, 'string', '2018-08-23 18:50:35', 'string', '2018-08-23 18:56:01');
INSERT INTO `user_role_project` VALUES ('162644e42dc941669f55e93e37661fa2', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:43', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('1651c7b0bf5a4cd2868e6b1797eeeb35', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:27:34', null, '2018-09-10 15:42:08');
INSERT INTO `user_role_project` VALUES ('17a4c145191d4c55ac3dc6749d9d6935', '22', '[\"测试角色\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:38:07', null, '2018-09-07 15:49:02');
INSERT INTO `user_role_project` VALUES ('18150b61c6a441a8bf5a20def43ff1aa', '44', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-21 15:38:30', null, '2018-09-21 15:38:48');
INSERT INTO `user_role_project` VALUES ('182a77b3dd4d4d248ee22add56aca35c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('18e21feba6b64f90be10ec5c6fc365ed', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('19232ed32e1e4e6da6017604dd0f0899', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('192d90a060d6417db7c5fe7f631fb70c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('1965eedac15f407ab019c95f04e513f8', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('19fd24453351402dbc85ffd3d1bd7782', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('1a77c3f007494372820b0a3ce338eddc', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('1b24650c17a84430aea52e4e48ed3f6a', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('1bb40e239f8b4ae08d44ef9b01e7aa37', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('1c08eb087d484572b6415736eff3c48c', '22', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:30:30', null, '2018-09-14 15:17:13');
INSERT INTO `user_role_project` VALUES ('1c256c96fc3945e4a412d466db38d9e5', '0e22840e89944764911f48c298de5be3', '1006', '001', '62', '2', null, null, '2018-10-22 15:19:44', null, '2018-10-22 15:24:16');
INSERT INTO `user_role_project` VALUES ('1c333fc839fb4ce0a448ecf8e0d6dc91', '33', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:40:23', null, '2018-09-07 15:41:46');
INSERT INTO `user_role_project` VALUES ('1c57cabe5d6b49f7818611c289e7778a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('1c6c1b94877345eebe4946056076a23f', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('1c96f1a38e6144d3b6bafdf8d43581e2', '33', '1006', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:20', null, null);
INSERT INTO `user_role_project` VALUES ('1cdd7a83f0e7419d8139e9a6018e52ff', '33', '\"[\\\"cro\\\"\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:45:00', null, '2018-09-07 15:46:58');
INSERT INTO `user_role_project` VALUES ('1f9237d4e1284428bbb2376a6241d5a3', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('202d8a7d4f7944b1a852bf3ccb51205f', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('208a15c173724d03b96169f2f86f2a5f', '33', '1004', 'test_04', '62', '2', null, null, '2018-09-17 11:02:11', null, '2018-09-17 11:02:15');
INSERT INTO `user_role_project` VALUES ('21a17e6ebf934bd0aa667749c8d98b41', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:12', null, '2018-09-26 09:40:44');
INSERT INTO `user_role_project` VALUES ('21ce73c4b66c411496ceebd9bbc13201', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('223178c3503a47329af8c6556b98a66d', '22', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-26 10:27:27', null, '2018-09-26 14:15:28');
INSERT INTO `user_role_project` VALUES ('22523de909194c95875274c26d69a0e9', '33', '1006', 'test_04', '62', '2', null, null, '2018-09-17 11:02:15', null, '2018-09-17 15:50:37');
INSERT INTO `user_role_project` VALUES ('22d5a4b3b4ea41cf8a8649723ac5bd84', '53827bd6baeb493c8c817e8cd2910aec', '1006', '001', '62', '1', null, null, '2018-10-18 15:19:19', null, null);
INSERT INTO `user_role_project` VALUES ('23a8546635cc41a3b6c7ed0e085b7c23', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('23e8ed609c2c44a98978afd90306afef', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('245ff2e1d8064544b9d4a34653fd1b83', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('24adac8f156b45a8a4f17de20f924854', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:27:39', null, '2018-09-07 15:28:59');
INSERT INTO `user_role_project` VALUES ('2520fc44e3bc4aed83e79f1c06cac7a4', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:36', null, '2018-09-26 15:02:20');
INSERT INTO `user_role_project` VALUES ('25dff7c69ed84e84b362509965440b13', '33', '\"\\\"PV001\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:29:50', null, '2018-09-07 16:31:10');
INSERT INTO `user_role_project` VALUES ('26318a05d96d426db61a8ca959154d5c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('268f6c87b33e4b679372a42b7ae7bd23', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('26b8baa4941645cea0b8a4c4c36583a2', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('26c6b98717a940dcb40b338726517671', '22', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:13', null, '2018-09-14 15:19:50');
INSERT INTO `user_role_project` VALUES ('26ef37b4f7234ad187e55f50ed4a9e92', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('26f8abdf5e7f4516aea5ac8d23016324', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('272616e2f12f430f937a193e5ca673f0', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('279688157f4240718485888b885ce3db', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('2804da8bbf1f4703944d158d21344e17', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('285e7a50fc764c68b7a2591bae3d3aee', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('2883d4b4b144412a8375d99dd1b64c1a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('28a3ec858cb3442c90ec7f91baeea9ce', '33', '1002', 'test_04', '62', '2', null, null, '2018-09-17 15:50:42', null, '2018-09-17 16:39:36');
INSERT INTO `user_role_project` VALUES ('28ed58d42ca240b7a4640d1cf5627c11', '33', '[\"[\\\"[\\\\\\\"cro\\\\\\\"]\\\"\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 17:16:05', null, '2018-09-07 17:16:18');
INSERT INTO `user_role_project` VALUES ('2915cec208b341419938fa0610fb159c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('29a7df9bfadc48fcb2aa0006c6120636', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('2a29d3b957464166acb579a82c65e24b', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:32:41', null, '2018-09-12 18:56:08');
INSERT INTO `user_role_project` VALUES ('2a56ac0e3a2746b9b640d231a9bb5a4c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('2aa110edddb5414993fb4dd5163c1a6b', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:15', null, '2018-09-10 17:11:10');
INSERT INTO `user_role_project` VALUES ('2aa7a557187f47a28fa91006a9f6b84e', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('2afa6a7a4dd44bb6b5e246ba94c0e840', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('2b6b00d37f4e4c708131c72bf21bba3a', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:28:25', null, '2018-09-12 13:32:41');
INSERT INTO `user_role_project` VALUES ('2bd41e850abc4ef59a5efdde08bebc50', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('2c18e06ac07d4626b7039b36e2c98e46', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('2cb5b282ad5443118add2e544cfcf590', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('2cb8c8805b414fe2b0645980e55922c8', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('2ceb996d08e946bc89dc7b0a910af4cb', 'bf4dd9b1769d4abc9b2bd556154f3147', '1003', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:24:58', null, '2018-10-18 16:16:41');
INSERT INTO `user_role_project` VALUES ('2d328a7869ed4883ad7be3b4c59d2185', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 17:16:05', null, '2018-09-07 17:16:18');
INSERT INTO `user_role_project` VALUES ('2d9131ec19c1467c85cdfa274bfcc68a', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:32:41', null, '2018-09-12 18:56:08');
INSERT INTO `user_role_project` VALUES ('2ebc6be8d62d47d78cafea2f495c0643', '33', '1005', 'test_04', '62', '1', null, null, '2018-09-17 16:50:25', null, null);
INSERT INTO `user_role_project` VALUES ('3018c562e9be4b919a3a96ea8f19d1e7', '33', '[\"测试角色\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:18:05', null, '2018-09-07 15:18:34');
INSERT INTO `user_role_project` VALUES ('305260ac49b74b98be3a7388ae492ae8', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('3195df1f0a3248418a70ab0d2e6de1c3', '33', '[\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:27:07', null, '2018-09-07 15:27:39');
INSERT INTO `user_role_project` VALUES ('3269c0cc92da40b8a6021583f959b4f5', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('3363ee3575b047f983a9ad804394443f', 'bf4dd9b1769d4abc9b2bd556154f3147', '1002', 'bjlh_pv', '62', '1', null, null, '2018-10-18 16:16:41', null, null);
INSERT INTO `user_role_project` VALUES ('33b57c89bce440f9bef74714be98d1d8', 'bf4dd9b1769d4abc9b2bd556154f3147', '1002', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:24:58', null, '2018-10-18 16:16:41');
INSERT INTO `user_role_project` VALUES ('344f1894838e4d79bf7c9392d7dc9429', 'bf4dd9b1769d4abc9b2bd556154f3147', '1004', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:24:58', null, '2018-10-18 16:16:41');
INSERT INTO `user_role_project` VALUES ('34adf770172c4242b05a369e9c0cf2d3', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('3564e314f78f42fc921878a0fca20258', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('362063af71a24a5d93bb8b4e4fba385c', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('366908edfa814ad593a080aecabd40ec', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('370257750d4749c6857b9c5724a1d1f0', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('386dfd4cefeb4ccaa9bc6e9ce324b3c4', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:27:34', null, '2018-09-10 15:42:08');
INSERT INTO `user_role_project` VALUES ('38dc5a986ff34a4d8c6a684895b6c42a', '33', '1001', 'test_04', '62', '2', null, null, '2018-09-17 15:50:42', null, '2018-09-17 16:39:36');
INSERT INTO `user_role_project` VALUES ('397bd8e122a147389c692f4fb1cdf20c', '33', '[\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 17:21:50', null, '2018-09-07 17:44:31');
INSERT INTO `user_role_project` VALUES ('3995e505c35a4f25b7845f6f6d63670e', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('39dcf387aba54672b93626bd50d49fd6', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('39de39d1deab431e828eb0e040cb06fb', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('3a4eec20e27448e68f71b7300ac13549', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('3aed5e524fc84ad5bb99ae53812c3a11', '0e22840e89944764911f48c298de5be3', '1003', '001', '62', '1', null, null, '2018-10-22 15:24:16', null, null);
INSERT INTO `user_role_project` VALUES ('3b65bc903216426eab34bbc1df2af445', '33', '[\"\\\"PV001\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:28:36', null, '2018-09-07 16:29:50');
INSERT INTO `user_role_project` VALUES ('3b8f5c60b4df480d983f0b2dc1d1052e', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:32:41', null, '2018-09-12 18:56:08');
INSERT INTO `user_role_project` VALUES ('3c4efd8e12dd41f5a1b8f0932c91f51c', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:37:29', null, '2018-09-26 09:40:12');
INSERT INTO `user_role_project` VALUES ('3c7368317ba6410eaf9de66575ddf153', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('3cab6411bb7342b1a36dbeaaed2816ef', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('3d255f7fae374fc08fd781317bc153e2', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-10 17:11:10', null, '2018-09-11 13:30:30');
INSERT INTO `user_role_project` VALUES ('3d91cf5a19d84185b7aa7364002678aa', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('3da6c13f31eb41e2a7c6d831710945f8', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:36', null, '2018-09-26 15:02:20');
INSERT INTO `user_role_project` VALUES ('3ef01a06258e49b2947e1a64a43f6f90', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('3f12472888e546028cbd08c8fd3893ce', '33', '[\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:14:03', null, '2018-09-07 15:18:05');
INSERT INTO `user_role_project` VALUES ('3f48d5d8541c4e088679f1cfda696d7a', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('3f6de01c9d8348e398261fc157a5b2ae', '0e22840e89944764911f48c298de5be3', '1003', '001', '62', '2', null, null, '2018-10-22 15:19:44', null, '2018-10-22 15:24:16');
INSERT INTO `user_role_project` VALUES ('3fa68c493fd84915869271a6d6cdfe8f', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('3fb80ab59f4542d68b2a70687e399d67', '33', '1005', 'test_04', '62', '2', null, null, '2018-09-17 11:02:15', null, '2018-09-17 15:50:37');
INSERT INTO `user_role_project` VALUES ('3fe58ab332b1439a9778f2eb7de32823', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 17:15:45', null, '2018-09-07 17:16:05');
INSERT INTO `user_role_project` VALUES ('4002abc124fd429baddd34d05ba673a0', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('405c87dbb892479c9e30983517b3beb5', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('4072cd57d114464d808be2d48b01a44f', '22', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:38:07', null, '2018-09-07 15:49:02');
INSERT INTO `user_role_project` VALUES ('40859ea494da4a648282888156e11271', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('41093eb8173f4f31afd043730328af7b', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('412de2d5fe1048c6b0a3a23d128c7c6c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('41cc06368ba0469d8d53b9bb5b66e8c1', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('41d2d6add275421a9797243d4a424cc4', '0e22840e89944764911f48c298de5be3', '1003', '003', '62', '1', null, null, '2018-10-22 15:31:31', null, null);
INSERT INTO `user_role_project` VALUES ('41d91287be18485cba52cd86dd64462e', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('4228c5b2b70246628c430ec27d535cfe', '0e22840e89944764911f48c298de5be3', '1002', '001', '62', '1', null, null, '2018-10-22 15:24:16', null, null);
INSERT INTO `user_role_project` VALUES ('423842de7a2d4488a7e4258bb2bd2d4a', '44', '1006', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:14', null, null);
INSERT INTO `user_role_project` VALUES ('4239b4962fec4b8390d84b8a3ba31f1d', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 17:44:31', null, '2018-09-07 18:25:07');
INSERT INTO `user_role_project` VALUES ('4338a72847b64599bb45fe2a31e6fc3b', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('433d3a8d9e6c427a9cd9b54e116ca6c3', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('4344621894f04b69995d90f3731d8027', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:32:41', null, '2018-09-12 18:56:08');
INSERT INTO `user_role_project` VALUES ('43612a370f9e4cf599f3195464f9bb69', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('4377c892c0d2471085354551dc557ac8', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('4377cc79dca044cdabb7a912971196bd', '33', '1004', 'test_04', '62', '2', null, null, '2018-09-17 16:39:36', null, '2018-09-17 16:50:25');
INSERT INTO `user_role_project` VALUES ('439bc248ac1e4d16bb3069da948e2ddb', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:27:34', null, '2018-09-10 15:42:08');
INSERT INTO `user_role_project` VALUES ('4410a38680614220bae288a12369829c', '33', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:27:39', null, '2018-09-07 15:28:59');
INSERT INTO `user_role_project` VALUES ('441e66d9bd6e4f3495bfe9318ba189db', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('449bd847309e4697be7fcdca04aa83da', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('44a706d6837642bf9382ee2e1e19e57e', '865e7d4a867c48da88f7a5465c1f3688', '1002', 'bjlh_pv', '62', '1', null, null, '2018-10-22 11:29:24', null, null);
INSERT INTO `user_role_project` VALUES ('44b3aa5e9ce140ea89f9361b1a480ee1', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('456bd30038954a998bb7294fd616d8ce', '33', 'cro', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:20', null, null);
INSERT INTO `user_role_project` VALUES ('458fe9c5fb0746fd8d3e8ca1e33753c3', '33', '[\"[\\\"\\\\\\\"PV001\\\\\\\"]\\\"\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:29:50', null, '2018-09-07 16:31:10');
INSERT INTO `user_role_project` VALUES ('460048af47844e2b9c4394d40acd5bac', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:01', null, '2018-09-14 15:19:44');
INSERT INTO `user_role_project` VALUES ('4624ba62723740f29266e31da1d691c5', '22', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:30:30', null, '2018-09-14 15:17:13');
INSERT INTO `user_role_project` VALUES ('46c7f3b0193d4010ba57023376f695da', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:36', null, '2018-09-26 15:02:20');
INSERT INTO `user_role_project` VALUES ('46f6354d0010481ba1a43af8cc8deaba', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 17:44:31', null, '2018-09-07 18:25:07');
INSERT INTO `user_role_project` VALUES ('477f12efa67a4916b6a5ed5f898f3603', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('47ace97beaf344f3921a7abd4f713076', '22', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:15', null, '2018-09-10 17:11:10');
INSERT INTO `user_role_project` VALUES ('47b8b8ecc62742d8819f05ea6f3067d2', '865e7d4a867c48da88f7a5465c1f3688', 'cro2', 'bjlh_pv', '62', '1', null, null, '2018-10-22 11:29:24', null, null);
INSERT INTO `user_role_project` VALUES ('492de2d369594c1193a488f05effba6f', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('494c36c51bdf456098f7a93289b1d9f9', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('49519e1baedf4d24bdcc977f28d5d751', '33', 'PV001', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:20', null, null);
INSERT INTO `user_role_project` VALUES ('49cdf5ba47fb4be8b4b1fc80f085e647', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('4a11d3ba64ce4b5b8302f89acc129ac1', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('4a24458e0f2544a28873b57fc9cef3d1', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:41:55', null, '2018-09-07 15:45:00');
INSERT INTO `user_role_project` VALUES ('4ad591231829496ba44e0608e1aed957', '33', '[\"\\\"PV001\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:45:00', null, '2018-09-07 15:46:58');
INSERT INTO `user_role_project` VALUES ('4ae7a4800f964003a8f1792709b64be1', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:28', null, '2018-09-26 15:02:08');
INSERT INTO `user_role_project` VALUES ('4b069d054f864e0d82cfb06a6702fd5a', '33', '\"数据录入员角色1\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:24:07', null, '2018-09-07 15:26:08');
INSERT INTO `user_role_project` VALUES ('4b19e47f696f4a71b2aed23adf9f', '231231231', 'xxx-9090', 'xxx-32894', '123', '2', null, null, null, 'wq', '2018-08-23 10:26:50');
INSERT INTO `user_role_project` VALUES ('4b87cefb78c14785bf210f48b3492f3a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('4c1dc1da3de1436084a778ae4fc72f54', '33', '1003', 'test_04', '62', '2', null, null, '2018-09-17 16:39:36', null, '2018-09-17 16:50:25');
INSERT INTO `user_role_project` VALUES ('4c38a912c7b549f5acc39666c8044c5f', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('4c424857045b44dd9148873d70a59471', '33', '\"\\\"[\\\\\\\"cro\\\\\\\"\\\"\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:29:50', null, '2018-09-07 16:31:10');
INSERT INTO `user_role_project` VALUES ('4c5d60fa5d6f4ceaa463a7a3d7c3c742', '33', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:46:58', null, '2018-09-07 15:49:33');
INSERT INTO `user_role_project` VALUES ('4c90978b21aa429b8f4d35f4fe3059ce', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('4ca6a60401e441528402cd554ec8c6ab', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('4d57bf6c969a4c87b3aad2d542e8cd92', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('4db46f746f0c482bb0c0da41d1dad4ae', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('4ddc14a353084a0c899e9c7fad3f7c6f', '33', '\"\\\"cro\\\"\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:29:50', null, '2018-09-07 16:31:10');
INSERT INTO `user_role_project` VALUES ('4e208589e5d9417b99f3a3df5ea46b4e', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('4ee37bd3e48c45d1aab7eb48a3a402c9', '33', 'true', 'xxx-32894', '62', '2', null, 'string', '2018-09-06 13:34:33', null, '2018-09-07 14:54:29');
INSERT INTO `user_role_project` VALUES ('4fe0ba46ea734063a1bacdc5f1deadce', '33', '1004', 'test_04', '62', '2', null, null, '2018-09-17 15:50:37', null, '2018-09-17 15:50:42');
INSERT INTO `user_role_project` VALUES ('500acb0bd45e4882bf4f3ccb9ee6bc29', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('5037e0c4384d40d2b6e5f0b496e2d8e5', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('50d11a411adc4a7f81863628c723930b', 'bf4dd9b1769d4abc9b2bd556154f3147', '1005', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:24:58', null, '2018-10-18 16:16:41');
INSERT INTO `user_role_project` VALUES ('512e8542757b4f5c88738a145e347b07', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('51cfc0f7f17d470e981c8ddc46529447', '22', '[\"测试角色\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:15:40', null, '2018-09-07 15:19:10');
INSERT INTO `user_role_project` VALUES ('51d37c389dc84ad7b19661dee6a9afe0', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('5206d302ab584ba8bb5ef6612744300e', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('5252ca9d0b6e4349b7b88a76f068c1df', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:27', null, '2018-09-14 13:27:31');
INSERT INTO `user_role_project` VALUES ('52f010223ae0403588876ee54a9698b7', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('532c529aeb7d4a498c0d53cca1b33165', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('533a03a3b2ed4766b854a8b864533330', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('533c7de462244a51aaef6129e0dd40be', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('54195b55d40143d089834140a8e245eb', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('5431f4822bf94edd8c9980cdaad89819', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('5442099b505b479abdd51c7dd5ab0015', '33', '1004', 'test_03', '62', '1', null, null, '2018-09-18 09:56:49', null, null);
INSERT INTO `user_role_project` VALUES ('54c616587f0d4467ba0cd68790b287e0', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('5539415c4eb34868a7a5fa54e256bbda', '33', '1001', 'test_04', '62', '2', null, null, '2018-09-17 11:02:15', null, '2018-09-17 15:50:37');
INSERT INTO `user_role_project` VALUES ('559458bbce17498ab0f172b7c3199b4d', '33', '1002', 'test_04', '62', '2', null, null, '2018-09-17 16:39:36', null, '2018-09-17 16:50:25');
INSERT INTO `user_role_project` VALUES ('55bec07732db45ac94447a45e5f88436', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('55d24811a5f144e9a835ca02cfe22bd1', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:50', null, '2018-09-26 09:37:29');
INSERT INTO `user_role_project` VALUES ('56515f3cd3254d92a794196c490c03d5', '33', 'null', 'xxx-32894', '62', '2', null, 'string', '2018-09-06 10:06:54', null, null);
INSERT INTO `user_role_project` VALUES ('5706b13ac5cf4bccb429fe40ccd1fc09', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('57d12a24629f4a31b3ad818adab8c8b0', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('5812dbb8c45e49fc8ee0ac3229a3f9c2', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('5833a82b558b4b90bd7d22faab8a', '231231231', 'xxx-8080', 'xxx-32894', '123', '2', null, null, null, 'wq', '2018-08-23 10:26:50');
INSERT INTO `user_role_project` VALUES ('58912918431f4ebd8fc0f01d52ad03a9', '53827bd6baeb493c8c817e8cd2910aec', '1002', '001', '62', '1', null, null, '2018-10-18 15:19:19', null, null);
INSERT INTO `user_role_project` VALUES ('58f6c92502db4c02ab3791978d663722', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('596269d604064c9e9de6f9519b523dc5', '33', '1002', 'test_04', '62', '2', null, null, '2018-09-17 11:02:15', null, '2018-09-17 15:50:37');
INSERT INTO `user_role_project` VALUES ('596dae7d5c3c4dc199793de180b8a63d', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('59b908134ead442f96b3aeedcff28f82', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('5b753a966cb64f18ba7ba539fe2752c5', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('5bb4d7dde87d442f88b62e3c85e4ff7f', '33', '[\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:49:33', null, '2018-09-07 15:51:20');
INSERT INTO `user_role_project` VALUES ('5c76b2a3ca6143c28e57b33c0900cd46', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('5cb9e53f45e6498f8fb112c6a9089ea9', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('5d03f4980aee4f80a2875c7e606cc03f', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('5d274da9c1134c8283dc42d49c2df6fa', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:45:00', null, '2018-09-07 15:46:58');
INSERT INTO `user_role_project` VALUES ('5e2559f38d3546d391a0bbee6a614a9f', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('5e3d50e867634ceeb473230c3597a5a4', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('5e932b1d424b43dca3ae0f996bdb415c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('5efc35590fba456e85c72feaea518255', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('5f1c2286837543a5b5ad8afc0d5718e6', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('5f477ae57b544ad7a37598f27bea33e3', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('5fe318c314694546bddebcbae5497415', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('5ff7eea00ae6485cb5465f5949812425', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('60d9f45d9ede4bdfa829e891cd6487da', '33', '1005', 'test_04', '62', '2', null, null, '2018-09-17 15:50:37', null, '2018-09-17 15:50:42');
INSERT INTO `user_role_project` VALUES ('629891b560134df8930f503ddbb3e7b7', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('62cc0cedceae446184a12f53aa75de37', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('6324b7f6073643c38275678b925641fa', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('63558215c4e948ae87c949354f52a9c8', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('63a3db26d1394b899a2dd6be7a3256ce', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('6448b3de03cb45b09b1226b0623d6b57', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('644cc0f6b67d43288e5dcef9346abfbc', '33', '1005', 'test_04', '62', '2', null, null, '2018-09-17 16:39:36', null, '2018-09-17 16:50:25');
INSERT INTO `user_role_project` VALUES ('64764f5989064cbba1f9fe2c0e3f5e63', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:43', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('64a0cb957e834e9bbdb1f15bf6070f3e', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('64cdebaaa25d4b2eb9441f363ca69bf2', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('650c1ee0358244378fa38329112d837f', '33', 'cro', 'test_04', '62', '1', null, null, '2018-09-17 16:50:25', null, null);
INSERT INTO `user_role_project` VALUES ('6577c43a9ae940ad9a6e63e10fae09a7', '33', '1003', 'test_04', '62', '2', null, null, '2018-09-17 15:50:42', null, '2018-09-17 16:39:36');
INSERT INTO `user_role_project` VALUES ('662366e59bd549db8eff3f7d82897870', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('66e05104e78843868d3d4df482739d47', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:27', null, '2018-09-14 13:27:31');
INSERT INTO `user_role_project` VALUES ('66f1f2edd3a5407da1bc27e54bcfd117', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('671ababb5e614545aa7e8a9ca01d02da', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:01', null, '2018-09-14 15:19:44');
INSERT INTO `user_role_project` VALUES ('67cf1a20ffe149b5a7f6770db86d7373', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:28:25', null, '2018-09-12 13:32:41');
INSERT INTO `user_role_project` VALUES ('681687f76f464b69adb059455e45dfe0', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('68276b35b45045bd9c6c3eb8eabc2d4e', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('68bb4292c417492c9227af69a5a3e9ed', '33', '[\"测试角色\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:24:07', null, '2018-09-07 15:26:08');
INSERT INTO `user_role_project` VALUES ('68dcdf04f1fd45bea06fd80d1533560c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('6a01d7c6f13b41019c30d6ae22ca38a6', '22', 'cro2', 'test_04', '62', '1', null, null, '2018-09-17 11:01:57', null, null);
INSERT INTO `user_role_project` VALUES ('6a42440a440442249d781764f4cb0942', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('6a6f469d995e422aad3faa0453bfc9d7', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 17:15:45', null, '2018-09-07 17:16:05');
INSERT INTO `user_role_project` VALUES ('6b69eaabeb5c4e28870acf64d8cc1518', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:31', null, '2018-09-26 14:15:36');
INSERT INTO `user_role_project` VALUES ('6c055c92eda0448bbd05e63e904ec44c', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:37:29', null, '2018-09-26 09:40:12');
INSERT INTO `user_role_project` VALUES ('6e2a7ff701744bdf9f1169e7fda491c3', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('6ec9bb6b12234536bb1813ee8507a232', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('6f0aa41a9c184093a183812f2dab6ede', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('6fbccecb29004851a1fcba2ec871d453', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('6fd26b89974a4fe5a60f79ced593f407', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('704d5020e6d1442bba8fb43ed143f7a1', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('70e296a20a604bc49d180adc8aba4204', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('715b4f4587d64c9e89426dc609ad765b', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('72856008a7414bfda907785489696820', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('73810c35bd404950a3c187790cafbcaa', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('73ad652c3c434019a5d55c791ed9ab47', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('73e747b5f2f04a2b88d567a77dcbf15e', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('75ce3fc4200c45988189d7dc3339bfd8', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('766cf934d72b432a9600debd61a394bb', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('76dc2501ad374be3a5b4e4721c26ba05', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('76ed01ed17d745fc8715073e8f1ae167', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('76f9d79f31fc44b4b37b10c946e2f909', '44', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:19', null, '2018-09-21 15:30:31');
INSERT INTO `user_role_project` VALUES ('779278557e1249948658af1c6543bcfa', '03cfe526d0514e94b80b4485052757b1', '1002', 'bjlh_pv', '62', '1', null, null, '2018-10-19 16:50:45', null, null);
INSERT INTO `user_role_project` VALUES ('77b6480f3a8c4718adcc3be65c11c073', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:43', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('78665e787558453a8a36153ab45bbec9', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('7929f1939a5f4a5ab5f099f146a67595', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('79c569c6df914b84ac7b6a78358d57f9', '44', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:31', null, '2018-09-26 15:02:14');
INSERT INTO `user_role_project` VALUES ('79ebe72c0b25446cacc921f393db56e8', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('7a25447769b14188a2d94f72878918fb', '33', '[\"测试角色\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:38:44', null, '2018-09-07 15:40:23');
INSERT INTO `user_role_project` VALUES ('7a84db0cb74d4904b7559b04a43b35de', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('7a8b13043b03435d96dfdf9de549d6ce', '33', '1004', 'test_03', '62', '2', null, null, '2018-09-18 09:56:44', null, '2018-09-18 09:56:49');
INSERT INTO `user_role_project` VALUES ('7b1aa256df1a47eab887c44561951e67', '33', '1234', 'test_04', '62', '2', null, null, '2018-09-17 16:39:36', null, '2018-09-17 16:50:25');
INSERT INTO `user_role_project` VALUES ('7b33d0e9d42d4e97bcf8b413cab531a2', '0e22840e89944764911f48c298de5be3', '1002', '001', '62', '2', null, null, '2018-10-22 15:19:44', null, '2018-10-22 15:24:16');
INSERT INTO `user_role_project` VALUES ('7b42927d3a0145768e3b5598cd2ed96d', '22', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:13', null, '2018-09-14 15:19:50');
INSERT INTO `user_role_project` VALUES ('7ccf4dd917204e18a7a02c73a89ae2b6', '865e7d4a867c48da88f7a5465c1f3688', '1005', 'bjlh_pv', '62', '1', null, null, '2018-10-22 11:29:24', null, null);
INSERT INTO `user_role_project` VALUES ('7ce9e9376da5458eb67a1ac23a8afabf', '33', '1003', 'test_04', '62', '2', null, null, '2018-09-17 11:02:11', null, '2018-09-17 11:02:15');
INSERT INTO `user_role_project` VALUES ('7cf364ac07944304ad719d8976e771be', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:29:50', null, '2018-09-07 16:31:10');
INSERT INTO `user_role_project` VALUES ('7d8b2943058e4889a62233c189f6e1de', '22', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:37:29', null, '2018-09-26 09:40:12');
INSERT INTO `user_role_project` VALUES ('7e277b2d04744a438a975e2693e3b2d8', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:46:58', null, '2018-09-07 15:49:33');
INSERT INTO `user_role_project` VALUES ('7e59d9287ff841e0bdd17d2a489245ac', '231231231', 'true', 'xxx-32894', '123', '2', null, 'string', '2018-08-23 18:48:13', 'string', '2018-08-23 18:50:35');
INSERT INTO `user_role_project` VALUES ('7e707decf2a8471f976f564979c17cc7', '33', '1234', 'test_04', '62', '1', null, null, '2018-09-17 16:50:25', null, null);
INSERT INTO `user_role_project` VALUES ('7fda2169f35b484f9342b8f4b5b58240', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('801345ba66a3464b82693863ff20f9a7', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('80ec72e2f245466283ad396d3c7923b1', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('813e53f8dab34cd0a07514b4d5b1a2ed', '33', '[\"测试角色\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:21:58', null, '2018-09-07 15:24:07');
INSERT INTO `user_role_project` VALUES ('819e02dc5d7c471a9d7c690ed052340e', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('81e5129a28a04e4da533e287f8c7c8e2', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('81eeb594de0844c4a2875d9fbaef7b44', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('827bfcbd4510447da8118dc9ad65a9e6', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('835e5f0cecf24a908f9a7288794d82da', '22', '[\"测试角色\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:19:10', null, '2018-09-07 15:38:07');
INSERT INTO `user_role_project` VALUES ('839f58e22ad941efb4ef8bee81a6642d', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('83f1d79a5f064ea499a61cc7bc9c73fa', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('8418e4e5f2b242618562bbeeebad9a87', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('84222d8a90fc4202b6ae5c2bd2d9564a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('845f003eb7c9419dba9a2c44f3a5c857', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('8479197f0cc14524b78dad38bb3bb1e7', 'bf4dd9b1769d4abc9b2bd556154f3147', '1003', 'bjlh_pv', '62', '1', null, null, '2018-10-18 16:16:41', null, null);
INSERT INTO `user_role_project` VALUES ('8562dd03d3634f58a624cb9040cebfa5', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('860869af42e54fc2bf886416d25cc88a', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('86b09645becf43e29bd83af779cce643', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('875dca5849eb41e79762a0e17c12eba5', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('877fd0a6a2d34b458f3014aa9672d7bc', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:31', null, '2018-09-26 14:15:36');
INSERT INTO `user_role_project` VALUES ('880b01be70e944eeac181f952cbd177c', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('886101313ea14071a3cbacc8afb2d50c', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('89c6c38aa7494b1fbb7cbfe35ee7d98d', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('8a54f870144047339363a53efcfb7c2a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('8a633184d2cc4f83a7a00121dfcb828e', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('8a6a45f4385b4dbc9d81139e858e74ff', '33', '[\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:35:20', null, '2018-09-07 17:15:45');
INSERT INTO `user_role_project` VALUES ('8a6e8d762b994af2826b60226f265723', '33', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('8ab5decf8f3542d4ab30e95a9a3ea39c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('8ad1d035ca6e4492a0222d52b4419c1f', '44', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:17', null, '2018-09-26 14:15:31');
INSERT INTO `user_role_project` VALUES ('8c013aa321a348ae8efb2e8abea011de', '0e22840e89944764911f48c298de5be3', '1001', '001', '62', '1', null, null, '2018-10-22 15:24:16', null, null);
INSERT INTO `user_role_project` VALUES ('8c8ae8f4ca834812bc095d8d9de2dd17', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:31', null, '2018-09-26 14:15:36');
INSERT INTO `user_role_project` VALUES ('8d0f5ace730e4dd58d7207dccc53fd7a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('8d627943edb947a9b37f997812661086', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:27:34', null, '2018-09-10 15:42:08');
INSERT INTO `user_role_project` VALUES ('8ddd31d6d516426ebbf1d25ebb4379d5', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('8ecbf9b52a5a4aec9bb57520c3cbda75', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('8f05f68de01244a7970a062d89771cf5', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('8f375c41bae6461abe13cf2348cbd739', '33', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:41:55', null, '2018-09-07 15:45:00');
INSERT INTO `user_role_project` VALUES ('8f982889273b45afbf7e30a4bd204553', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('8fa78230efe6401bba951fffc9bd9e1a', '33', '1006', 'test_04', '62', '2', null, null, '2018-09-17 15:50:42', null, '2018-09-17 16:39:36');
INSERT INTO `user_role_project` VALUES ('906289baf88f42479d476f189531c798', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('91a07f23c180449bb8559c7109f9bcb8', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:36', null, '2018-09-26 15:02:20');
INSERT INTO `user_role_project` VALUES ('923f69f78ad24598bde74f1e7f1a6c46', '33', '1003', 'test_04', '62', '2', null, null, '2018-09-17 15:50:37', null, '2018-09-17 15:50:42');
INSERT INTO `user_role_project` VALUES ('92c52a43634c49ccbeebd5b79b096530', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('934e06252e34441d9f7ea54ba04f2af4', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:28:25', null, '2018-09-12 13:32:41');
INSERT INTO `user_role_project` VALUES ('93eb51bfe7f74fa39002aac1e1153b3c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('94202cbf0f154f89943b5f4560da8595', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('956d04179b8449da9d4df0140c4af71a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('9662e40d98874ae58bc5c5ecdc4cadff', '33', '[\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:41:46', null, '2018-09-07 15:41:55');
INSERT INTO `user_role_project` VALUES ('979604fbecac4aaeb4223447053bc07e', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('99635b52587f459eab714720f523b934', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('99672358afe242eebc4fe43f13cd8332', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('99937091231c4deabadee17bcad5f150', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:27', null, '2018-09-14 13:27:31');
INSERT INTO `user_role_project` VALUES ('9a24e83c19b54c3d9895f963b7a9eed1', '22', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:50', null, '2018-09-26 09:37:29');
INSERT INTO `user_role_project` VALUES ('9a3cfc35ecea44c1a425ddf4d43683db', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('9b1cd7fc24dd4306abd531b3ebd741bd', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('9bc3a16eaa4845beacbad4c452d3639f', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:01', null, '2018-09-14 15:19:44');
INSERT INTO `user_role_project` VALUES ('9c335a00ecd44c41b2a8feb4a940e0e1', '0e22840e89944764911f48c298de5be3', '1001', '001', '62', '2', null, null, '2018-10-22 15:19:44', null, '2018-10-22 15:24:16');
INSERT INTO `user_role_project` VALUES ('9c89147a0302429f97013c2e390aa1b4', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('9d717c0d969d46728c75eb172024d39d', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('9de651ae54dd46cb87191f6c0fdb69f4', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('9df614b202bb40cbbf0a668959a2045f', '22', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-10 17:11:10', null, '2018-09-11 13:30:30');
INSERT INTO `user_role_project` VALUES ('9dff22d2ad2f41df923754106072e7d6', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('9e2e2ffbd37d4934b45ef88ed774321a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('9e89ac7301ca40ee8b8e097351e2bd4d', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('9ed4c082eeba413787f1a23dd9bbedcc', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('9ef6fb2ffaf44418ad969a8b645784b9', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('9f3cab8a6e6948f6b166ad6d2535abfd', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('9f50fdc27466416e8510d4ddf964149f', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('9fbdc9bc307d42d88acf0b149e1ccc71', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('a18aa574e5bb4dd8a443df404b5faacd', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('a1eb4ea414b84e24a3eababc3ff93218', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('a2135285b05e4a68aabd36bf19beedc0', '33', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('a2b259c2b9274d078044a9fcb1d5c051', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('a434128d4cd34d9e9fadbf134fbcb394', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('a54b90368ae74222a4d37319da9bf1e2', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('a5c17782be3341dda1ff600ed8814b6c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('a6ee9e4829554d4ab8000d1bd7cf03ea', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('a6f57288649c414f902bbbc1912cdc56', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('a74f2004a4ca45c192fcda1aa460ce3c', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('a7d61cd0abc24566b3b96b6c5b2f54a4', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-07 18:25:07', null, '2018-09-10 15:27:34');
INSERT INTO `user_role_project` VALUES ('a8bd588d3ca94b6692870fa380885068', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('a90284454ec14b6885f5c4d7ae4de81b', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('a9728d32b8ac496b80e3d2ba7652ef07', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:49:02', null, '2018-09-10 15:42:15');
INSERT INTO `user_role_project` VALUES ('a973cdb425d74bb2bc4aee825126225f', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('a98dbbd4de7440529ac9bb56596a9b04', 'string', 'string', 'string', 'string', '1', null, 'string', '2018-08-23 18:11:25', null, null);
INSERT INTO `user_role_project` VALUES ('a9e91299f41d42cca6e555110d83e800', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:28:25', null, '2018-09-12 13:32:41');
INSERT INTO `user_role_project` VALUES ('aa1b8338acc0442da4d6ead2a7dd1a73', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('aa2ec85bfb7242cc8a5723ad33d03e4b', '0e22840e89944764911f48c298de5be3', '1004', '001', '62', '2', null, null, '2018-10-22 15:19:44', null, '2018-10-22 15:24:16');
INSERT INTO `user_role_project` VALUES ('aa6ffa9ad9da4930b4bd66110e4d10f1', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('aae6ef0af84343d69ca6b98994141059', '33', '1006', 'test_04', '62', '1', null, null, '2018-09-17 16:50:25', null, null);
INSERT INTO `user_role_project` VALUES ('ab79e969b984489c860f7c6a3d52970a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('acf4789722a248d0b0db6f55c4bde143', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('ad9d0fa893ab4206a4c26eb3c9a260de', 'bf4dd9b1769d4abc9b2bd556154f3147', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:24:58', null, '2018-10-18 16:16:41');
INSERT INTO `user_role_project` VALUES ('ae28e2b5602b438286ea03fdd098ed77', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('ae2cee9e7bf64723ae524d85bd2a0d50', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-26 10:27:27', null, '2018-09-26 14:15:28');
INSERT INTO `user_role_project` VALUES ('ae46fc59ba2d485e85247b0831297c16', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('aec81cff1b4e4e999027c1091bda6f8d', '33', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('af6721749b1b46e6a272dbd2b35edda7', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('afa14ee946d14312aaa4781062eba920', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('b0d36a7048a045359119168d4249c76b', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('b146f5e29e1747c2aa68fdb10ce8e219', '33', '\"\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 17:16:05', null, '2018-09-07 17:16:18');
INSERT INTO `user_role_project` VALUES ('b15342894d7c4f1584aab8eed629ba84', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('b2de8513c3164620bdcbccf4e7a626a2', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:43', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('b32c2ad16a25441f8cf3f9b2d549be20', '33', '1001', 'test_04', '62', '1', null, null, '2018-09-17 16:50:25', null, null);
INSERT INTO `user_role_project` VALUES ('b468631ea4794991a720aed20b792701', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('b51d7b30e4cf44a0a39e1705269055da', '53827bd6baeb493c8c817e8cd2910aec', 'cro2', '001', '62', '1', null, null, '2018-10-18 15:19:19', null, null);
INSERT INTO `user_role_project` VALUES ('b52dc48cc28744588a08c596c348a15a', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('b625ba05bfcf445298ceb2c8480f207f', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('b62bb0ee00a34849966ecc34f78aaaa5', '22', '\"PV001\"]', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:08', null, null);
INSERT INTO `user_role_project` VALUES ('b6c283bd716647b5a239e535e7c410fd', '33', '\"数据录入员角色1\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:26:08', null, '2018-09-07 15:27:07');
INSERT INTO `user_role_project` VALUES ('b71475846c7849349abcc1158ca648b8', '0e22840e89944764911f48c298de5be3', '1005', '001', '62', '1', null, null, '2018-10-22 15:24:16', null, null);
INSERT INTO `user_role_project` VALUES ('b765cc28dbf140b4826450ee799e8760', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('b78741fc73b64fe0b057f4e5d28bed0c', '22', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:30:30', null, '2018-09-14 15:17:13');
INSERT INTO `user_role_project` VALUES ('b8502099953342f0aee432175b74c956', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:32:41', null, '2018-09-12 18:56:08');
INSERT INTO `user_role_project` VALUES ('b88aadf73afa4206a5f7bf3fdf3f5587', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:27', null, '2018-09-14 13:27:31');
INSERT INTO `user_role_project` VALUES ('b8ba75c7b97849ef9f4236284d107028', '22', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 17:11:10', null, '2018-09-11 13:30:30');
INSERT INTO `user_role_project` VALUES ('b8ca5344bf41418693d00a6842e331c4', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:44', null, '2018-09-26 10:27:27');
INSERT INTO `user_role_project` VALUES ('b8edf4ad392e45c29a892d4d9d0dbf26', '33', '\"cro\"]', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:20', null, null);
INSERT INTO `user_role_project` VALUES ('b993a2ebfe2e4b36a6cdb72896ef7b14', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:31', null, '2018-09-26 14:15:36');
INSERT INTO `user_role_project` VALUES ('ba1b7753f764450f9e10ab675e3399a6', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('bb256996104442e48b62458b247337af', '33', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:29:39', null, '2018-09-07 15:32:29');
INSERT INTO `user_role_project` VALUES ('bbe7f1b4dc604a7bac743b5c80fd09a8', '33', '1006', 'test_04', '62', '2', null, null, '2018-09-17 11:02:11', null, '2018-09-17 11:02:15');
INSERT INTO `user_role_project` VALUES ('bbf2d8d4f1594b82b393255a45470637', '33', '1005', 'test_04', '62', '2', null, null, '2018-09-17 15:50:42', null, '2018-09-17 16:39:36');
INSERT INTO `user_role_project` VALUES ('bc1f555487434ba4ae29943cc2bd8129', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('bc6bff3394f6419cac79068be5c57ba4', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('bd3b57184f794499b9dea2f293510899', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:38:44', null, '2018-09-07 15:40:23');
INSERT INTO `user_role_project` VALUES ('bd447438f37c4db6bc1d32c06518c4a3', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('bd950cf2cf6d4876b45c66f2b311ed99', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('be7337d31aca4b6784d2de64ff49c7ea', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('bf3a403ef48f451ea1bbdbf3dc37bc6e', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:27:34', null, '2018-09-10 15:42:08');
INSERT INTO `user_role_project` VALUES ('bf45584690d74afc8f07a0f8e62811e6', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('bf7bfdccc1644f778ab8fcc13e2a1b7a', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('bfd167999a5b4872a0b640aa8e3b3f76', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:08', null, '2018-09-10 15:42:22');
INSERT INTO `user_role_project` VALUES ('bfee6d614c5d46ea8d60a3dcf15bc8ea', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('c05e02c6a1b74266bfea383bfdcec013', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:27', null, '2018-09-14 13:27:31');
INSERT INTO `user_role_project` VALUES ('c11430a7d2b942099016be639800dd78', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('c12d5225bbc142c5ac4b790a69cfdd97', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('c1ac0862daef47f19ec2de7dfbc1aebe', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c1eb20bed9354253aa20d39d517b5cca', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c26e6da7bc9244bd969c3dd9e6b09da2', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-14 13:27:31', null, '2018-09-14 15:17:01');
INSERT INTO `user_role_project` VALUES ('c2a9d431ccfa492e96b138d997bb8911', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c2b6b8b3e6f843f88ac03453fd8f2286', '53827bd6baeb493c8c817e8cd2910aec', '1001', '001', '62', '1', null, null, '2018-10-18 15:19:19', null, null);
INSERT INTO `user_role_project` VALUES ('c3397a267cac47ac98bac5429450aad2', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:27', null, '2018-09-14 13:27:31');
INSERT INTO `user_role_project` VALUES ('c33c27ede6664312bf8593faa67f0bfc', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c3c211ef19264079bdbdbcd40953982c', '22', '[\"cro\"', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:08', null, null);
INSERT INTO `user_role_project` VALUES ('c3c65c0bc2cf45308c11446bdd1a836e', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:29:39', null, '2018-09-07 15:32:29');
INSERT INTO `user_role_project` VALUES ('c42b342c13f44dacafe6284ff2eeb49d', '33', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:51:20', null, '2018-09-07 16:28:36');
INSERT INTO `user_role_project` VALUES ('c49bd74aa7be43c1a746c908a73ec7ae', '33', '1004', 'test_04', '62', '2', null, null, '2018-09-17 11:02:15', null, '2018-09-17 15:50:37');
INSERT INTO `user_role_project` VALUES ('c4f72a5bbc52404285b69d972226dac1', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c5500fd44faa4d4b88f2b1e515d38acd', 'bf4dd9b1769d4abc9b2bd556154f3147', '1001', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:24:58', null, '2018-10-18 16:16:41');
INSERT INTO `user_role_project` VALUES ('c589a1320e794ca4b6d3e11f298d34c2', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c5d9ad5275ee43f397ca7c8e0fa9996b', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:32:41', null, '2018-09-12 18:56:08');
INSERT INTO `user_role_project` VALUES ('c62bf3de9d8e498f8a1fa1c9f8e4df48', '33', '1004', 'test_04', '62', '1', null, null, '2018-09-17 16:50:25', null, null);
INSERT INTO `user_role_project` VALUES ('c68015c5a7c24e1d82716d73ab23d71d', '44', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-21 15:33:30', null, '2018-09-21 15:38:30');
INSERT INTO `user_role_project` VALUES ('c79bc856694148329773ae79fea8df54', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:49:02', null, '2018-09-10 15:42:15');
INSERT INTO `user_role_project` VALUES ('c8c548692dab4835b06c662f9c7c1901', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c8cd6ef5430e4243b1a55a72d415cde5', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('c92ffb262165415f94ea3c939c524352', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c9312df572ae4124b362059347b7ee5c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c98dc500794948ae9c9448f8a1b4a536', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('c9d312f4626f4856936d7a52ce7b126d', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('cb039c90d8fa439d9603e04ce4709f67', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:20', null, null);
INSERT INTO `user_role_project` VALUES ('cb412a2bb3fa482abe64f522d344b75f', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('cb6ccd7e819e4d2f955e011fd311af5a', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('cb8c9ead1c604a3794f90a43b402309c', '33', '1001', 'test_04', '62', '2', null, null, '2018-09-17 11:02:11', null, '2018-09-17 11:02:15');
INSERT INTO `user_role_project` VALUES ('cc989af1b8274af987e04d19d3d71664', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ccbe965d97124443b066dc1fc68a87bd', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ce34e47cf91f433cacafff3ac46eccba', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:50', null, '2018-09-26 09:37:29');
INSERT INTO `user_role_project` VALUES ('ce452293fdd0454dbea6d9fe920be1ae', 'bf4dd9b1769d4abc9b2bd556154f3147', '1005', 'bjlh_pv', '62', '1', null, null, '2018-10-18 16:16:41', null, null);
INSERT INTO `user_role_project` VALUES ('ce4f37b6480f4567a3720e7df01ef339', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:43', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('cf499f36fe8149a4b1cf00cd9db6138c', '33', '[\"测试角色\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:18:34', null, '2018-09-07 15:21:58');
INSERT INTO `user_role_project` VALUES ('cf8a7d9c122b4ade8a71a5a23fe42417', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('cff5d3b0c3b54594b24be84594148726', '33', '\"[\\\"cro\\\"\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:28:36', null, '2018-09-07 16:29:50');
INSERT INTO `user_role_project` VALUES ('d04574653ee948b3987f3b5fa792dfc5', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:28:25', null, '2018-09-12 13:32:41');
INSERT INTO `user_role_project` VALUES ('d0628e4331e248ed84d04f7d74350893', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('d090b90c83a946c59c652a9dd0b97889', 'bf4dd9b1769d4abc9b2bd556154f3147', '1004', 'bjlh_pv', '62', '1', null, null, '2018-10-18 16:16:41', null, null);
INSERT INTO `user_role_project` VALUES ('d0fb0de8f7144a51a8817005a3c8e780', '33', 'cro', 'test_04', '62', '2', null, null, '2018-09-17 16:39:36', null, '2018-09-17 16:50:25');
INSERT INTO `user_role_project` VALUES ('d112c6212bdd4e97b9dc1549d2d16bff', '0e22840e89944764911f48c298de5be3', '1005', '001', '62', '2', null, null, '2018-10-22 15:19:44', null, '2018-10-22 15:24:16');
INSERT INTO `user_role_project` VALUES ('d112ce53a13544ef80c117e629eaf23d', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('d11f621201a544838f8a1a07464bdb22', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('d14bb70a8cf54e3298ca00f9906235c6', '865e7d4a867c48da88f7a5465c1f3688', '1003', 'bjlh_pv', '62', '1', null, null, '2018-10-22 11:29:24', null, null);
INSERT INTO `user_role_project` VALUES ('d15ba357ec164965909cc14f0561f2cf', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-07 18:25:07', null, '2018-09-10 15:27:34');
INSERT INTO `user_role_project` VALUES ('d17a89b2a17f4cb89a3e857558bfb8f3', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:40:23', null, '2018-09-07 15:41:46');
INSERT INTO `user_role_project` VALUES ('d1b88bdd4a4444c680cfb6e889057513', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('d2f78c5fdccf4b9d95d50aa26c9cc35c', '22', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-10 17:11:10', null, '2018-09-11 13:30:30');
INSERT INTO `user_role_project` VALUES ('d312d1fb5bc14dd9a142c0561736d325', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:36', null, '2018-09-26 15:02:20');
INSERT INTO `user_role_project` VALUES ('d37e3d8025f24cab95b9345a3a21aef5', '53827bd6baeb493c8c817e8cd2910aec', '1005', '001', '62', '1', null, null, '2018-10-18 15:19:19', null, null);
INSERT INTO `user_role_project` VALUES ('d3b5277c52b345e0b7cc2c07a298b5f4', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('d3bb43197cd3400c8e5d0da17372fc0e', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('d48caf7fbfb04f7f9e17524a9a114a40', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('d4a75a0a5d3d405bb4a435103b07ec8a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('d580ce54969f471b99bd4c6edfadf946', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('d5b7bccad0da416c9baa38d688e68f7e', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('d6a3accd7d5943e3912bc975f704c0e7', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('d6c03a3c8867468fa4b33c86f0e1dee7', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('d6dca04580e649c597a617c23ab33af7', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('d7852b73434b445f92d500b1786c10e1', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('d79ecbe82b1c42d58a2236ed1e593a14', '33', '1234', 'test_04', '62', '2', null, null, '2018-09-17 15:50:37', null, '2018-09-17 15:50:42');
INSERT INTO `user_role_project` VALUES ('d7cf3a000db24d03918502a82696d485', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('d876b3be05bb4fb29ea2d0dd124c96d1', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('d8d2cd838cc34c0aa5d4b0ac6ab2ca72', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('da3bfe9f02ee46c985378794fcdcb24c', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('da6fbe8168d948e2b587e70e4e08795a', '33', '\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:45:00', null, '2018-09-07 15:46:58');
INSERT INTO `user_role_project` VALUES ('da72941b847942a1b6740647bf653e8f', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:43', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('da790fe3dfa34c31b4d90cc616f2c465', '33', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:28:36', null, '2018-09-07 16:29:50');
INSERT INTO `user_role_project` VALUES ('dab319c95568420d963595a879d3c604', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('dad91edcb7ca4429ac3078578b39981e', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:27', null, '2018-09-14 13:27:31');
INSERT INTO `user_role_project` VALUES ('dafbe6bc33874051b84f4a2a1647c313', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('db910f18dc884717890e5b82eb6701b0', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:55', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('dbad95fe90e649cfb307b93c41cfd4c8', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:43', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('dc0866eb5fe6495892992c9fa85656f6', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:13', null, '2018-09-14 15:19:50');
INSERT INTO `user_role_project` VALUES ('dc218bb4fc204d57b1870607eb09a507', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:30:30', null, '2018-09-14 15:17:13');
INSERT INTO `user_role_project` VALUES ('dce4f7a2b4e54fd8b7dd436c0dc6d7c5', 'bf4dd9b1769d4abc9b2bd556154f3147', '1001', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:12:25', null, '2018-10-18 15:24:58');
INSERT INTO `user_role_project` VALUES ('dd245b003e684d25aa422761e7024469', 'bf4dd9b1769d4abc9b2bd556154f3147', '1001', 'bjlh_pv', '62', '1', null, null, '2018-10-18 16:16:41', null, null);
INSERT INTO `user_role_project` VALUES ('dd52ee0062ad4512bc9d5565f9d5fc0d', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('ddbac4b6dcb84e05a0e68f8f668491da', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ddcadcaad02f4d22bf1b6b1347dae7ea', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('dde2e0b4548e406a8fd6a899d93605e1', '33', '1002', 'test_04', '62', '2', null, null, '2018-09-17 11:02:11', null, '2018-09-17 11:02:15');
INSERT INTO `user_role_project` VALUES ('de9b5350a1824e288007daf24dc9a1a8', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('df67366e11184451b7606019aee6daa6', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('df9e34d512a749819dd925e2ee37cbbc', '0e22840e89944764911f48c298de5be3', '1006', '001', '62', '1', null, null, '2018-10-22 15:24:16', null, null);
INSERT INTO `user_role_project` VALUES ('dff6514add8b4cf89b3861966ba8ce0e', '33', '1003', 'test_04', '62', '1', null, null, '2018-09-17 16:50:25', null, null);
INSERT INTO `user_role_project` VALUES ('e05383591d2441fb98fc0bb41f4c16cd', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('e069dc758535473692bbd17d8887bcb1', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:27:34', null, '2018-09-10 15:42:08');
INSERT INTO `user_role_project` VALUES ('e145336c8479492383b06a7398db3ebf', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('e19e936958d749d4b53ad500ee7415be', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:28:25', null, '2018-09-12 13:32:41');
INSERT INTO `user_role_project` VALUES ('e1acf22107a242978561795ba1353e8a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('e1ca24c4f02147c3b49c75a2683133ac', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('e233609cb6aa4c18a02f64b5609611ed', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 18:25:07', null, '2018-09-10 15:27:34');
INSERT INTO `user_role_project` VALUES ('e238185505bb42a08d18212776a2b773', '33', '1001', 'test_03', '62', '1', null, null, '2018-09-18 09:56:49', null, null);
INSERT INTO `user_role_project` VALUES ('e246f54ded4b418fa6dba45fbc4c7efc', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('e28631f89a59463ab3a64c177ed0b427', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('e2b182e5d3fa4fb69eb77b23ce625bf3', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('e316f5bf58a74b1086cc8c75ec16fd6f', '33', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('e3a43086b9ab4bedb0f8eeab3b2ae083', '33', '1002', 'test_04', '62', '1', null, null, '2018-09-17 16:50:25', null, null);
INSERT INTO `user_role_project` VALUES ('e3b23f587d6349959f3210aa516f7814', '33', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:34:52', null, '2018-09-26 09:40:31');
INSERT INTO `user_role_project` VALUES ('e3bbf6afc62a4310957a65070e0ac0a6', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('e4628e3beac94331bc5bbc6dabee2181', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('e4acc7d0abed42e0b103e255b26d227f', '22', '1006', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:44', null, '2018-09-26 10:27:27');
INSERT INTO `user_role_project` VALUES ('e4dfd9514f064259a0d716a45f16fe7b', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('e5affcaa395d455ca4b869e646df23a8', '33', '\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:38:44', null, '2018-09-07 15:40:23');
INSERT INTO `user_role_project` VALUES ('e5b3f2cffe9e40eaa9bc9a0fbfb4075d', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:32:41', null, '2018-09-12 18:56:08');
INSERT INTO `user_role_project` VALUES ('e60e9863622449b1881a70b50b3fe8cb', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('e62f6a92f9c7441f85a3fab05df290a7', '865e7d4a867c48da88f7a5465c1f3688', '1004', 'bjlh_pv', '62', '1', null, null, '2018-10-22 11:29:24', null, null);
INSERT INTO `user_role_project` VALUES ('e6b39dcdde374e3d8a8187e6fd84214c', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:54', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('e6e271d43d484f7682e09861c824563f', '33', '1005', 'test_04', '62', '2', null, null, '2018-09-17 11:02:11', null, '2018-09-17 11:02:15');
INSERT INTO `user_role_project` VALUES ('e7052b20a74a48bba904f1e51684ed52', '44', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-25 18:37:57', null, '2018-09-26 09:40:17');
INSERT INTO `user_role_project` VALUES ('e730a2090d4045d49b9633c3b61a3385', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:30:30', null, '2018-09-14 15:17:13');
INSERT INTO `user_role_project` VALUES ('e7878578c1ce46d1b2b34a997bc7e45a', '33', 'pv001', 'xxx-32894', '62', '2', null, 'wq', '2018-08-23 10:26:50', 'string', '2018-09-06 13:29:45');
INSERT INTO `user_role_project` VALUES ('e7db95c3e05f4847975b53141b4c8874', '53827bd6baeb493c8c817e8cd2910aec', '1003', '001', '62', '1', null, null, '2018-10-18 15:19:19', null, null);
INSERT INTO `user_role_project` VALUES ('e86993d8a51148d8804f31226052e2b6', '22', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:13', null, '2018-09-14 15:19:50');
INSERT INTO `user_role_project` VALUES ('e8a7a4ea8f91476097596356dfb0fc78', '33', '1001', 'test_04', '62', '2', null, null, '2018-09-17 15:50:37', null, '2018-09-17 15:50:42');
INSERT INTO `user_role_project` VALUES ('e8b25de24be74f299b4488f63ce8bd98', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('e8c2d85fdead4e3dbf044f28f107955a', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:01', null, '2018-09-14 15:19:44');
INSERT INTO `user_role_project` VALUES ('e904b1ccefbb4fac8b80cf0c9dc1eacc', 'bf4dd9b1769d4abc9b2bd556154f3147', '1006', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:24:58', null, '2018-10-18 16:16:41');
INSERT INTO `user_role_project` VALUES ('e9ea5a835e1e4e43b5e2002f5f223698', '33', '1004', 'test_04', '62', '2', null, null, '2018-09-17 15:50:42', null, '2018-09-17 16:39:36');
INSERT INTO `user_role_project` VALUES ('eba5c6e96a334511bff460f0d49a7c22', '33', '1003', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ec13b7b18238406c80a3208b6614eea0', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('ec659f2ec7c749f98bf62d7557a21f9f', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ecc6c0094c774685ac8374ce1b4d00b1', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('eda1bb7b36c8400a849b7a7d2860668a', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:44', null, '2018-09-21 14:52:53');
INSERT INTO `user_role_project` VALUES ('eded79388dcd4a0b8df95e80bcc49137', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('edef3e4005b648b8a35edf8d9b7b7f0d', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:44', null, '2018-09-26 10:27:27');
INSERT INTO `user_role_project` VALUES ('ee1e24f0447447c38909b5486fea63f6', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:12', null, '2018-09-26 09:40:44');
INSERT INTO `user_role_project` VALUES ('ee2bd8d8f331442787ce45403c3aeec1', '33', '\"数据录入员角色1\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:18:34', null, '2018-09-07 15:21:58');
INSERT INTO `user_role_project` VALUES ('ee2c8103195d4276bab8de2887ab6f65', '53827bd6baeb493c8c817e8cd2910aec', '1004', '001', '62', '1', null, null, '2018-10-18 15:19:19', null, null);
INSERT INTO `user_role_project` VALUES ('eec1b13202444eb6bf779432aa61b538', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ef4282c9d8e84d83b30853200cb14afe', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ef4faff7f388415b9e11897442168d49', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ef68590ed2a54f1880eb70859b0d7ed7', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:17:01', null, '2018-09-14 15:19:44');
INSERT INTO `user_role_project` VALUES ('ef76899a74b5414b81a8e66b1ae44ced', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('efc0c5200e0744ff860f89e75e62cebb', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('efc487ffcaa64b17993dfdd0266f65db', '33', '1005', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('f06487c06e0e4bda98071e1218b67cfb', '33', '\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-07 16:28:36', null, '2018-09-07 16:29:50');
INSERT INTO `user_role_project` VALUES ('f0c5afae1feb41fdb9f8f56606370a41', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('f0e9f42de8574eec8740a716b13db259', '33', '1006', 'test_04', '62', '2', null, null, '2018-09-17 15:50:37', null, '2018-09-17 15:50:42');
INSERT INTO `user_role_project` VALUES ('f11244140bec41f2843b8160d4a609f8', '33', '1002', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:28:25', null, '2018-09-12 13:32:41');
INSERT INTO `user_role_project` VALUES ('f188de0725344a859b4abf526e624389', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('f1a6ab7f2764480ca95ade2da12549bf', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('f1b2a2aa387a4902b4ac68f85ccdc06c', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('f1d1fb66cb7b42caa9fc4dcb1102d487', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('f22481c8e94541d1a04e4f514adef8ef', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('f24b8aba26934ea1ba47b1c5b478f62b', '22', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-14 15:19:50', null, '2018-09-26 09:37:29');
INSERT INTO `user_role_project` VALUES ('f27dc3b4037b4fe9a70900ed4c9129ff', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('f2b76e2df731468789cccd5a21ead96f', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-21 14:52:53', null, '2018-09-26 09:34:52');
INSERT INTO `user_role_project` VALUES ('f38eb7de18e142b8994c964b4c914727', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('f39080df8a5547da97ebf5a9e7dcf49c', '865e7d4a867c48da88f7a5465c1f3688', '1001', 'bjlh_pv', '62', '1', null, null, '2018-10-22 11:29:24', null, null);
INSERT INTO `user_role_project` VALUES ('f3a971eeb802406793ac83460a2fffee', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 18:25:07', null, '2018-09-10 15:27:34');
INSERT INTO `user_role_project` VALUES ('f40b419208774a2ca6f0d5c3de6f5f5f', '33', '\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('f41acd1e0d4a42a3b3991ff18478f8a2', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('f5402e6299a14f0d9919ea45c1784373', '33', '[\"cro\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:28:59', null, '2018-09-07 15:29:39');
INSERT INTO `user_role_project` VALUES ('f5403a84934043449948ad02652b36f5', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('f58d66d2271d43ada78ac45aecdf20a5', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('f5bf8143a8d5470a94fb7d3dc950e4b4', 'bf4dd9b1769d4abc9b2bd556154f3147', '1003', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:12:25', null, '2018-10-18 15:24:58');
INSERT INTO `user_role_project` VALUES ('f6b0c5154d854a7ca9e33b265418370a', '33', '[\"测试角色\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-07 15:32:29', null, '2018-09-07 15:37:37');
INSERT INTO `user_role_project` VALUES ('f6ebbf6be34341c6889e506df3ee60e5', 'bf4dd9b1769d4abc9b2bd556154f3147', '1006', 'bjlh_pv', '62', '2', null, null, '2018-10-18 15:12:25', null, '2018-10-18 15:24:58');
INSERT INTO `user_role_project` VALUES ('f72d5390793347118f2749746ce8bde8', '22', '1006', 'bjlh_pv', '62', '1', null, null, '2018-09-26 15:02:08', null, null);
INSERT INTO `user_role_project` VALUES ('f790c3210cee42298c7089e3be0ca24b', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('f7fdebd6ca8347ac83ae88c97480ef94', '231231231', 'false', 'xxx-32894', '123', '1', null, 'string', '2018-08-24 10:09:09', null, null);
INSERT INTO `user_role_project` VALUES ('f81a8e26bd764e73b7dcedfe7abacae5', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('f8b69628ff824eb486b8ee77d3ae51da', '231231231', 'true', 'xxx-32894', '123', '2', null, 'string', '2018-08-23 18:56:01', 'string', '2018-08-24 09:54:31');
INSERT INTO `user_role_project` VALUES ('f9d4f7baf43a4f40a62cfb685b99e698', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('fac790cbf5c848a4bb7c74e719a0662b', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-12 13:17:56', null, '2018-09-12 13:28:25');
INSERT INTO `user_role_project` VALUES ('faeea550688a498c85fac05249d838d0', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('fbaec41d636f43b0a8d7c3e4eae7364b', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('fbd42ee100ab4549bbd39a420bfac731', '22', '[\"cro\"', 'bjlh_pv', '62', '2', null, null, '2018-09-10 17:11:10', null, '2018-09-11 13:30:30');
INSERT INTO `user_role_project` VALUES ('fbef431677cc40f8b00f537b76292a79', '33', '1003', 'test_04', '62', '2', null, null, '2018-09-17 11:02:15', null, '2018-09-17 15:50:37');
INSERT INTO `user_role_project` VALUES ('fc29602286e449b385bfabd338b8587b', '22', 'cro2', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:28', null, '2018-09-26 15:02:08');
INSERT INTO `user_role_project` VALUES ('fcc7ce282cd94c9cb465b5ab5fffee65', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-10 15:42:22', null, '2018-09-11 09:44:43');
INSERT INTO `user_role_project` VALUES ('fce1e8d5b7f641ea81070ffce6d6f8bc', '22', 'cro2', '13', '62', '1', null, null, '2018-09-14 15:19:50', null, null);
INSERT INTO `user_role_project` VALUES ('fcff63138b7a4bf8a52976a384d834db', '33', '1001', 'test_04', '62', '2', null, null, '2018-09-17 16:39:36', null, '2018-09-17 16:50:25');
INSERT INTO `user_role_project` VALUES ('fd069638897f4ae5a75ea3d144c89f28', '33', 'true', 'xxx-32894', '62', '2', null, 'string', '2018-09-06 13:29:45', 'string', '2018-09-06 13:34:33');
INSERT INTO `user_role_project` VALUES ('fd2aca58c66f49aa87bfa729c50e0192', 'bf4dd9b1769d4abc9b2bd556154f3147', '1006', 'bjlh_pv', '62', '1', null, null, '2018-10-18 16:16:41', null, null);
INSERT INTO `user_role_project` VALUES ('fd4ace76b17a41b3be8e4d985a1e6ed2', '33', '1004', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('fdbb35a116804315a538f63d712f27a6', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:44', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('fe43efc2702b4254a103cc015c3dece4', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-26 09:40:31', null, '2018-09-26 14:15:36');
INSERT INTO `user_role_project` VALUES ('fe729d2daa0c462a8a1a1a8731b5219a', '22', '\"PV001\"]', 'bjlh_pv', '62', '2', null, null, '2018-09-26 14:15:28', null, '2018-09-26 15:02:08');
INSERT INTO `user_role_project` VALUES ('ff38889df14844f295ba38fdbacf75b9', '33', 'cro', 'bjlh_pv', '62', '2', null, null, '2018-09-12 18:56:08', null, '2018-09-12 18:56:27');
INSERT INTO `user_role_project` VALUES ('ffc8988a1c7443f18b5c5eb970a8c0eb', '33', '1001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:42', null, '2018-09-11 13:24:36');
INSERT INTO `user_role_project` VALUES ('ffd362cdbdcf446c9fdeedd60189cee8', '33', '[\"[\\\"cro\\\"]\"', 'bjlh_pv', '62', '2', null, null, '2018-09-11 13:24:36', null, '2018-09-12 13:17:56');
INSERT INTO `user_role_project` VALUES ('ffff0e8ad691456db8c933e22f23d7fd', '33', 'PV001', 'bjlh_pv', '62', '2', null, null, '2018-09-11 09:44:45', null, '2018-09-11 13:24:36');

-- ----------------------------
-- Table structure for work_flows
-- ----------------------------
DROP TABLE IF EXISTS `work_flows`;
CREATE TABLE `work_flows` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `work_flow_name` varchar(32) NOT NULL COMMENT '工作流名称',
  `work_flow_english_name` varchar(32) DEFAULT NULL COMMENT '工作流英文名称',
  `work_flow_status` int(11) NOT NULL COMMENT '工作流状态(1:启用，2:禁用)',
  `company_id` char(32) NOT NULL DEFAULT '' COMMENT '公司ID',
  `delete_status` int(11) NOT NULL COMMENT '删除状态(1:未删除,2:已删除)',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流配置';

-- ----------------------------
-- Records of work_flows
-- ----------------------------
INSERT INTO `work_flows` VALUES ('1037297151343751168', '标准流程', 'dfg', '2', '62', '1', null, 'medsci', '2018-09-05 19:11:28', '33', '2018-10-17 16:12:12');
INSERT INTO `work_flows` VALUES ('1037297186391355392', '1dfg', '2dfg', '2', '62', '2', null, 'medsci', '2018-09-05 19:11:36', '33', '2018-09-13 18:54:39');
INSERT INTO `work_flows` VALUES ('1037546357946134528', '1', '1', '2', '62', '2', null, 'medsci', '2018-09-06 11:41:43', '33', '2018-09-13 18:54:37');
INSERT INTO `work_flows` VALUES ('1037623390274256896', '测试1', 'test', '2', '62', '2', null, 'medsci', '2018-09-06 16:47:49', '33', '2018-09-13 18:54:35');
INSERT INTO `work_flows` VALUES ('1037635434701418496', '1', '1', '2', '62', '2', null, 'medsci', '2018-09-06 17:35:41', '33', '2018-09-13 18:54:33');
INSERT INTO `work_flows` VALUES ('1037674934548389888', 'dfg123', 'dfg13', '2', '62', '2', null, 'medsci', '2018-09-06 20:12:38', '33', '2018-09-13 18:54:31');
INSERT INTO `work_flows` VALUES ('21a5a95ad5c94481989675810b21f11f', '测试', 'test12', '1', '62', '1', null, '33', '2018-09-14 15:43:19', '33', '2018-10-22 09:28:08');
INSERT INTO `work_flows` VALUES ('40870eef78754f2ba6c09da36c31135b', 'ppp', '123', '2', '62', '2', null, '33', '2018-09-13 17:17:12', '33', '2018-09-13 18:54:29');
INSERT INTO `work_flows` VALUES ('4a9e2bcc73384095938da3ec35845193', '简要', '2', '2', '62', '2', null, '33', '2018-09-13 18:54:53', '33', '2018-09-14 15:43:26');
INSERT INTO `work_flows` VALUES ('4e74b1de941c4564a0bc44e90a4f6a81', ' v', '  cvbv', '2', '62', '1', null, '33', '2018-09-20 14:50:02', '33', '2018-09-20 15:13:54');
INSERT INTO `work_flows` VALUES ('69fb1fe72ed64f30908dbfd81c75e03f', '标准工作流', 'biaozhun', '2', '62', '2', null, '33', '2018-09-10 11:23:26', '33', '2018-09-13 18:54:26');
INSERT INTO `work_flows` VALUES ('6bd9605771a248aaa8aafdd4d4365697', '工作流', 'sf', '2', '62', '1', null, '33', '2018-09-17 13:30:26', '33', '2018-10-22 09:28:08');
INSERT INTO `work_flows` VALUES ('ba8a2a0e0f254bbc812f82f71c04f4e5', '123', '123', '2', '62', '2', null, '33', '2018-09-12 12:02:14', '33', '2018-09-13 18:54:24');

-- ----------------------------
-- Table structure for workflow_nodes
-- ----------------------------
DROP TABLE IF EXISTS `workflow_nodes`;
CREATE TABLE `workflow_nodes` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `workflow_id` char(32) DEFAULT NULL COMMENT '工作流ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `role_id` char(32) DEFAULT NULL COMMENT '角色ID',
  `node_chinese_name` varchar(32) DEFAULT NULL COMMENT '节点中文名称',
  `node_english_name` varchar(32) DEFAULT NULL COMMENT '节点英文名称',
  `node_sort` int(11) DEFAULT NULL COMMENT '节点排序号',
  `sms_notification` int(11) DEFAULT NULL COMMENT '短信通知(1:通知，2:不通知)',
  `email_notification` int(11) DEFAULT NULL COMMENT '邮件通知(1:通知，2:不通知)',
  `rule_description` varchar(32) DEFAULT NULL COMMENT '规则描述',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态(1:未删除,2:已删除)',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流节点信息';

-- ----------------------------
-- Records of workflow_nodes
-- ----------------------------
INSERT INTO `workflow_nodes` VALUES ('03695282988348b7b212f08b3bd4190f', 'string', 'string', 'string', 'string', 'string', '0', '0', '0', 'string', 'string', '1', 'string', null, '2018-09-13 18:19:30', 'string', '2018-09-13 18:19:30');
INSERT INTO `workflow_nodes` VALUES ('07134642a80944d38e261841e05ca4b8', '21a5a95ad5c94481989675810b21f11f', '62', '34', '法规', '法规', '2', '1', '2', '', '', '1', '33', null, '2018-09-20 14:48:22', '33', '2018-09-20 14:48:50');
INSERT INTO `workflow_nodes` VALUES ('0b32d331f78248408284d5154a7d2799', '1037297151343751168', '62', '医学评审', '医学评审', 'rt', '4', '2', '2', 'ret', '', '1', '33', null, '2018-09-18 09:31:17', '33', '2018-09-20 11:21:55');
INSERT INTO `workflow_nodes` VALUES ('0e01eb5ff6ff47caa8856fd1d7af20a3', '1037297151343751168', '62', '资料管理员', '5', 'sdf', '6', '3', '1', 'sdf', '', '2', '33', null, '2018-09-13 14:39:10', '33', '2018-09-17 18:34:16');
INSERT INTO `workflow_nodes` VALUES ('1037297398606360576', '1037297186391355392', '62', '1037291816507830272', 'fg123', 'df', '1', '4', '1', 'dfg', '', '1', 'medsci', null, '2018-09-05 19:12:27', '33', '2018-09-13 17:19:20');
INSERT INTO `workflow_nodes` VALUES ('1037297497516437504', '1037297186391355392', '62', '1037291816507830272', '1', '1', '2', '3', '1', 'fg', '', '1', 'medsci', null, '2018-09-05 19:12:50', '33', '2018-09-13 17:19:20');
INSERT INTO `workflow_nodes` VALUES ('1037297611073024000', '1037297186391355392', '62', '1037291816507830272', 'f', 'sdf', '7', '3', '1', 'sdf', '', '1', 'medsci', null, '2018-09-05 19:13:17', '33', '2018-09-13 17:19:20');
INSERT INTO `workflow_nodes` VALUES ('1037546422752325632', '1037546357946134528', '62', '1037320969525293056', '12', '1', '1', '3', '2', '1', '', '2', 'medsci', null, '2018-09-06 11:41:59', 'medsci', '2018-09-06 11:42:26');
INSERT INTO `workflow_nodes` VALUES ('1037637656982089728', '1037297186391355392', '62', '1037580292118740992', '2', 'ew', '3', '3', '1', 'ew', '', '1', 'medsci', null, '2018-09-06 17:44:30', '33', '2018-09-13 17:19:20');
INSERT INTO `workflow_nodes` VALUES ('165764b80cde468eb04ebcde682dc799', '1037635434701418496', '62', '1037884744961540096', 'sdf', 'dsf', '1', '3', '1', 'sdf', '', '1', '33', null, '2018-09-13 18:23:18', '33', '2018-09-13 18:23:18');
INSERT INTO `workflow_nodes` VALUES ('19e8f3f9dd184b699417cb8e0071d644', '6bd9605771a248aaa8aafdd4d4365697', '62', '34', '3', '3', '6', '1', '1', '', '', '1', '33', null, '2018-09-20 14:25:34', '33', '2018-09-20 14:25:34');
INSERT INTO `workflow_nodes` VALUES ('1e6279f0c7224ef4af77d4d7c72ae89f', '21a5a95ad5c94481989675810b21f11f', '62', '角色查验7', '看风景的女孩', '电饭锅', '2', '1', '1', '法规', '', '2', '33', null, '2018-09-20 14:19:05', '33', '2018-09-20 14:20:19');
INSERT INTO `workflow_nodes` VALUES ('27d2cc738f0542c5a694133beaec4d6c', '6bd9605771a248aaa8aafdd4d4365697', '62', '数据质控QC', '发的', '发', '5', '1', '1', '', '', '1', '33', null, '2018-09-20 14:24:45', '33', '2018-09-20 14:25:34');
INSERT INTO `workflow_nodes` VALUES ('2ba5fc403f804502828911f137125544', '21a5a95ad5c94481989675810b21f11f', '62', '34', '不超过', '成本', '4', '1', '1', '', '', '1', '33', null, '2018-09-20 14:48:09', '33', '2018-09-20 14:48:50');
INSERT INTO `workflow_nodes` VALUES ('2c6ebe5eb0df4949b2c1dbb99aa43608', '1037297151343751168', '62', '数据质控QC', '2', 'gh', '3', '4', '2', 'fgh', '', '2', '33', null, '2018-09-12 18:06:12', '33', '2018-09-17 18:34:07');
INSERT INTO `workflow_nodes` VALUES ('39a629d9188a4873a69fe025f06eb4f7', '21a5a95ad5c94481989675810b21f11f', '62', '34', 'f', 'd', '5', '1', '1', '', '', '1', '33', null, '2018-09-20 14:48:50', '33', '2018-09-20 14:48:50');
INSERT INTO `workflow_nodes` VALUES ('4403e846ded3499e8189b67b89d80cfd', '4e74b1de941c4564a0bc44e90a4f6a81', '62', '34', 'aa', 'aa', '2', '1', '1', '', '', '1', '33', null, '2018-09-20 14:51:01', '33', '2018-09-20 14:51:38');
INSERT INTO `workflow_nodes` VALUES ('4e9f81f2cfa741e5b49c19a5fcfa61b3', '4e74b1de941c4564a0bc44e90a4f6a81', '62', '34', 'aaa', 'a', '4', '1', '1', '', '', '1', '33', null, '2018-09-20 14:51:19', '33', '2018-09-20 14:51:38');
INSERT INTO `workflow_nodes` VALUES ('55e8d7adfc6c4312b5ddd7e0df31d36a', '21a5a95ad5c94481989675810b21f11f', '62', '234', '吗，', '。，吗', '4', '1', '1', '', '', '2', '33', null, '2018-09-20 14:23:51', '33', '2018-09-20 14:25:51');
INSERT INTO `workflow_nodes` VALUES ('569f0487dcd24ed1be6c3363928026de', 'string', 'string', 'string', 'string', 'string', '0', '0', '0', 'string', 'string', '1', 'string', null, '2018-09-13 16:52:38', 'string', '2018-09-13 16:52:38');
INSERT INTO `workflow_nodes` VALUES ('5a03c975fc2b4bde87c4f9cad12c0630', '6bd9605771a248aaa8aafdd4d4365697', '62', '数据质控QC', '玩儿', '发的', '2', '1', '1', 'sdf', '', '2', '33', null, '2018-09-17 19:13:07', '33', '2018-09-18 16:11:22');
INSERT INTO `workflow_nodes` VALUES ('5eaf1f34278a47a09ffef10f90ee1915', '6bd9605771a248aaa8aafdd4d4365697', '62', '数据质控QC', 'gdfg', 'dfg', '2', '3', '1', 'dfg', '', '2', '33', null, '2018-09-17 17:56:12', '33', '2018-09-18 16:11:28');
INSERT INTO `workflow_nodes` VALUES ('5f8de6db12544bf58f647e32d1eeab3c', '1037297151343751168', '62', '医学评审QC', '医学评审QC', '地方', '5', '2', '2', '电饭锅', '', '1', '33', null, '2018-09-18 17:20:04', '33', '2018-09-20 11:22:11');
INSERT INTO `workflow_nodes` VALUES ('63a437f3cc1b4f79973f2882d5958a8b', '1037297151343751168', '62', '资料管理员', '4', 'sdf', '5', '3', '1', 'sdf', '', '2', '33', null, '2018-09-13 18:22:05', '33', '2018-09-17 18:34:13');
INSERT INTO `workflow_nodes` VALUES ('67ae5d84405740699c2cf2ff5100faf6', '21a5a95ad5c94481989675810b21f11f', '62', '34', '6', '让我', '5', '1', '1', '让他', '', '2', '33', null, '2018-09-20 14:46:16', '33', '2018-09-20 14:47:46');
INSERT INTO `workflow_nodes` VALUES ('67f34b9dd78545929ba6cf1716442471', '1037297151343751168', '62', '资料管理员', '3', 'sdf', '4', '3', '1', 'sdf', '', '2', '33', null, '2018-09-13 18:21:42', '33', '2018-09-17 18:34:10');
INSERT INTO `workflow_nodes` VALUES ('6c4373c2ed66451a9c826e06a51b674a', '1037297151343751168', '62', '医学评审', '6', 'asd', '6', '3', '1', 'asda', '', '2', '33', null, '2018-09-13 18:48:27', '33', '2018-09-17 18:34:19');
INSERT INTO `workflow_nodes` VALUES ('6dfee1d11e574f27b0c9904533d5874d', '21a5a95ad5c94481989675810b21f11f', '62', '234', '美女', '那么', '6', '1', '1', '吗', '', '2', '33', null, '2018-09-20 14:21:24', '33', '2018-09-20 14:22:38');
INSERT INTO `workflow_nodes` VALUES ('73202a1aaa3a46bca6857e9992d66a01', '21a5a95ad5c94481989675810b21f11f', '62', '34', '1', '日本', '4', '1', '1', '', '', '2', '33', null, '2018-09-20 14:28:35', '33', '2018-09-20 14:45:42');
INSERT INTO `workflow_nodes` VALUES ('758b4781a2aa473bba305ae1fc382bca', '21a5a95ad5c94481989675810b21f11f', '62', '数据录入员', '0', 'qw', '4', '3', '1', 'qw', '', '2', '33', null, '2018-09-14 15:44:30', '33', '2018-09-20 14:22:32');
INSERT INTO `workflow_nodes` VALUES ('78b6851f5c8c45a692438e936266f2c0', '21a5a95ad5c94481989675810b21f11f', '62', '34', '发过火', '发过火', '2', '1', '1', '', '', '2', '33', null, '2018-09-20 14:27:51', '33', '2018-09-20 14:45:34');
INSERT INTO `workflow_nodes` VALUES ('799b8768a1d842c08a36900043f419ea', '6bd9605771a248aaa8aafdd4d4365697', '62', '资料管理员', '原始资料', 'yuanshiziliao', '1', '3', '1', '还是', '', '2', '33', null, '2018-09-17 13:31:16', '33', '2018-09-17 18:20:57');
INSERT INTO `workflow_nodes` VALUES ('79d38387beb744518859718facd649d0', '4e74b1de941c4564a0bc44e90a4f6a81', '62', '34', 'ccc', 'c', '3', '1', '1', '', '', '1', '33', null, '2018-09-20 14:51:38', '33', '2018-09-20 14:51:38');
INSERT INTO `workflow_nodes` VALUES ('7b8507ae6be949d2bdf8f815cc72c029', '6bd9605771a248aaa8aafdd4d4365697', '62', '34', '2', '3', '4', '1', '1', '', '', '1', '33', null, '2018-09-20 14:25:18', '33', '2018-09-20 14:25:34');
INSERT INTO `workflow_nodes` VALUES ('8262482f346d4d918dc6527ae9aaa052', '21a5a95ad5c94481989675810b21f11f', '62', '34', '反倒是给对方', '电饭锅', '4', '1', '1', '', '', '2', '33', null, '2018-09-20 14:26:09', '33', '2018-09-20 14:27:22');
INSERT INTO `workflow_nodes` VALUES ('847d688b9bdf4bbab91e6ee583ca4c59', '21a5a95ad5c94481989675810b21f11f', '62', '234', 'VB', 'v', '2', '1', '1', 'v', '', '2', '33', null, '2018-09-20 14:20:33', '33', '2018-09-20 14:22:26');
INSERT INTO `workflow_nodes` VALUES ('89270499584747a4a09fe0fb6bd254c8', '1037297151343751168', '62', '数据录入员', '数据录入', 'sdf', '2', '2', '2', 'sdf', '', '1', '33', null, '2018-09-17 18:34:45', '33', '2018-09-20 11:20:55');
INSERT INTO `workflow_nodes` VALUES ('8c9a9100f8eb45189900853e5afeaa5e', '21a5a95ad5c94481989675810b21f11f', '62', '234', '不v', '吧', '5', '1', '1', '成本', '', '2', '33', null, '2018-09-20 14:19:29', '33', '2018-09-20 14:22:35');
INSERT INTO `workflow_nodes` VALUES ('8d0e9aa63601487fab141251bd548965', '21a5a95ad5c94481989675810b21f11f', '62', '医学评审', 'e21', 'e', '1', '4', '2', 'weqw', '', '2', '33', null, '2018-09-14 15:43:57', '33', '2018-09-14 15:45:14');
INSERT INTO `workflow_nodes` VALUES ('8e10f2f934e94e87ba4ac55a1ec35f92', '4e74b1de941c4564a0bc44e90a4f6a81', '62', '34', 'a', 'a', '1', '1', '1', 'a', '', '1', '33', null, '2018-09-20 14:50:21', '33', '2018-09-20 14:51:38');
INSERT INTO `workflow_nodes` VALUES ('8fbabe9d44fd4329aa96b5832a637818', '21a5a95ad5c94481989675810b21f11f', '62', '234', '吗', '那么', '7', '1', '1', '', '', '2', '33', null, '2018-09-20 14:22:02', '33', '2018-09-20 14:27:32');
INSERT INTO `workflow_nodes` VALUES ('94764289bd2942e48dfcc7deefed3878', '6bd9605771a248aaa8aafdd4d4365697', '62', '角色查验7', '发过火', '发过火', '1', '1', '1', '', '', '1', '33', null, '2018-09-18 17:54:59', '33', '2018-09-20 14:25:34');
INSERT INTO `workflow_nodes` VALUES ('9723ff76a0ca44d2b467722638f4761e', '1037297151343751168', '62', '资料管理员', '原始资料', 'sdfsdf', '1', '2', '1', 'dfs', '', '1', '33', null, '2018-09-17 18:34:32', '33', '2018-09-20 11:20:35');
INSERT INTO `workflow_nodes` VALUES ('9e66d2bc086f4d31be7859138d9f8976', '6bd9605771a248aaa8aafdd4d4365697', '62', '34', '更好', '个', '3', '1', '1', '', '', '1', '33', null, '2018-09-20 14:24:33', '33', '2018-09-20 14:25:34');
INSERT INTO `workflow_nodes` VALUES ('9ed96e57b710479ba46e63884fee05e7', '21a5a95ad5c94481989675810b21f11f', '62', '34', '0', '87', '2', '1', '1', '', '', '2', '33', null, '2018-09-20 14:29:38', '33', '2018-09-20 14:45:37');
INSERT INTO `workflow_nodes` VALUES ('a018f1ab42f2440d8aa53857ec9af5e4', '21a5a95ad5c94481989675810b21f11f', '62', '数据录入员', '1', 'q', '8', '3', '1', 'qw', '', '2', '33', null, '2018-09-14 15:44:14', '33', '2018-09-20 14:27:25');
INSERT INTO `workflow_nodes` VALUES ('a326e4d0b17b460986dcfce205d7944e', '1037297186391355392', '62', '1037884744961540096', 'dfg', 'dfg', '6', '3', '1', 'dfg', '', '1', '33', null, '2018-09-13 17:18:59', '33', '2018-09-13 17:19:20');
INSERT INTO `workflow_nodes` VALUES ('a981b224be7940b090687fe5b6480107', '1037297151343751168', '62', '报告递交', '报告递交', 'dsf', '6', '2', '2', 'sd', '', '1', '33', null, '2018-09-18 18:41:34', '33', '2018-09-20 11:22:25');
INSERT INTO `workflow_nodes` VALUES ('b05733f321e24c139e04092e108cc98f', '21a5a95ad5c94481989675810b21f11f', '62', '角色查验7', '0', '9', '3', '1', '1', 'l', '', '2', '33', null, '2018-09-20 14:23:00', '33', '2018-09-20 14:24:03');
INSERT INTO `workflow_nodes` VALUES ('b42f52b400594d8b84c2670c35e9e39b', '1037297151343751168', '62', '数据质控QC', 'gdf', 'dgf', '7', '3', '1', 'dfg', '', '2', '33', null, '2018-09-17 17:31:27', '33', '2018-09-17 18:34:22');
INSERT INTO `workflow_nodes` VALUES ('b9e81027b63b488db69b04a2942073fd', '21a5a95ad5c94481989675810b21f11f', '62', '234', '考虑', '好', '10', '1', '1', '规划局', '', '2', '33', null, '2018-09-20 14:20:51', '33', '2018-09-20 14:22:44');
INSERT INTO `workflow_nodes` VALUES ('bed94a90f6df44aca065987015d36f97', '21a5a95ad5c94481989675810b21f11f', '62', '角色查验7', 'VB', 'VB', '2', '1', '1', 'v', '', '2', '33', null, '2018-09-20 14:19:52', '33', '2018-09-20 14:22:29');
INSERT INTO `workflow_nodes` VALUES ('c6bc3354af4e477c9631e7bec1d806fd', '4e74b1de941c4564a0bc44e90a4f6a81', '62', '34', 'b', 'b', '5', '1', '1', 'b', '', '1', '33', null, '2018-09-20 14:50:33', '33', '2018-09-20 14:51:38');
INSERT INTO `workflow_nodes` VALUES ('c75b4a18c9224cb69ab3ed6dda283bfd', '1037297186391355392', '62', '1037884744961540096', 'dfg3', '3', '4', '3', '1', 'dsa', '', '1', '33', null, '2018-09-13 17:19:20', '33', '2018-09-13 17:19:20');
INSERT INTO `workflow_nodes` VALUES ('c816470514514795a9071b7e886a0370', '21a5a95ad5c94481989675810b21f11f', '62', '34', '5', 'VB', '1', '1', '1', 'VB', '', '2', '33', null, '2018-09-20 14:46:00', '33', '2018-09-20 14:47:32');
INSERT INTO `workflow_nodes` VALUES ('caa7cb64ec2d4572a06f0ac49235702d', '21a5a95ad5c94481989675810b21f11f', '62', '34', '5.1', '二', '3', '1', '1', '', '', '2', '33', null, '2018-09-20 14:46:33', '33', '2018-09-20 14:47:38');
INSERT INTO `workflow_nodes` VALUES ('d8bfadf90ff2472eac4d144b3aef672f', '21a5a95ad5c94481989675810b21f11f', '62', '234', '看了看', '禁用', '4', '1', '1', '', '', '2', '33', null, '2018-09-20 14:23:27', '33', '2018-09-20 14:27:36');
INSERT INTO `workflow_nodes` VALUES ('d9fcb599f6454cc99144dfaee6a4f4d7', '21a5a95ad5c94481989675810b21f11f', '62', '34', '5.01', '额', '2', '1', '1', ' ', '', '2', '33', null, '2018-09-20 14:46:55', '33', '2018-09-20 14:47:35');
INSERT INTO `workflow_nodes` VALUES ('dd835ea4cb944ed49cc2aa6af07c204f', '6bd9605771a248aaa8aafdd4d4365697', '62', '34', '发23', '23', '2', '1', '1', '23', '', '1', '33', null, '2018-09-20 14:25:04', '33', '2018-09-20 14:25:34');
INSERT INTO `workflow_nodes` VALUES ('e36d3316898046fa9bae955eb192da15', '21a5a95ad5c94481989675810b21f11f', '62', '34', '大V', '调调', '4', '1', '1', '', '', '2', '33', null, '2018-09-20 14:47:11', '33', '2018-09-20 14:47:42');
INSERT INTO `workflow_nodes` VALUES ('ebd3597baa4d4748ad447296383e828c', '1037297151343751168', '62', '数据质控QC', '数据质控', 'fgh', '3', '2', '1', 'fgh', '', '1', '33', null, '2018-09-17 18:35:37', '33', '2018-09-20 11:21:32');
INSERT INTO `workflow_nodes` VALUES ('eee9f720b49e49b8b64467e8c409e15a', '21a5a95ad5c94481989675810b21f11f', '62', '数据质控QC', '发的', '发', '3', '2', '1', '', '', '1', '33', null, '2018-09-20 14:48:37', '33', '2018-09-20 14:48:50');
INSERT INTO `workflow_nodes` VALUES ('f06f03c6b32540c5aaf6a48f60fdcc2d', '21a5a95ad5c94481989675810b21f11f', '62', '角色查验7', '那么', '美女', '12', '1', '1', '那么', '', '2', '33', null, '2018-09-20 14:21:48', '33', '2018-09-20 14:27:29');
INSERT INTO `workflow_nodes` VALUES ('f35d11ae1e4248a88ba0c55af3ea9efc', '21a5a95ad5c94481989675810b21f11f', '62', '34', '1', '迟迟不', '1', '1', '1', 'VB', '', '1', '33', null, '2018-09-20 14:47:57', '33', '2018-09-20 14:48:50');
INSERT INTO `workflow_nodes` VALUES ('f877db9f642e448eb62f40dd54892b31', '1037297151343751168', '62', '数据质控QC', '1', 'hgj', '1', '1', '1', 'fgh', '', '2', '33', null, '2018-09-12 18:05:58', '33', '2018-09-17 18:34:04');

-- ----------------------------
-- Table structure for workflow_regulations
-- ----------------------------
DROP TABLE IF EXISTS `workflow_regulations`;
CREATE TABLE `workflow_regulations` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `workflow_id` char(32) DEFAULT NULL COMMENT '工作流ID',
  `regulation_id` char(32) DEFAULT NULL COMMENT '规则ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态(1:未删除，2:已删除)',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流规则';

-- ----------------------------
-- Records of workflow_regulations
-- ----------------------------
INSERT INTO `workflow_regulations` VALUES ('01917a3784d048729f64e61a21cce326', '69fb1fe72ed64f30908dbfd81c75e03f', '511a04f6ac464762b2e63fa3eb24e4b4', '62', '1', null, '33', '2018-09-12 16:12:09', '33', '2018-09-12 16:12:09');
INSERT INTO `workflow_regulations` VALUES ('1037297798856208384', '1037297186391355392', '1037297798784905216', '62', '1', null, 'medsci', '2018-09-05 19:14:02', 'medsci', '2018-09-05 19:14:02');
INSERT INTO `workflow_regulations` VALUES ('1037298317272182784', '1037297186391355392', '1037298317100216320', '62', '1', null, 'medsci', '2018-09-05 19:16:06', 'medsci', '2018-09-05 19:16:06');
INSERT INTO `workflow_regulations` VALUES ('1037299265818226688', '1037297186391355392', '1037299265688203264', '62', '1', null, 'medsci', '2018-09-05 19:19:52', 'medsci', '2018-09-05 19:19:52');
INSERT INTO `workflow_regulations` VALUES ('1037600596043051008', '1037297186391355392', '1037600595980136448', '62', '1', null, 'medsci', '2018-09-06 15:17:14', 'medsci', '2018-09-06 15:17:14');
INSERT INTO `workflow_regulations` VALUES ('1037600725747707904', '1037297186391355392', '1037600725680599040', '62', '1', null, 'medsci', '2018-09-06 15:17:45', 'medsci', '2018-09-06 15:17:45');
INSERT INTO `workflow_regulations` VALUES ('1037638023505539072', '1037297186391355392', '1037638023371321344', '62', '1', null, 'medsci', '2018-09-06 17:45:58', 'medsci', '2018-09-06 17:45:58');
INSERT INTO `workflow_regulations` VALUES ('14719bce0dd54446bd97ad44ba5ddf7b', '69fb1fe72ed64f30908dbfd81c75e03f', '7a66b973c2c84d9298d8e9f982e19be1', '62', '1', null, '33', '2018-09-12 16:44:18', '33', '2018-09-12 16:44:18');
INSERT INTO `workflow_regulations` VALUES ('274d72e84c634ea4830f8f820d4a7464', '1037297186391355392', '5b102c4f9c3944f5a54c1c0f6ead5fda', '62', '1', null, '33', '2018-09-13 18:28:24', '33', '2018-09-13 18:28:24');
INSERT INTO `workflow_regulations` VALUES ('3e0bd9e03be948668cd53a81f07af981', '21a5a95ad5c94481989675810b21f11f', 'e1e80fd7b38e482f9dad8a895ea0eea2', '62', '1', null, '33', '2018-09-18 15:05:34', '33', '2018-09-18 15:05:34');
INSERT INTO `workflow_regulations` VALUES ('402447926d0746e0b199fd6b1b34446f', '21a5a95ad5c94481989675810b21f11f', 'a1f7fe20752f49eb872a15cfb15535a5', '62', '1', null, '33', '2018-09-14 15:46:19', '33', '2018-09-14 15:46:19');
INSERT INTO `workflow_regulations` VALUES ('47b8232f2ab543c5afbca3a1282eaac8', '69fb1fe72ed64f30908dbfd81c75e03f', '5a594f0bdeac4586ab4ce4494202c786', '62', '1', null, '33', '2018-09-12 16:41:20', '33', '2018-09-12 16:41:20');
INSERT INTO `workflow_regulations` VALUES ('576f5f35eb5d4a8b837d377e9e0d218c', '69fb1fe72ed64f30908dbfd81c75e03f', '0f95e3c7789d41e489f5ebb57f56c0c5', '62', '1', null, '33', '2018-09-12 16:50:01', '33', '2018-09-12 16:50:01');
INSERT INTO `workflow_regulations` VALUES ('5ac5fa5189be4745b5904239f327682b', '6bd9605771a248aaa8aafdd4d4365697', '9eb06fb043ce4982bfb90ee567255cd0', '62', '1', null, '33', '2018-09-18 18:00:28', '33', '2018-09-18 18:00:28');
INSERT INTO `workflow_regulations` VALUES ('60a66531c21443babce7284a8e96e892', '69fb1fe72ed64f30908dbfd81c75e03f', '91bec56290f44943867f03116fe6a6c7', '62', '1', null, '33', '2018-09-12 16:51:50', '33', '2018-09-12 16:51:50');
INSERT INTO `workflow_regulations` VALUES ('74a7403da4bf47989fc4117fe26ebbb4', '69fb1fe72ed64f30908dbfd81c75e03f', '43e9efb22a064129a607a6d036db8ef7', '62', '1', null, '33', '2018-09-12 16:55:07', '33', '2018-09-12 16:55:07');
INSERT INTO `workflow_regulations` VALUES ('78480af313a749ebbc9ca778ddaf936e', '69fb1fe72ed64f30908dbfd81c75e03f', '4c1d542da1a74c3ebdf8959644cc0bbf', '62', '1', null, '33', '2018-09-12 16:51:11', '33', '2018-09-12 16:51:11');
INSERT INTO `workflow_regulations` VALUES ('78d2c143aa3a4eb78032ea710c7892ee', '69fb1fe72ed64f30908dbfd81c75e03f', 'd8fd6cceb1834848858232cb2f318e62', '62', '1', null, '33', '2018-09-12 16:53:04', '33', '2018-09-12 16:53:04');
INSERT INTO `workflow_regulations` VALUES ('8007cf497d3c4ce7b6ddefa60488ca2b', '1037297151343751168', '2352d28e165b436e90552f27065c9dfe', '62', '1', null, '33', '2018-09-20 13:48:34', '33', '2018-09-20 13:48:34');
INSERT INTO `workflow_regulations` VALUES ('8e5d3e00656e48cda75962579c148c83', '6bd9605771a248aaa8aafdd4d4365697', '75f54927fd534f669db6f18cb815fab8', '62', '1', null, '33', '2018-09-18 18:00:45', '33', '2018-09-18 18:00:45');
INSERT INTO `workflow_regulations` VALUES ('8e92267fdf734403ab532bad521b207c', '1037297151343751168', '7988862732e443e289979a263442ad0c', '62', '1', null, '33', '2018-09-20 13:37:40', '33', '2018-09-20 13:37:40');
INSERT INTO `workflow_regulations` VALUES ('93c7540a639e4a789ecda2573f322827', '1037623390274256896', '02572cc60dc642f0be9c210eee8c4588', '62', '1', null, '33', '2018-09-10 14:07:28', '33', '2018-09-10 14:07:28');
INSERT INTO `workflow_regulations` VALUES ('a4664dbe89794f648054630dd0f0e7c8', '1037623390274256896', '1c208bdcac8d43cbaf794ee1061c1148', '62', '1', null, '33', '2018-09-10 14:06:16', '33', '2018-09-10 14:06:16');
INSERT INTO `workflow_regulations` VALUES ('a7bccf8533b24c1b9cd82526b68a63ee', '69fb1fe72ed64f30908dbfd81c75e03f', 'e2c024e6a1384ba29e98a00c5cb311cb', '62', '1', null, '33', '2018-09-12 16:53:40', '33', '2018-09-12 16:53:40');
INSERT INTO `workflow_regulations` VALUES ('d0dd3adf4ee549a69b9a9ea2b61c8019', '69fb1fe72ed64f30908dbfd81c75e03f', '38f08dd1bf5347afafacca6496410a21', '62', '1', null, '33', '2018-09-12 16:45:13', '33', '2018-09-12 16:45:13');
INSERT INTO `workflow_regulations` VALUES ('d205adea179a4ca980dfcbada30847f5', '6bd9605771a248aaa8aafdd4d4365697', '545bbd307bd0491ebee711f3b7fabc3b', '62', '1', null, '33', '2018-09-17 19:13:21', '33', '2018-09-17 19:13:21');
INSERT INTO `workflow_regulations` VALUES ('e7e77dbb9f6048b8bac741dfe8500d93', '1037297151343751168', 'c043e4d1cf9f4d4c9c4bc633caa4fe6c', '62', '1', null, '33', '2018-09-20 14:41:19', '33', '2018-09-20 14:41:19');
INSERT INTO `workflow_regulations` VALUES ('ed2b2c62e5134be7b81c186b91e9f7de', '69fb1fe72ed64f30908dbfd81c75e03f', 'c7301dd73b5041ac813354f1031b8cb3', '62', '1', null, '33', '2018-09-12 16:42:12', '33', '2018-09-12 16:42:12');
INSERT INTO `workflow_regulations` VALUES ('ef4416bb5d28422cb66106ae887aa9fe', '69fb1fe72ed64f30908dbfd81c75e03f', '57ef3c93103147aaae0cb64b6ac73ddf', '62', '1', null, '33', '2018-09-12 16:42:56', '33', '2018-09-12 16:42:56');
INSERT INTO `workflow_regulations` VALUES ('fc288e9c1e1d42e794ca5f953815669c', '69fb1fe72ed64f30908dbfd81c75e03f', 'e199581a4a09468d9015818010d97f90', '62', '1', null, '33', '2018-09-12 16:13:21', '33', '2018-09-12 16:13:21');
