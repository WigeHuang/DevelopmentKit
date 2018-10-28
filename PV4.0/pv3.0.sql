/*
Navicat MySQL Data Transfer

Source Server         : 10.0.1.40
Source Server Version : 50718
Source Host           : 10.0.1.40:3306
Source Database       : pv3.0

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-10-25 18:36:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_account_log
-- ----------------------------
DROP TABLE IF EXISTS `auth_account_log`;
CREATE TABLE `auth_account_log` (
  `UUID` char(32) NOT NULL DEFAULT '' COMMENT '唯一键',
  `LOG_NAME` varchar(32) DEFAULT NULL COMMENT '操作名称',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `TENANT_ID` char(32) DEFAULT NULL COMMENT '租户ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目ID',
  `SUCCEED` int(11) DEFAULT NULL COMMENT '是否成功(0失败1成功)',
  `MESSAGE` varchar(32) DEFAULT NULL COMMENT '具体消息',
  `IP` varchar(32) DEFAULT NULL COMMENT '登录ip',
  `VERSION` varchar(32) DEFAULT NULL COMMENT '系统版本',
  `REQUEST_ID` varchar(32) DEFAULT NULL COMMENT '请求ID',
  `delete_status` int(11) DEFAULT NULL COMMENT '0:删除，1:未删除',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户访问记录日志';

-- ----------------------------
-- Records of auth_account_log
-- ----------------------------

-- ----------------------------
-- Table structure for auth_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `auth_operation_log`;
CREATE TABLE `auth_operation_log` (
  `UUID` char(32) NOT NULL DEFAULT '' COMMENT '唯一键',
  `LOG_NAME` varchar(32) DEFAULT NULL COMMENT '日志名称',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户id',
  `TENANT_ID` char(32) DEFAULT NULL COMMENT '租户ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目ID',
  `API` varchar(100) DEFAULT NULL COMMENT 'api名称',
  `METHOD` varchar(100) DEFAULT NULL COMMENT '方法名称',
  `SUCCEED` int(11) DEFAULT NULL COMMENT '是否成功(0失败1成功)',
  `MESSAGE` varchar(32) DEFAULT NULL COMMENT '具体消息',
  `VERSION` varchar(11) DEFAULT NULL COMMENT '系统版本',
  `REQUEST_ID` varchar(32) DEFAULT NULL COMMENT '请求ID',
  `delete_status` int(11) DEFAULT NULL COMMENT '0:删除',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`UUID`) USING BTREE
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
-- Table structure for company_unique_code
-- ----------------------------
DROP TABLE IF EXISTS `company_unique_code`;
CREATE TABLE `company_unique_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_code_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一编码key',
  `unique_code_value` int(32) DEFAULT '0' COMMENT '唯一编码value',
  `REVISION` int(11) DEFAULT '0' COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_unique_code
-- ----------------------------
INSERT INTO `company_unique_code` VALUES ('36', '2018XXXX', '39', '0', '2018-10-25 16:48:24', null);

-- ----------------------------
-- Table structure for dictionary_test
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_test`;
CREATE TABLE `dictionary_test` (
  `id` char(32) NOT NULL,
  `field_id` char(32) DEFAULT NULL,
  `dict_data` varchar(255) DEFAULT NULL COMMENT '字典资源',
  `dict_display_chinese` varchar(255) DEFAULT NULL COMMENT '字典中文显示值',
  `dict_display_english` varchar(255) DEFAULT NULL COMMENT '字典英文显示值',
  `dict_real_values` int(11) DEFAULT NULL COMMENT '字典真实的值',
  `dict_sort` int(11) DEFAULT NULL COMMENT '字典排序',
  `remark` varchar(255) DEFAULT NULL,
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1删除，2正常',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary_test
-- ----------------------------
INSERT INTO `dictionary_test` VALUES ('001b04f2a7f042f0bacb731c4eb9a63c', null, 'other_event_terms', '由于此事件从研究中脱落', 'Out Of Study', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('007cb0bee26f4ad0a7910571e8c15160', null, 'received_from', '自发报告', 'Spontaneous Report ', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('00947ca54b244d81820c2d22d442c115', null, 'drug-way', '封闭', 'Occlusive dressing technique', '46', '46', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('00eb6bf59d044679ac78f58691746b99', null, 'research-type', '临床验证', 'Clinical Trials', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('010434d3cb3f4cca9ddb084a861173e3', null, 'drug-formulation', '控释口颊片', 'modified-release bucral tablets', '65', '65', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('01cd0efd9f6148c699f769bc31703306', null, 'drug-way', '肾内给药', 'Intracisternal', '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('024627b9e4654349bf9c5f6b41efe294', null, 'dosage_unit', '千国际单位', 'k[iU]', '35', '35', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('027c3acb168f47e891586bb6f782f62a', null, 'sender_type', '药物警戒区域中心', 'Regional Pharmacovigilance Centre', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('039273ac72034e89bf843d521e67ade6', null, 'qjf', '未停药或未减量', 'Unchanged', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('039a8ef222f74b889624d1155354137f', null, 'inspect_unit', 'g/L', null, '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('03df5aec76bc45b696bddeb7a6d19826', null, 'drug-way', '冠动脉给药', 'Intracoronary', '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('047c832f1f0344279e00d695ed614ca7', null, 'follow-up_information', '随访无更新信息', 'No update information during follow-up', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0487edc8b89b41f4885e971d4f01e196', null, 'zjf', '否', 'yes – no    (rechallenge was done, reaction did not recur) ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('04a66ad211a345eca422b7dce8f1b899', null, 'is_research_drug', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('04b3983f39de435dae953770f08f9639', null, 'attach-class', '出院小结', 'Discharge summary', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('04b47d4b028e41379c45a8eb3aaf7dfd', null, 'is_reference', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0536f36d28c84e8aaa6017288872c4b7', null, 'trimester_of_exposure', '孕晚期', 'Late trimester of pregnancy', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0635e69d75e64e229ae6434521f7410b', null, 'drug-way', '内嗅的', 'Endosinusial', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('06749f51037846ec9b418b319fde1f95', null, 'inspect_unit', '[Amb\'a\'1\'U]', null, '52', '52', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('069ace70dd68451b90a6bda30587aca3', null, 'drug-formulation', '汤剂', 'decoction', '40', '40', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('06a112e47bdb4b80a74c69608c7d8128', null, 'drug-formulation', '熨剂', 'compression formula', '94', '94', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('06c582d791cd454385f281b84b51fedd', null, 'received_from', '其他', 'Other', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('07119effbfd4408490c75f9147d9e3fc', null, 'inspect_unit', 'L/L', null, '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('07399551c4304ff49993ca032d820241', null, 'drug-formulation', '灸剂', 'moxa-preparation', '57', '57', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('07cad94ea5bb4697be78b627c4edfb09', null, 'age_group', '胎儿', 'Foetus', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('07e6a1d0d71d414f940587ee87526d7d', null, 'drug-formulation', '注射用乳', 'Injection milk', '56', '56', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0810fcc1957548a5ab4370471e686151', null, 'clinical-research', '单个病人使用', 'Individual Patient Use', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('08c5a004a73341ed8baf827c0ccd726d', null, 'drug-way', '经淋巴管内灌注', 'Intralymphatic', '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('08f3429b423946bea64f17419be05412', null, 'reporter_privacy_confidential', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('098f6fda53e94fb3865457257fdacb32', null, 'drug-formulation', '消毒剂', 'sanitizer', '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('09e73287f12844e8898d5a19f08cfa65', null, 'qjf', '不适用', 'no – n/a     (no rechallenge was done, recurrence is not applicable) ', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0a1d0d5a5d1f4ad79990ca3374b6145f', null, 'drug-formulation', '肠溶胶丸', 'enteric-coated soft capsules', '83', '83', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0a5492a33a7e46089fc9a6271d182500', null, 'drug-formulation', '划痕剂', 'nick agent', '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0a7e3ac86d0947c080561f4979071013', null, 'research-design', '开放', 'Open Label', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0ac8e93efb9848968dff35e4e845188b', null, 'mailbox_setting', 'POP3', 'POP3', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0b27ffdb5bd54fe89e45738e0480340d', null, 'drug-formulation', '外用凝胶', 'gels ', '126', '126', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0b4c21e034d54ffd98f5b95edb85587b', null, 'inspect_unit', 'mm', null, '38', '38', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0b50b3aa8598469794801eaca0c021c7', null, 'inspect_unit', 'min', null, '36', '36', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0b945ff2d92c489ca17e2051da51346e', null, 'drug-formulation', '试剂', 'reagent', '140', '140', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0bccb84830e548f6a6fc4bbd903f14fc', null, 'bind_test_drug', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0c38d595f5d14d15940f808e3c9c5241', null, 'research-subdivision', 'IIb期', 'phase IIb clinical trials', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0c3d8bb45c744b2ebe6d2e059b03f9fd', null, 'province', '福建省', 'Fujian', '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0c5638b855644c03a2bcd8ef404bfac5', null, 'dict_type', 'ICD-10编码', null, '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0ca892c28f52493997f344df7e451a51', null, 'province', '湖北省', 'Hubei', '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0cca32d68acc447ba861177b340781d1', null, 'event_out_come', '好转', 'Recovering / Resolving', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0d6e885a7221459cad74e0aff03baa56', null, 'drug-formulation', '湿敷剂', 'wet packing', '45', '45', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0e4b8c8092d844afa92e08fb0cd34fdf', null, 'drug-formulation', '双层片', 'double-layer tablet', '77', '77', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0e4bee0f34f4424a9188cdcf0affa3b4', null, 'dosage_unit', '千克', 'kg', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0e55c339944143de8d0924436a7e7fca', null, 'drug-formulation', '消毒液', 'disinfectant', '121', '121', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0e9e9895801644a6b35cda21dc1ba387', null, 'drug-formulation', '植入剂', 'implant', '62', '62', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0eaca06e258a4f97b3cc89f1437ed2b5', null, 'drug-formulation', '栓剂', 'suppository', '117', '117', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0f4c3c0dbf3a4f659b48ead469a02008', null, 'Drug Information', '药品信息', 'Drug Information', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0f81fea56e004223a4e216dbf77a2bf4', null, 'other_drug_information', '超说明书用药', null, '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0f97aace7be344a4a391b8f63b8711f6', null, 'event_out_come', '不详', 'unknown ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1046492dc79a43589d6b10cece174c5f', null, 'drug-way', '蛛网膜下腔给药', 'Intracerebral', '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1049e48f8471404f9e6004f48aecfbcd', null, 'dosage_unit', '袋', null, '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('10de04265acd47af94be82c498332d1b', null, 'clinical-research', 'Ⅰ期', 'Ⅰexpect', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1204c210d63e4fef917defd791741ec4', null, 'blindedor_not', '非盲态', 'Non blind', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1241cbf18e9b431e946d4942cb288836', null, 'province', '广东省', 'Guangdong', '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('12e101cdff3c4999ad03ac13c382f174', null, 'Patient Information', '妊娠信息', 'Pregnancy Information', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('131d4684e9b74cb090eb02b7a056ed3e', null, 'province', '贵州省', 'Guizhou', '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1367afdb6b854840a0107560ada0b815', null, 'attach-class', '病例', 'case', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('137994c336a24d4d842bb443c2907148', null, 'inspect_unit', '{DF}', null, '75', '75', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1387c761b67b4b28832484524e87da04', null, 'maintain_control', '多项选择', 'Checkbox', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1450e676250d4a6c961176249202f192', null, 'received_from', '重点监测项目', 'Key monitoring items', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('14ddd9b577ea467d8174de9242787a1e', null, 'body_weight_unit', '克', 'g', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('150e0bff86444432804b65f212e46d7a', null, 'drug-formulation', '混悬液', 'suspension', '159', '159', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('15cb39d1f1d04854a32335243697126c', null, 'pregnancy_outcome', '宫内妊娠', 'Intrauterine pregnancy', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('15d9add00d0647639cfd745df288e0ce', null, 'source_caseidentifier', '国家ADR系统', 'ADR', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('162611fecf654813a13a78bd717c3bed', null, 'report_identity_type', '原始报告', 'Original Report', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('16f0c0c490904be286fc78dc4b87b9b2', null, 'source_caseidentifier', '医学信息', 'medical information', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('173972befb3b45ea98d2a39b85e68c1a', null, 'inspect_unit', 'Bq', null, '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1742deefb1064b239ca9446f3f3cd914', null, 'relevant_medical_history', '饮酒史', 'History of drinking', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('174af9c0b6854d1e946403f6cbf97b12', null, 'drug-formulation', '口胶', 'chewing gum', '162', '162', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('17927511e5c0417ea6df778136c1f581', null, 'inspect_unit', 'mo', null, '40', '40', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('183548b17ba64f199c90602858adcdc7', null, 'time_interval_unit', '日', 'd', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('18752b085cce449d941f2f5911309a5b', null, 'drug-formulation', '包衣片', 'coating tablet', '164', '164', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1908e73296fb45c2afce1cd7349ba548', null, 'dict_type', 'MEDDRA编码', null, '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('192b03f87bd343269d98c99fb5e651fc', null, 'sae_reports', '有', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('199660aca0964276a1fbede6646acca4', null, 'drug-way', '经鼻给药', 'Nasal', '45', '45', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('19ed0a30c98b426680e3dc501450468b', null, 'province', '澳门特别行政区', 'Macau', '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1a2262614f754a2a80e7e967b39f7476', null, 'province', '内蒙古自治区', 'Neimenggu', '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1b20ff98912a4689a9e97d85cf356c72', null, 'inspect_unit', 's', null, '79', '79', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1b23737f91ac47f989d72fbb9a6debe1', null, 'drug-way', '含服', 'Buccal', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1b6685267b07414d81f18f6ba6cd9813', null, 'province', '广西壮族自治区', 'Guangxi', '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1bc04d53695743b8972f574f3a2423be', null, 'dosage_unit', '%', null, '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1bf67a5471b54180986e6ed72c87fd5f', null, 'drug-formulation', '油剂', 'oiling agent', '99', '99', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128a118687c8777a025', null, 'qjf', '是', 'yes – yes   (rechallenge was done, reaction recurred) ', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1c50c8d395aa48049414043640d00a12', null, 'attach-class', '原始资料', 'Source', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1cacc6c886584e28a464ff2fcc35dcd9', null, 'inspect_unit', 'mL', null, '37', '37', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1ce3bd29264b40b791c97cf71104e6bd', null, 'drug-formulation', '缓释片', 'sustained-release tablet', '78', '78', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1d58bb163f4c49a0871af50e2681762a', null, 'zjf', '不适用', 'no – n/a     (no rechallenge was done, recurrence is not applicable) ', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1d59dc2e47794fce980778f5747d535c', null, 'dosage_unit', '厘米', null, '39', '39', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1d859afea48a407a83eac31fbfe787b7', null, 'inspect_unit', '[kp_C]', null, '68', '68', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1de2552fa30c4cd392dcfba5781d6209', null, 'impacton_primary_disease', '病情加重', 'Aggravation of the disease', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1e0f39b75d1a4606a73cd7ccfbe6bf0a', null, 'drug-way', '子宫颈给药', 'Endocervical', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1e4e612565eb40828b598fe1d67aac16', null, 'is_pregnancy', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1e4f74fd7019418185413574087f94b6', null, 'relevant_medical_history', '肾病史', 'History of nephrosis', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1f2fa9f32f914824a86e5681893393df', null, 'drug-formulation', '双释放胶囊', 'Double release capsule', '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1f6e12b41da94978ad996628ad908386', null, 'dosage_unit', '千贝勒克尔', 'kBq', '45', '45', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1f9024f55a6648f1ab2162f392523cb5', null, 'received_from', '反馈数据', 'Feedback data', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1fa94004cfc64fe28fa14e2b90cfef5c', null, 'drug-formulation', '肠溶微丸胶囊', 'enteric coated micropill capsule', '103', '103', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1ff5baa9fa7b494abb6b9321d73aca74', null, 'Drug/Event', '药物反应/事件矩阵', 'Drug/Event', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('201b67264033423b9b8e6288dbac8d22', null, 'sender_type', '其他（例如分销商或其他机构）', 'Other (e.g. Distributor, Study Sponsor, Contract Research Organisation, or non-Commercial Organisation)', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('20897f3de18847a3a115146841613447', null, 'drug-way', '静脉注射', 'Intravenous bolus', '40', '40', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('209d1f58519c4afa9ac337f78d29ccae', null, 'other_drug_information', '经检测合格的批次和批号', null, '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('20e7f26305c04a689ec3c3160077b0f0', null, 'Patient Information', '父母信息', 'Parent Information', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('21112fd78c44469991c28f81b38be595', null, 'drug-way', '血液透析', 'Hemodialysis', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('21f9731726e04e8fafc43cad20cbc531', null, 'Basic Information', '既往病例标识码', 'Study Medical History', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('226956563cae47fa83b1e521555ce47b', null, 'inspect_unit', 'IU', null, '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('227c1379176641f69bf594080110c646', null, 'drug-formulation', '水剂', 'water aqua', '123', '123', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('22cacaa62f86421caef0a55ba5ab6c7e', null, 'Patient Information', '父母病史及相关用药史', 'Parent Medical History', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('22cebd5973324e77a53ff227b3b29f3a', null, 'is_reference', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('22ea16fa3ebd420d9f11dbc8de7ef79d', null, 'inspect_unit', '℃', null, '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('233d2825ad224dfab4b9f4568c854595', null, 'other_drug_information', '父亲服用的药物', null, '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('237da7243cbd47bea098b1c8dd4e4ca0', null, 'Basic Information', '报告属性', 'Reporting Attributes', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2403589cd8f54789b33cb15dca9e0454', null, 'time_interval_unit', '全部的', '{total}', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('24281523c5024d06836751e4eac74ded', null, 'drug-formulation', '肠溶微粒胶囊', 'enteric-coated microsomes capsule', '153', '153', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('242a83a7cb504e4fa102da0ef172b362', null, 'time_interval_unit', '10年', '10.a', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('24b3bdcfad0b4b03a4b8f62917a00e3b', null, 'reporter_type', '其他', 'Other', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('250e0e9757664fd7ae0337e21b9bc198', null, 'drug-way', '尿道给药', 'Urethral', '66', '66', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('253374b09e9848159afc08cde5866c0f', null, 'dosage_unit', '纳摩尔', null, '58', '58', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('255a74d5a485463a8632edb3270b5906', null, 'drug-formulation', '雾化溶液', 'nebulising solution', '63', '63', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('255cfe8776094d73b65aa5ef5477aef3', null, 'Report Summary', '报告总结', 'Report Summary', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('257ae5b2a7e348059da60ed143822be2', null, 'drug-way', '关节内给药', 'Periarticular', '52', '52', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('25b39b0b0d1e483ea1003357541d4d08', null, 'interaction', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('26249bbef1544ecf9de4331e8e52ef83', null, 'province', '海南省', 'Hainan', '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2650c4d46b05443b862ce6306be802c5', null, 'autopsy', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2684d331a4d34a2ab8bd695c60e9a27e', null, 'drug-formulation', '乳剂', 'emulsion', '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('268bbe3d48894c42aae9d4b5e9726911', null, 'history_type', '现病史（原患疾病）', 'medical history', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('26a430888f414f1f87e31602dd4f5e62', null, 'drug-formulation', '缓释丸剂', 'sustain-released bolus', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('26a75b82707544099cae098a4f5d3882', null, 'dosage_unit', '毫摩尔', 'mmol', '53', '53', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('272cc8bea63b4a3bacc66fba1f58dad8', null, 'drug-formulation', '阴道泡腾片', 'vaginal effervescent tablets', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2754a6c951d748d0a6997cd884961f6b', null, 'dosage_unit', '毫米', null, '54', '54', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('27ea3153befe47f5963824e195486ac2', null, 'time_interval_unit', '分', 'min ', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('281076eeb8d743f3b21fccf5aa5be2aa', null, 'inspect_unit', 'mm/h', null, '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28741964682342cfb7a783af42e21102', null, 'drug-formulation', '流浸膏', 'liquid extract', '116', '116', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2876cff4cc314e349141f8401deec4d2', null, 'drug-way', '硬膜外给药', 'Epidural', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2896d1151ff44529a70323d86e5992da', null, 'maintain_page', '报告者信息', 'Reporter Information', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28a1078b015b4fc19c4d0a8f473db716', null, 'Patient Information', '患者信息', 'Patient Information', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28c6b0b6f5a341d8af7e4d7e2d83c363', null, 'maintain_control', '单行文本', 'Text field', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28d86efb83f14eceb5913b3f4bc029fa', null, 'SUSAR', '未填写', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28e97081049a4d9c98f79c10f91814d0', null, 'dosage_unit', '单位', null, '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('290ab8eb5f9142e4960b78d11ec9c05f', null, 'diagnosis', '症状', 'Symptom', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('29173d2e4e7a4b4b988424212e90a0bd', null, 'dosage_unit', '微克/平方米', 'ug/m2', '49', '49', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2948ec4ee2c44414ac258f1c2e300208', null, 'severity', '中度', 'moderate', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('294906d02aca4247a7d5c1b3c68d37db', null, 'drug-way', '气管/支气管内给药', 'Intratracheal', '39', '39', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('29541edd082a487690d202ab03104b8b', null, 'drug-formulation', '巴布膏', 'cataplasm', '134', '134', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('297b4e845e0c439db8a379a8aee2a392', null, 'research_role', '主要研究者', 'Principal', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('29fe4c93c7d646c2b956459eee53b589', null, 'research-type', '单个病人使用', 'Individual Patient Use', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2a25686a7d7c4630b102249336b3f618', null, 'drug_character', '治疗用药', 'Interacting', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2a72196fa0f2427194233fee1ae18e05', null, 'drug-way', '心包内给药', 'Intrapericardial', '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2afa2004813a464ba76e17f871315542', null, 'is_attach', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2bebaf9d1369475290d6a27fbe30738c', null, 'dosage_unit', '瓶', null, '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2c44d6f1194b4048aa8579b5ccbb36b0', null, 'standard_of_seriousness', '死亡', 'death', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2c8e810836e648b08ae510bb19f6a779', null, 'dosage_unit', '平方厘米', null, '40', '40', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2cc12cf6a0374264860588bf81310593', null, 'is_research_drug', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2d18b70e8bc64632948661276705f8a6', null, 'attach-format', 'bmp', 'bmp', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2eef7343c0914b95a4c9f343053596b0', null, 'dosage_unit', '贝克勒尔', 'Bq', '38', '38', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2f14634f2ddb47599d46ca1ea8dff5ca', null, 'action_taken', '不详', 'Unknown', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('30251aa35f5d4e699e5e69d41f558bfa', null, 'drug-way', '臂丛麻醉', 'Brachial plexus anaesthesia', '74', '74', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('303c3a7b28cd495d97c93258b5c78f91', null, 'drug-formulation', '双释放肠溶胶囊', 'dual release enteric-coated capsules', '145', '145', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3042923ffaaf4f76ac9973f6147b6174', null, 'drug-formulation', '大蜜丸', 'big honeyed pills', '130', '130', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3062bd7091834117836b880f29471bf6', null, 'age_group', '老人', 'Elderly ', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('317a2f56ce04458f9757a07f53395dc2', null, 'drug-formulation', '肠溶颗粒', 'enteric coated granules ', '60', '60', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('318a408b04b34e85a82ae25fa171cb06', null, 'dosage_unit', '兆贝克勒尔', 'MBq', '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('31a3dbc67e804d5aad84c57ff7adde9c', null, 'province', '北京市', 'Beijing', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('31d4ffa35a2349d397f5d8b3c44e0820', null, 'drug-way', '阴道给药', 'Vaginal', '67', '67', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('31f14f62cc9046ada1a33ab4114922ea', null, 'drug-way', '宫颈管内给药', 'Intracervical', '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3211a6b0161d45448800329b3273c083', null, 'other_event_terms', '与研究过程相关', 'Study Related', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('32894e86b8a549f7a9433934d9e4e57a', null, 'drug-formulation', '贴剂', 'patch', '44', '44', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3421ca7607c144dea1a2c67ff95bab8f', null, 'Adverse Event', '不良事件', 'Adverse Event', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3491c6475ca644f5b8793378435a0d03', null, 'event_out_come', '有后遗症', 'Recovered / Resolved with Sequelae', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('35549ad362ff4597802a59b2ba0f2e0c', null, 'drug-formulation', '洗发剂', 'shampoo', '38', '38', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('358136c33dae4557b6b3f213370133b3', null, 'maintain_page', '概览', 'Overview', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('35de42f2df01480ca1defae059653669', null, 'province', '云南省', 'Yunnan', '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('35e5474b22ed4ab6a45564de5b6ed4e3', null, 'drug-way', '眼球内给药', 'Retrobulbar', '56', '56', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('35fe124731bf4b4ebde2cafb5cdf65d7', null, 'patient_nationality', null, null, null, null, null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3628ba1048b243819a5fc61ed4af40a9', null, 'received_from', '临床研究', 'Report from Study （研究报告）', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3682b796306e4369a4ae65333b773285', null, 'other_drug_information', '职业暴露', null, '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('368b58423f3548359fdd411e0c752488', null, 'dosage_unit', '微克/千克', 'ug/kg', '50', '50', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('369e7ecdaec54a02b5ec76d4b5f0dc64', null, 'drug-way', '球后注射', 'Retrobulbar injection', '80', '80', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('36bab218c25c420ca21b247ea6db76b4', null, 'age_unit', '三个月', '{trimester}', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('36d0db105c514540b1594a1234fbbb92', null, 'inspect_unit', '[Lf]', null, '69', '69', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('36f61e68968e4ec0bc0d991ea63f0441', null, 'time_interval_unit', '年', 'a', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('372f6e95e7af40a9afdac4ac19506219', null, 'standard_of_seriousness', '危及生命', 'Life Threatening', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('376207dbc8e04380950d9e7a33a3e409', null, 'attach-format', 'jpg', 'jpg', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('383d8785d3e94ed4901c26a93df7c32a', null, 'company_type', '个人', 'personal', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3872de898e2c42f0ab07c88fff223a5b', null, 'drug-way', '脊髓内给药', 'Intradiscal (intraspinal)', '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('389a0ebef85f44749cf971e747cd8b89', null, 'frequency', '持续', 'Continued', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('389b6b014ff444bfa3f30669b43ebd54', null, 'reporter_type', '护士', 'Nurse', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('38abe0728a6947d588b900458688b2a4', null, 'zjf', '是', 'yes – yes   (rechallenge was done, reaction recurred) ', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('39a0f8e1c37740628a7fe3f67f73ac75', null, 'drug_character', '并用药品', 'Concomitant', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('39bbf2d68eae46b49617c77b09d82511', null, 'province', '重庆市', 'Chongqing', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('39e7863468eb4e2bb6817951ebcb8af6', null, 'drug-formulation', '阴道软胶囊', 'vaginal soft capsule', '54', '54', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3a560ddde4b949e896aa011c6661239e', null, 'Basic Information', '临床前药理毒理试验', 'Pharmacology Toxicology', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3a5b8a4287234dd99067a42698f02e9a', null, 'drug-way', '外用', 'External', '78', '78', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3a734a9b58e94e30b2386bd89c25607a', null, 'time_interval_unit', '三个月', '{trimester}', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3a7e72291d514780affe7d30a349a930', null, 'inspect_unit', '[USP\'U]', null, '73', '73', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3b608acbebd647f48323de6a37c24820', null, 'province', '青海省', 'Qinghai', '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3b7fb78a3b104e9294137bbe48b49b6e', null, 'research-subdivision', 'Ia期', 'phase Ia clinical trials', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3c0388ce0f9b4ddd9d3b65b9a876693d', null, 'province', '辽宁省', 'Liaoning', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3c53aca0f985466d9133da095c13dbab', null, 'blindedor_not', '研究后揭盲', 'Blindness after study', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3cde4ce0cb314f2491ba0068480f33b8', null, 'drug-way', '冲洗', 'Rinse', '84', '84', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3cf9517cb9194180b6fdcbc8405949ed', null, 'inspect_unit', 'GBq', null, '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3cfb9f4903194c03a1b78ede9a93e91c', null, 'drug-formulation', '混悬注射液', 'suspension injection', '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3d34f06fd76642ed98b83974497cc68f', null, 'drug-formulation', '酊剂', 'tinctrue', '48', '48', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3e533c7c57e64c808747794ef0567b49', null, 'drug-way', '静脉滴注', 'Intravenous drip', '41', '41', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3eb3a1a38c3f432da9fadc22e6fa2967', null, 'clinical-research', '生物等效性试验', 'bioequivalence test', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3f7c929553a241079c3c156b0f6f7977', null, 'drug-formulation', '缓释颗粒', 'sustained-release granules', '107', '107', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3ff18277aa5a448aa8a807b93799ec40', null, 'attach-format', 'xls', 'xls', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('40388646259a42769b45633f2aba6810', null, 'drug-formulation', '肠溶微丸', 'enteric coated micropil', '131', '131', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('405eb9d3fa2d42929a52c4a4e26f2bc6', null, 'drug-formulation', '口服缓释混悬液', 'oral sustained-release suspension liquid', '35', '35', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('40b2b6d198fc4a9595587a60730ca4ee', null, 'drug-way', '周围神经给药', 'Perineural', '53', '53', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4155db1dea864949add89e9f7bf53d13', null, 'age_group', '青少年', 'Adolescent', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('417ac8f4238c4d64b2c5ad423c4548fa', null, 'dosage_unit', 'MB', null, '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('41a2bb91baa34fdfb2c01bdf018d4900', null, 'drug-formulation', '乳膏', 'emulsifiable paste', '72', '72', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('41b5b0bd92164dd5ae39510ddf6d8289', null, 'drug-formulation', '软膏', 'ointment', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('41dd05b3263e4fce88941bf3f8f8622e', null, 'SUSAR', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4202d089fc3f44e8a91d3e5e362abbfc', null, 'dosage_unit', '升', 'L', '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('422c878e9d4c4dae98ca37d5df64a6d7', null, 'listedness_determination', '新的', 'new', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('432181ba3a83464f8c2bbb3c50d379fb', null, 'relevant_medical_history', '其他', 'Other', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4394ef903fcb4d1ebbf6917f2549acfa', null, 'drug-way', '植入给药', 'Implants', '70', '70', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('43b5c24184d44229a04e2babfe52cba4', null, 'dosage_unit', '百分比', '%', '37', '37', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('43d5f8163a3c4aacb246e2f2e8703679', null, 'inspect_unit', '[hp_M]', null, '62', '62', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('43e937fc44034a9ebe5c9bd4e0819dad', null, 'other_event_terms', '该药缺乏治疗效果', 'effect lack', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4478ed67a1f94d068d8fd4af4b6367cb', null, 'age_unit', '10年', '10.a', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('454677d7b5964ceeb1f25f3e484e35e7', null, 'Drug Information', '用药情况', 'Drug use', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('454eb4f6640b40d2b27b9914971ee54e', null, 'source_info_name', '个人', 'personal', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('45502807697b4e61bf24ddadd47a12bc', null, 'dosage_unit', '国际单位/千克', '[iU]/kg', '44', '44', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('45626792cc014460912abbbf2b20efdc', null, 'drug-formulation', '咀嚼胶', 'chewing-gum', '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('456f28fa9f1f4c83b4a7f34938ca2727', null, 'inspect_outcome', '边界线上', 'Borderline', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('45e0b29958844dd98de00220b4265bbf', null, 'province', '新疆维吾尔自治区', 'Sinkiang', '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('46900ffc3a394244ae5524fbdb2a0d29', null, 'dosage_unit', '支', null, '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('46d51cd81f4a44f298cf7ee640f32d48', null, 'attach-format', 'doc', 'doc', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('46ff3d0fa83942e280062661ca82d6fa', null, 'province', '河北省', 'Hebei', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('473fcfce0e5f4f78b6f2fb3f6d7a8f57', null, 'Basic Information', '文献信息', 'Literature Information', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('47fe2ac999c54ac395900b9496470383', null, 'maintain_control', '多行文本', 'Text area', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('482266c8522a49a3981f764c0e3a7339', null, 'can_reporter_be_followed_up', '未知', 'unknown ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('48227d5683884d738cb6a74b479edcc0', null, 'dosage_unit', '丸', null, '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4828cbf1377e4ba9911985d4f0b29e74', null, 'pregnancy_outcome', '足月妊娠', 'Full term pregnancy', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4879490829c74cb8ac93913cb3f5edd0', null, 'inspect_unit', 'ug/m2', null, '48', '48', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('488d53ea61e042e69591b393ca41d4cf', null, 'other_drug_information', '用药无用', null, '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('494abcb065524f569a87635be4c2bc3a', null, 'reporter_organisation', '医疗机构', 'medical institution', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('49529bd467de4f4591316222a743ce74', null, 'trimester_of_exposure', '孕中期', 'Mid trimester', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('49902e85ea384fb693e9a750ad5b7df9', null, 'inspect_unit', '%', null, '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4a208321927b4b42a1b4aa3f814022eb', null, 'inspect_unit', 'U/L', null, '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4a4238f913974b049a38eeabedd3bbe3', null, 'drug-formulation', '溶液', 'solution', '87', '87', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4b3f512e93ef49a4ae35fc3317c68b56', null, 'sex', '女', 'Female', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4bb132baf9ca440c951126877fe038da', null, 'dosage_unit', 'UT', null, '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4be4336720c34409a0b082b6e5711231', null, 'research-subdivision', '0期', 'phase 0 clinical trials', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4bf38d81f6db44829c3d802e1bb9a25b', null, 'research-design', '单盲', 'Single Blinded', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4c26fe5c53b3464c8ce2e0f976fa921f', null, 'drug-formulation', '缓释微粒', 'delay release', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4c5cbe8a3fa84a8cad582219338ba2d1', null, 'province', '台湾省', 'Taiwan', '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4ca98f6b73824a0dbeb3f9db990126fe', null, 'drug-formulation', '缓释混悬液', 'sustained release suspension', '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4e29812c5e7e474eaa4f084f38480265', null, 'dosage_unit', '毫升', 'mL', '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4ed96054dd224e3c9f4d97d5203fcd09', null, 'reporter_evaluation', '可能无关', 'It may be irrelevant', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4f775f3d501b466998fbe611abfae26c', null, 'Patient Information', '相关既往用药史', 'Drug History', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4f8ec6827c6244e0ab98c630418ec167', null, 'drug-formulation', '肠溶胶囊', 'capsulae enterosolubilis', '111', '111', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4f8f540af55b439da230b6900fbe3867', null, 'dosage_unit', '毫克/千克', 'mg/kg', '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5053a0fccab6432e979315b6e0b3c67b', null, 'medically_confirmed', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5104a1409d8642efa2fa7d5673be680a', null, 'drug-formulation', '醑', 'spirit', '88', '88', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('511042a6f2d5422885ed3d5091510a86', null, 'action_taken', '增加剂量', 'Dose Increased', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('513b10641c0e41e6ab5ee6c61b65b795', null, 'report_from_other_companies', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('520b064f9d3e45f8abdb934bbbf45039', null, 'inspect_unit', '[CCID_50]', null, '56', '56', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('52693d74c01f402b8dbb745c8ead87a4', null, 'autopsy', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('527ae705e09240bfb53cf40a0b1d5383', null, 'inspect_unit', 'mg/kg', null, '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('528b219ef756496f80583ace2b74d30b', null, 'research_role', '次要研究者', 'Secondary researcher', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5292606a8e1f4f849650574d481d2b72', null, 'inspect_unit', '10^9/L', null, '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('52ac2224af1f4ee2a3c304fa685c727e', null, 'reporter_organisation', '其他', 'Other', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('52ba64c9a61f44469059be81def2ce82', null, 'inspect_unit', '[IR]', null, '65', '65', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('52bcccfccda04f65ae5ffd59afe0c4c7', null, 'drug-formulation', '洗剂', 'lotion', '41', '41', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('532fc441bc674663a4e8e5100e6a560b', null, 'drug-formulation', '霜剂', 'cream', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('533962d91c2d4dc882fee6d113da3af8', null, 'inspect_unit', 'y', null, '77', '77', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('53640462d2124bc49b9ee3aa5d94f763', null, 'drug-way', '口腔/咽喉给药', 'Oropharingeal', '49', '49', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('538b74097f644116a283f1597520e1ff', null, 'province', '天津市', 'Tianjin', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('53b659310f0b474880fa979e87a58403', null, 'diagnosis', '诊断', 'Diagnosis', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('53fe92d24393471da6ae0e30df52c392', null, 'drug-formulation', '搽剂', 'liniment', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5464293e50ff42cdaa5e2020bbd6af39', null, 'drug-formulation', '混悬颗粒', 'suspended granules', '46', '46', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('54750bd0453841debdadfd7603083d7c', null, 'report_from_other_companies', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('54d2d517e3f64688856cecb305638eaf', null, 'drug-formulation', '茶剂', 'medicinal tea', '154', '154', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5500325017784f77aa7b893632fac2c2', null, 'clinical-research', 'Ⅱ期', 'Ⅱexpect', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('555230086ec3470eaf21ffd70e5d7c83', null, 'inspect_unit', 'cm', null, '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('55eac5c7204946a99cc59d1a9525f6c5', null, 'sae_reports', '不详', 'unknown ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('56e786302ca54f3d97a3ae4a2bd7bdc1', null, 'drug-formulation', '冻干制剂', 'lyophilized formulation', '36', '36', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('57ddec56991744cb8c0af8b3915cc58f', null, 'drug-way', '心内注射', 'Intracardiac', '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('57f6b6284b364201a365ebc1b5a213fe', null, 'product-categories', '临床前药物', 'Preclinical drug', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58282c89367443dbace9b919657ae5cf', null, 'drug-way', '肌内注射', 'Intramuscular', '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58414985c0b64a7eb0f1ab2b0937eeaf', null, 'drug-formulation', '透皮贴剂', 'transdermal patch', '149', '149', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58565b342c704551a1acb62352712450', null, 'pregnancy_outcome', '自然流产', 'spontaneous abortion', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('588381bcf2cc4e7093698f1da6a2f0a0', null, 'inspect_unit', '[TCID_50]', null, '72', '72', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58a629f20cf54d78a331b4de6d25c9f0', null, 'research-type', '其他研究', 'Other Studies', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58c1a969615b49e18e44cd3e45e3ea35', null, 'pregnancy_report', '孕中期', 'Mid trimester', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58cd3ba489ad4535942bd5ef0e5322c3', null, 'inspect_unit', '[PNU]', null, '71', '71', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('591f822f810b415e9b694e8c3167c520', null, 'autopsy', '不详', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('592761cb55d8462fa78280d5a4483697', null, 'relevant_medical_history', '过敏史', 'Anaphylaxis', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5930dff54b0a458e9ce48b4847e3eae3', null, 'age_unit', '时', 'h', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('59896fd4fdae4cdb99793a8787c73f84', null, 'drug-way', '骨髓内给药', 'Intramedullar (bone marrow)', '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('59a5700498ed482c9c87a73496e488cd', null, 'initial_report', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('59b21344ab8a44a3bc476b1ea928d75a', null, 'province', '山东省', 'Shandong', '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5ace7e96b6f84c53b9ed85bb023d596c', null, 'age_group', '儿童', 'Child', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5b728aff240c41379300f4913c95e686', null, 'mailbox_setting', 'IMAP', 'IMAP', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5b95beb7b6574e3184ec0b4aeca7ba00', null, 'drug-formulation', '含漱液', 'gargle', '138', '138', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5b985456444e43728529cba23a895856', null, 'sex', '男', 'Male', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5be7108a25e44e1ca4c48934c600c161', null, 'inspect_unit', 'fl', null, '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5c03d851fa5b4078babd9943bcd8612f', null, 'maintain_page', '附件信息', 'Additional Documents', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5ca03ab67f054b3b9ec88efacd4ce134', null, 'attach-format', 'gif', 'gif', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5cadbe5deb4546d2a0c0a3454defef1d', null, 'drug-formulation', '胶浆剂', 'mucilage', '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5cbe295f87084b9393e16ba439af6a02', null, 'action_taken', '减小剂量', 'Dose Reduced', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5ce850404be44c40b61cb570e9ab3366', null, 'frequency', '单次', 'Single time', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5d659eee20ea404299eaa174e5c50d56', null, 'reporter_type', '其他医疗保健专业人士', 'Other Health Professional', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5e37c5f3383d46fdaac23adf9181420d', null, 'breast_feeding', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5eb9c0f5934e4b10893ebb18ba10fb86', null, 'inspect_unit', 'kg', null, '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5fdfa7447b26403f90c49e9e446b8641', null, 'maintain_control', '密码', 'Password', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('601c209daa2d4d4f8b35a7320f904bcc', null, 'medically_important', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('60c2dea897934536a547d541fbb9cf1a', null, 'mailbox_setting', 'Exchange', 'Exchange', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6133c30f254a47f99d3cbdd6faff277e', null, 'relevant_medical_history', '妊娠史', 'History of pregnancy', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('618056c35bc34d66aecbecf72fce8e95', null, 'impacton_primary_disease', '不明显', 'Not obvious', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6190616a52764c3e97b8425dae288751', null, 'inspect_unit', 'dL', null, '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('61a05aaf9b6040e8920a2e5c350349ce', null, 'standard_of_seriousness', '住院/住院时间延长', 'Hospitalisation/Prolonged Hospitalisation ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('61dd1149899a427bb1999e1a7a1e6e73', null, 'is_serverity', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('624ca58732784fc79588c2e86ac8bafb', null, 'drug-formulation', '泡沫剂', 'foaming agent', '80', '80', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('627b5293905c400a811e7c59322af772', null, 'dosage_unit', '微克', 'ug', '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6313e1db90ff4bb699d5a60b25c52e27', null, 'frequency', '间断', 'Interrupted', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('63155a9a8316430b995f02419ea054c8', null, 'source_info_name', '医疗机构', 'medical institution', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('63832f279d354f2cbc234c1d8d6ab26d', null, 'reporter_type', '律师', 'Lawyer', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('638a787dbd774d24ac61441d95a1aae4', null, 'inspect_unit', 'kBq', null, '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('647d71528be84f09a8e4462c1c15a36f', null, 'standard_of_seriousness', '致残/功能丧失', 'Disabling/Incapacitating', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('64a62b53957348d6819b7cdbe74f6a32', null, 'time_interval_unit', '周', 'wk', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('64f86d34e4bc45f498a15e8c0fd03393', null, 'research-subdivision', '针对特殊人群的探索性研究', 'exploratory research on special populations', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('65a76d87229c459f98845c519bb49822', null, 'dosage_unit', '微特斯拉', null, '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6608ab4110b145da8ffd7b517ee05732', null, 'standard_of_seriousness', '医学上有重要意义', 'Other Medically Important Condition ', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('662df3f787254eddae275108260f2f5a', null, 'Patient Information', '新生儿信息', 'Neonatal Information', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66a68d5ef4c540a187e84f766379dacb', null, 'other_event_terms', '药物停用症状', 'Withdrawal Symptoms', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66ae8dcfb82c4803ab417cdd8c16bd72', null, 'drug-way', '动脉给药', 'Intra-arterial', '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66b7e38382634c1297d7ed7a810cdad2', null, 'reporter_organisation', '生产企业', 'manufacturing enterprise', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66e3f450369c432ba33e006d07c1ea4d', null, 'reporter_type', '医生', 'Physician', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66f3c262c7c54f509497e205fc73983c', null, 'dosage_unit', '单位', null, '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6785f64bb6974fe6a14c7978cd38e6a1', null, 'attach-class', '电话记录', 'Telephone record', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('68146708f373430396ce07a00f2a645d', null, 'drug-way', '椎管给药', 'Spinal canal administration', '87', '87', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('694661c41660418c9831364f1d372557', null, 'age_group', '新生儿（早产及足月产）', 'Neonate (Preterm and Term Newborns)', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('694a90ece1bd4c14a452f95363bc452f', null, 'drug-class', '治疗用生物制品', 'Biopharmaceutical', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('698e837556c847eab29384471d7c1f4e', null, 'is_first_report', '首次报告', 'First Report', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('69b3f90bccdb4344a8be4a1a216ad897', null, 'drug-formulation', '控释胶囊', 'controlled-release pellet', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('69d865a7eb7f4b709b6ccab270a5e8e8', null, 'drug-way', '经眼给药', 'Ophthalmic', '47', '47', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6a0352d8c3114148bd48057885618d1d', null, 'inspect_unit', '[arb\'U]', null, '53', '53', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6ab3d0348dfe452ca3adb3aa373a2d4c', null, 'blindedor_not', '申办方揭盲', 'Bid blindness', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6bb0b055abc049d09ce6cc9758335f35', null, 'inspect_unit', '{decade}', null, '74', '74', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6bd71488bb4a41fabe669fd68fdd45d4', null, 'dosage_unit', '百万国际单位', 'M[iU]', '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6d0dc9b3037e480a83457fc11d529722', null, 'can_reporter_be_followed_up', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6d87e4754d004d9f8324b49d400357a4', null, 'clinical-research', 'Ⅳ期', 'Ⅳexpect', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6db7fd808ec349b1b52a36ba87190d7c', null, 'drug-formulation', '硬膏', 'plaster', '47', '47', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6de54704d46e40ab907a7dfd3ddc08a4', null, 'sex', '不详', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6e37afe1cc1a4c82ac5e3fc1d962e0de', null, 'qualifier', '≤', '≤', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6e3fe52502ae4f7e8fa4b11933ba16eb', null, 'birth_defects', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6e5dc112faa14eb6a0995a476c03a41f', null, 'drug-way', '鞘内给药', 'intrathecal administration', '88', '88', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6ece667103574e988b5e23b087af123e', null, 'Reporter Information', '报告者信息', 'Reporter Information', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6ed579969a1d4e15ad46e3a593044a66', null, 'dosage_unit', '毫克/毫升', 'mg/mL ', '46', '46', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6ede949c68e2425695f161521a051417', null, 'product-categories', '新药3类', 'New drug class 3', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6f0a7b5d6eb44c1ea46680b309943381', null, 'inspect_unit', '[iU]/kg', null, '67', '67', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6f1886976d824e73963c0a72be3b3fca', null, 'drug-formulation', '粉剂', 'pulveres', '71', '71', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('702ee69ebf664790b8fca85ed09c77f1', null, 'dosage_unit', '国际单位', '[iU]', '43', '43', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('70c2d64aea874333ae0b775eb9996d7a', null, 'dosage_unit', '毫克/平方米', 'mg/m2', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('710becf8b75a4a1a93d036bdd012fb7a', null, 'dict_type', 'WHODRUG编码', null, '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('71a5d9a80d2a4002b5a4eb2a111fdf5e', null, 'event_out_come', '痊愈', 'Recovered / Resolved', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('72688951cd254ba39986c5177c42eaf1', null, 'drug-formulation', '涂膜剂', 'liniment', '61', '61', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('72c85602856a4a7ea350bfde7440404f', null, 'inspect_unit', '[CFU]', null, '57', '57', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('733161d591384bf8a120876f5f834203', null, 'dosage_unit', '摩尔', 'mol', '55', '55', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('737cc58b53124371a338369fb17a02f1', null, 'inspect_unit', '[hp_C]', null, '61', '61', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('739734c97720466682f6ecb903a00c3b', null, 'drug-way', '注射', 'injection', '81', '81', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('74153611a61a491b8340e175ddb864cb', null, 'age_unit', '周', 'wk', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('749040510bc542b283dad3660d804daf', null, 'drug-formulation', '浓缩丸', 'condensed pill', '81', '81', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7532907b2392465f9d86ae1a50e94d51', null, 'drug-formulation', '口腔贴片', 'buccal tablets', '137', '137', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('756de0259d5a4aa2a3450623120b32c5', null, 'combined_treatment', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('765ad952a9384c4c9c99caa4ece62606', null, 'maintain_page', '不良事件', 'Adverse Event', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('76c93251fa194f988e067b976cb868b6', null, 'follow-up_information', '无效报告', 'Invalid report', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7739366db3f3450ebab057cd8d0fbcca', null, 'drug-formulation', '橡胶膏', 'rubber', '66', '66', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('778c849dcc3d485cb6ba1f9d0fcd3acc', null, 'Overview', '报告属性', 'Reporting Attributes', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('77df4d88547c450b94c14ae36f1fbd96', null, 'drug-formulation', '水煎剂', 'water decoction', '110', '110', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('77e166d81bd44e1e9f535bd4e1214f90', null, 'attach-class', '说明书', 'Instructions', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7846e64c9947493fa4a05f671bc8c0a6', null, 'inspect_unit', '次', null, '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('788a66bf1b584b33a8c37ca78c900efc', null, 'drug-way', '鼻饲', 'Nasal feeding', '69', '69', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('78a9904c8dae4d75868a18714fcecfff', null, 'inspect_unit', 'umol/L', null, '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('78c198e66f5541eca9f6c97ec09263bb', null, 'inspect_unit', '[hp_X]', null, '64', '64', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('78fbd025ad864377939430bdf24cef79', null, 'Overview', '文献信息', 'Literature Information', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('792f2c6fa210468d93b718eb6305a528', null, 'reporter_cancel', '修改', 'Amendment ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7985ef184cb84a22ad9bc742c6a2f6dd', null, 'pregnancy_outcome', '过期产', 'Overdue production', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('799673e2ec9d40fd9d10203f9dbfd5e3', null, 'drug-way', '肝动脉灌注', 'Hepatic artery infusion', '73', '73', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7a2a09f2a8834574826f54f7ee4aaff5', null, 'event_out_come', '未好转', 'Not Recovered / Not Resolved / Ongoing', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7a41b6445cb54c52969d5f88cfbf840d', null, 'research-subdivision', 'IIa期', 'phase IIa clinical trials', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7ae4a2caad1641d6be79da4c91362bb8', null, 'reporter_evaluation', '肯定有关', 'There must be something about it', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7b2e89cd214a4b5b9c2bbabb0a619e52', null, 'drug-formulation', '含片', 'lozenge', '135', '135', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7cf23d91faa340429e829cff306bdfde', null, 'province', '湖南省', 'Hunan', '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7d64d395904449908cc3430108a946e5', null, 'province', '上海市', 'Shanghai', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7dbd06c21dcc4d0598627ce5e46e4dbb', null, 'drug_info_type', '国产', 'Home-made', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7e059b285bce499495e7fbaec2aac97e', null, 'inspect_unit', 'ug', null, '47', '47', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7e2b54baccb040a5ba89213a00bd9aa3', null, 'drug-formulation', '咀嚼片', 'chewable tablet', '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7ef95ce33a274573a5e34a9e37a70117', null, 'inspect_unit', 'MBq', null, '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7f1f98b10f8f4719a09352a9ed75967f', null, 'inspect_unit', '[iU]', null, '66', '66', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('800109051cfe4f4ea59e7ad3585e146f', null, 'is_pregnancy', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('802d4d698e9e4639add5069d967a4b21', null, 'history_type', '家族不良反应史', 'Family History', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8040dfdb6fca4f99842a671fbe502c05', null, 'research-subdivision', '针对常见疾病的探索性研究', 'exploratory research on common diseases', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('80bcecb96642474a8681f7da8570ccd9', null, 'extended_hospitalization', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('81141b2a04134ffbb46f6e89ecc69a2e', null, 'drug-formulation', '颗粒', 'granule', '133', '133', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8211652755d849518482a4aac6028c8d', null, 'drug-formulation', '微粒', 'particle', '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('82501dbf73724ff585c280020637bb43', null, 'drug-formulation', '丸剂', 'pilula', '42', '42', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('82f2b2b3d5954f28b9de24c3b16d5fb0', null, 'drug-way', '脑膜内给药', 'Intrameningeal', '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('831b5fe7c7cd41a89bcb595319711d7e', null, 'is_attach', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('838c6afd53ca42efa12dd948bae3a01d', null, 'drug-formulation', '分散片', 'dispersible tablet', '132', '132', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('839f3830144d4474a97302ea692b7e58', null, 'inspect_unit', 'M[iU]', null, '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('840899476ae3451684ea9257f51fa6ea', null, 'drug-way', '角膜给药', 'Intracorneal', '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('842afd0f8f034528a208ac028f8f1e00', null, 'inspect_unit', 'I', null, '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('847d4d7d486c4d26af7a434646966736', null, 'research-design', '双盲', 'Double Blinded', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('84d7100659c546179544625259993efc', null, 'company_type', '其他', 'Other', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('84e4a69e9e1e426b916237823b819f87', null, 'reporter_type', '消费者或其他非健康专业人员', 'Consumer or other Non-Health Professional', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('85141db394524fb4b253fc4a05636e6f', null, 'drug-formulation', '颗粒剂', 'granules', '69', '69', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('852d720b65184aec8a687e74bd935629', null, 'Drug Information', '报告适应症编号', 'Drug Indication', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8535f15a07274b329995a5d0b4a649a0', null, 'other_drug_information', '假药', null, '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('85545b6a67b04bb7beaa7030796292bb', null, 'is_primary_reporter', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('857d69c28833485bb120f28cb71c7985', null, 'province', '甘肃省', 'Gansu', '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('85d54c86685c4419a16c33f974947be6', null, 'drug-way', '海绵体器官给药', 'Intra corpus cavernosum', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('864b9c58f07e4a38983c95ac5741952f', null, 'ctcae_classification', '2级', '2 level', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('864cb086fea14116a4c831d87613e321', null, 'drug-formulation', '锭剂', 'lozenge', '95', '95', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8677e2b91b7846f29ec9de03d6ad89e9', null, 'attach-class', '质疑问卷-解答', 'Question questionnaire answer', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('869b2cbab344487b9d859a7010845e71', null, 'inspect_unit', '[AU]', null, '54', '54', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('86f22a0ea828475d91db9b7923d39ed5', null, 'province', '浙江省', 'Zhejiang', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8809200fb66e4288bb1e70f4d3c7c581', null, 'inspect_unit', 'uCi', null, '46', '46', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8829f7d6af204ad7ab387c2e88d8c851', null, 'drug-formulation', '混悬剂', 'suspension', '148', '148', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('884cf8ae75714b0796aadddac0c09d71', null, 'drug-way', '泵内注射', 'Intramuscular injection', '83', '83', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('88666227de724498ac03c08c8f72995a', null, 'maintain_page', '实验室检查', 'Laboratory', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('887f38a87d554b6bbf8ea129033055d5', null, 'drug-formulation', '干混悬剂', 'dry suspension', '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('88b7933410614fada0045b317bc700c9', null, 'inspect_unit', 'U', null, '45', '45', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('88cc4a6d32a04a1ba5dbc4e6e001287c', null, 'age_unit', '月', 'mo', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('89a323fc8ce841ab9b611c4ad121ff22', null, 'drug-formulation', '阴道灌注液', 'vagina perfusate', '146', '146', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('89b605f8e8c8445faddc45886c10a6cb', null, 'inspect_unit', 'h', null, '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('89f3adceab9a454e88dbb05f68d27009', null, 'product-categories', '新药5类', 'New drug class 5', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8a083c778f70414ca4c10e537233080c', null, 'received_from', '患者支持项目', 'Patient support project', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8a17775be7b44462beaab535e781b6c1', null, 'drug-formulation', '灌肠剂', 'enema', '128', '128', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8a5e724609d7477797d951e4be671fb0', null, 'pregnancy_outcome', '早产', 'premature delivery', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8ac86a85669d496e970011193355a072', null, 'province', '吉林省', 'Jilin', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8b4e814f6f664af894fcd3c06db12cd3', null, 'dict_type', 'WHOART编码', null, '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8b82de1691de4192b832611159e98b88', null, 'standard_of_seriousness', '先天性异常或出生缺陷', 'Congenital Anomaly / Birth Defect ', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8b8cadb5044342169df9b00b541366fb', null, 'time_interval_unit', '月', 'mo', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8b913054bf944842b1c8f4b2eb17b775', null, 'autopsy_results', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8ba50b3cf3494120a222a00bfc205e5f', null, 'reporter_evaluation', '可能有关', 'It may be related', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8bf111130a9f448b9c37a00443b92dd1', null, 'inspect_unit', 'mmol', null, '39', '39', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c082f0fb0504d8fa949a12c51f264f1', null, 'company_info_type', '药企', 'Pharmaceutical Company', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c408ac96f6846f0a84a5018a1302620', null, 'maintain_page', '患者信息', 'Patient Information', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c5efa83b9a84a0290804c3a5717bf17', null, 'drug-formulation', '缓释小丸', 'sustained-release pellets', '112', '112', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c5ffc5acbc34a42a214dce4db722d90', null, 'dosage_unit', '纳克', 'ng', '57', '57', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c978e846a3e4bda989aea0ade68027a', null, 'frequency', '多次', 'many times', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8cc2f28cec7c4c60a03bfe0ecca81175', null, 'drug-formulation', '敷料', 'surgical dressing', '100', '100', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8d72b096bc0942b8aef2403e4ab10522', null, 'company_type', '生产企业', 'manufacturing enterprise', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8d94712344b74f1abfce26f6315dde49', null, 'drug-formulation', '阴道片', 'vaginal tablet', '68', '68', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8d9d79a52cb24f9892c471cfee2c85f1', null, 'inspect_unit', 'g', null, '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8dece978f3c74b1fa9e3020e5a8fff80', null, 'blindedor_not', '盲态', 'Blind', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8ec1f3a702b04cbba9801186db1e2daf', null, 'drug-way', '漱口', 'gargle', '71', '71', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8ecae712c07b40a5952addfc58c517e6', null, 'age_group', '婴儿', 'Infant', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8eef00a8880b4adc9ebee055ff487387', null, 'drug-formulation', '滴鼻液', 'nasal drops', '102', '102', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8f73fa960ca64287a4c403a188f84eb4', null, 'drug-way', '造瘘管注入', 'Fistulas injection', '75', '75', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8f7bbdd51a0d47c4b63bc079e43b3bd1', null, 'drug-way', '前房内注射', 'Injection into anterior chamber', '85', '85', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8fd97fd9f65245859b9bf634b17dd854', null, 'ctcae_classification', '5级', '5 level', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9014e7f6de224552a3e02bdde49dee25', null, 'interaction', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9040be4f0f584f4b81bd7ce1bd3fbf55', null, 'drug-formulation', '滴丸', 'dropping pill', '91', '91', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('90601075547142ebacd70541dcd00154', null, 'drug-formulation', '缓释颗粒', 'sustained-release granules', '127', '127', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('912581f417484e95b668d2bd52c1cc5f', null, 'age_unit', '秒', 's', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('91f1c45bbeed4a98a536488561880a3b', null, 'life_threatening', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9230dfd7811f4438973f90892f8d489b', null, 'medically_confirmed', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('929d73eae5704fa3b20bc6f3709c98ce', null, 'clinical-research', '上市后研究', 'post marketing study', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('92c4c4add7034bf29b59289551fd65bb', null, 'pregnancy_report', '孕晚期', 'Late trimester of pregnancy', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('92d3498237ec49209fe1907312d513a0', null, 'source_info_name', '文献报道', 'Literature report', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9349b2df11034a128598c1acd8eb3983', null, 'drug-formulation', '浸膏', 'extract', '82', '82', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('936903b35b7c45f0bbc301cf1e00c576', null, 'inspect_unit', 'mg', null, '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('945237026cc3441fa27eb5fe4b15fb71', null, 'drug-way', '羊膜腔外给药', 'Extra-amniotic', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('94c42266eaa04f50962ac3cb9497c911', null, 'inspect_unit', 'meq', null, '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('95295510e235487eaa2ac515c9923e9d', null, 'severity', '中度', 'severe', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9553af7ae2174349aea07b03999d5062', null, 'is_reported_drug_supervision', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('959a2e152c934639b81106cf6ec68700', null, 'reporter_type', '药师', 'Pharmacist', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('95c59855c1ac4507be76c7b950a61bfb', null, 'report_identity_type', '父母报告', 'Parent Report', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('95dca37d723148e28fa2257bcd8f3b00', null, 'action_taken', '停用药物', 'Drug Withdrawn', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('96114c7821354ff6a32a99f4f1367882', null, 'IME', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('964ce5ad0bac49f086b89daab5b7c618', null, 'drug-formulation', '中药材', 'traditional chinese medicine', '106', '106', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9660b285dbbf4e1597a25fca6e248b04', null, 'reporter_evaluation', '肯定无关', 'There must be nothing to do with it', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9671da9881f64f38b241ea17c09b26b7', null, 'dosage_unit', '皮克', 'pg', '59', '59', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('969819ec1be843c59d94890a7f488c2f', null, 'drug-way', '牙科给药', 'Dental', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('96c632cc15c34f2fb377205ef9f9c9e4', null, 'Patient Information', '相关病史', 'Medical History', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('96e0ae255f7e40f28ae041b9a0767975', null, 'drug-formulation', '糖浆', 'syrup', '136', '136', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('972f0e84ff3f42f7a97e25cf4a6cd0cf', null, 'time_interval_unit', '时', 'h', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('973d8dd004644fa883a6fa047cca0e18', null, 'autopsy_results', '不详', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('974be5f1601a4c97a33d346c91ad8882', null, 'drug-way', '未知', 'Unknown', '65', '65', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('976279e99d7548e3a4d0238e2c2bd230', null, 'drug-formulation', '喷剂', 'spray', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9776d662737249eb8ccfc20df2c69876', null, 'Basic Information', '与本报告相关的报告识别码', 'Link Report', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('97c047a3124d416693554ee1979bf916', null, 'inspect_unit', 'cm2', null, '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('97ef88aaca3a4b1f8f58459a7ea1861c', null, 'drug-way', '胸膜腔内注射', 'Intrapleural', '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9827b20e101a410d906bd816363d8eae', null, 'attach-format', 'mp3', 'mp3', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('987f8a88d193406cafff032cbcf71a59', null, 'drug-formulation', '控释贴', 'controlled-release patches', '86', '86', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('98a5ea54aeb34a6098588be071547556', null, 'seriousness', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('98ab2a71b8eb4a7bb833d873c8f53cd8', null, 'drug-formulation', '胶剂', 'colloids', '143', '143', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('990a545c9f164c589d70c219aa17825b', null, 'reporter_organisation', '经营企业', 'Business enterprise', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('993b0e944edc4b7e823f3c93193e635e', null, 'relevant_medical_history', '肝病史', 'History of liver disease', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9a17edc4ea064ae7b714f4081fb53fba', null, 'combined_treatment', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9a2b75359267422a96fb035bc41e1398', null, 'research-subdivision', '观察性研究', 'observation study', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9a720e1a9d284018be974a64d51f52e8', null, 'drug-class', '化学药', 'Chemicals', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9a9a834efccb4e72badf4059b38dd3df', null, 'drug-way', '气管/支气管内给药', 'Endotracheal', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ab48fc4f71c4b57ae822934a6037cce', null, 'sender_type', '监督管理机构', 'Regulatory Authority', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9af5776eec3f4a369ea0fc1e6f36ddea', null, 'dosage_unit', '微摩尔', 'umol', '51', '51', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9aff81f1b2e44c2d814075898ae0ab37', null, 'action_taken', '继续用药', 'Dose not Changed', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9b50928825964bfba6605d41505f66e5', null, 'attach-format', 'png', 'png', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9b9377797b91440fabfebef3b857fa6d', null, 'birth_defects', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9bce50da1b1b4ad9a5a2742e55da2b9c', null, 'zjf', '未再使用', 'Unused', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9bfd73c3066441959eabf12af9bc936c', null, 'province', '安徽省', 'Anhui', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9c274aaffb834a1b82e0483da8b3613a', null, 'other_drug_information', '药物过量', null, '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9c4886a7d84640579ac4a038e5dafa4f', null, 'drug-way', '真皮下给药', 'Subdermal', '59', '59', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9c8a8d7474bd4c519fd60f39a563e3cc', null, 'attach-format', 'jpeg', 'jpeg', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9cbc70f05211408e928eeb8cddc435ac', null, 'drug-formulation', '气雾剂', 'aerosol', '92', '92', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ceda541a7be45b8a44f03ee41101a7c', null, 'age_unit', '日', 'd', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9d9ce2b6a27946afaa80564e6be8f34a', null, 'drug-formulation', '冲洗液', 'Irrigation solution', '119', '119', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9dca4d45ec454883a20dad80d52e438b', null, 'inspect_unit', 'mg/m2', null, '35', '35', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9e8a5ecc9e974f20935e17b9992c7c37', null, 'drug-class', '中药', 'Traditional Chinese Medicine', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ea9321cbcd04b5d8ea28f1636623801', null, 'follow-up_information', '数据清理', 'Data cleaning', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ee1eca2788c494d8899561c479f12e5', null, 'drug-formulation', '片剂', 'tablet', '70', '70', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ef21c6e8cfd4780a833e9430929cae7', null, 'drug-formulation', '口腔崩解片', 'orally disintegrating tablet', '147', '147', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9f4ec60272bf412d97eae4a61cd17a58', null, 'drug-formulation', '舌下片', 'sublingual tablet', '93', '93', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9f83354278ec4cd395b7642b7835d3ff', null, 'drug-way', '表面麻醉', 'Topical anesthesia', '77', '77', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ffcebb29eef4e74904102fb84d49b54', null, 'qualifier', '＞', '＞', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a0da97ee562c438392b928a47658caed', null, 'pregnancy_outcome', '人工流产', 'artificial abortion', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a0e2f99598504978ac3808b486da67df', null, 'reporter_evaluation', '待评价', 'To be evaluated', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a10ffaa804214b98a28a60454a7208bd', null, 'zjf', '不明', 'yes – unk  (rechallenge was done, outcome unknown) ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a14742b04e9040e6af4c0bd6aeed20f5', null, 'drug-formulation', '注射液', 'Injection', '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a1b400e60485430ea6c86c036692646e', null, 'drug-formulation', '口服液', 'oral liquid', '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a22f4a5c6a0347a4a1f3e71ea4c63d13', null, 'attach-format', 'xlsx', 'xlsx', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a248bfef2a8a4bf1ae20e6ace12706db', null, 'reporter_privacy_confidential', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a25a40d8aa2d4e7088bddb243d182d05', null, 'drug-formulation', '外用冻干制剂', 'freeze-dried preparation for external use ', '109', '109', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a2aea0cb44b34a25a86635b1937624d0', null, 'dosage_unit', '分升', null, '42', '42', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a31f28cb47d74fe9a6330ba14cd526a5', null, 'drug-formulation', '灌洗液', 'graft caval effluent ', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a323ce54830943c59f5e5b2c16d13418', null, 'severity', '轻度', 'Light', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a44c1c2cdb6643beb94ba748d55f5d50', null, 'drug-formulation', '混悬滴剂', 'suspend drops', '96', '96', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a53e8ce09eb2478c986808850f3d26a2', null, 'maintain_page', '药物信息', 'Drug Information', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a55f47045ba241b798221f5893628753', null, 'research_role', '首要研究者', 'First researcher', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a6791ca144cb48848c260ee50d1ea933', null, 'inspect_unit', '[drp]', null, '59', '59', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a6d9f905c4a14094836c08d76bb6725c', null, 'inspect_unit', 'umol', null, '51', '51', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a6e18f2a34b746fcaa83cf2576815d0c', null, 'drug-formulation', '滴眼液', 'eye drops', '155', '155', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a6f23bdade0a4e95992a6e1de823449b', null, 'source_info_name', '经营企业', 'Business enterprise', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a74a0357a2d14736a25c999ba8d7cf28', null, 'seriousness', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a78de3ea9b8f4f2c919e5adb1ba22298', null, 'province', '河南省', 'Henan', '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a8509e19b5394925b4fd5be1fdd26af1', null, 'inspect_unit', 'uL', null, '49', '49', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a894dff2a2284e68af7375a080a307e2', null, 'drug-way', '局部给药', 'Topical', '61', '61', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a89c3987c04c4d6aa649a49124ad0e1b', null, 'drug-formulation', '散剂', 'powder', '52', '52', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a98a61c9a88b40f5a6e54f36de638153', null, 'source_info_name', '其他', 'Other', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a9936d4736224d9a9b804e3a92b1232c', null, 'drug-formulation', '缓释干混悬剂', 'sustained release suspension', '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a9a8823f511d4b9898f764f8e064fa81', null, 'pregnancy_outcome', '结局未知', 'Unknowns', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a9c1ed54a6da46f791916cd5427033e1', null, 'bind_test_drug', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aa144aacbb2247e8905fe72150be9fae', null, 'drug-formulation', '酏', 'elixir', '144', '144', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aa79e25f2a5e4e489487bdd51e135730', null, 'drug-formulation', '吸入溶液', 'Inhalation solution', '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aa8294a0ad3c40a5ae6560bbf4d1a65e', null, 'action_taken', '药物暂停后又恢复', 'Recovery after drug suspension', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aa8da00b803842608bcc294c77cfdcf9', null, 'time_interval_unit', '按需要', '{asnecessary} ', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aaa77118d5994f6da8871c3e6ce7f484', null, 'drug-way', '其他', 'Other', '50', '50', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aacff1ac60f74068a563baec28e6f5bf', null, 'other_drug_information', '药物滥用', null, '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aae418a549664d21a73aea22b46d4a29', null, 'drug-formulation', '鼻用吸入剂', 'nasal inhalation', '64', '64', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ab363cbdd8bc41a8a863334e04f008c7', null, 'drug-formulation', '粉针剂', 'powder-injection', '120', '120', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ab5241a23f1240ec8d0e1c1de3a00a77', null, 'drug-formulation', '口服乳', 'oral emulsion', '51', '51', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('abb8e90f29a248b8a67cddf4fe62d958', null, 'Patient Information', '相关既往用药史', 'Parent Drug History', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('abfa9d1e93344ad6984985a7066f7228', null, 'drug-way', '直肠给药', 'Rectal', '54', '54', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ac6794b5a31b44ff9c1165d9e686f3a5', null, 'drug-formulation', '膏剂', 'paste', '55', '55', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ac91cff200814d518c484282fef1dd87', null, 'qualifier', '≥', '≥', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('accef5343b2d45a6a29044acd9f9e742', null, 'sender_type', '世卫组织国际药物监测合作中心', 'WHO Collaborating Centres for International Drug Monitoring', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('acd31f5cbe0d48ea8f2a1cda9fac0ad1', null, 'inspect_unit', 'nCi', null, '42', '42', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ad5b3382c3664d38975fbf7659d4dbb7', null, 'autopsy_results', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('add42cb051e84e3a9b20cddfe259cefd', null, 'drug-formulation', '体内诊断试剂', 'In vivo diagnostic reagents', '141', '141', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('adf48f706f5e47929022906841028283', null, 'drug-formulation', '明胶纤维', 'gelatin fibre', '84', '84', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ae3cd8832bfc46839be7c7dbead986b8', null, 'drug-formulation', '缓释胶囊', 'sustained release capsules', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af21a061e4814cceaa91096437140dae', null, 'company_info_type', 'CRO公司', 'CRO', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af50769ee5c14e6588f75ca2e4f2f7be', null, 'inspect_unit', 'mg/dl', null, '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af576cc982aa42759bf13a9e4f919d96', null, 'pregnancy_outcome', '死产', 'Stillbirth', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af6ef5171bbb41bba288a858325832f6', null, 'drug-class', '其他', 'Other', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af8cd09330624c03a9511d5e62a8bee9', null, 'drug-formulation', '肠溶缓释片', 'enteric-coated and sustained-release tablets', '58', '58', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af9a51cf5b974314b66f95ce0008e8b6', null, 'received_from', '上市后研究', 'Post marketing research', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b07f0c7caf2d4590a7b95aee53a3fcfb', null, 'drug-way', '子宫内给药', 'Intra-uterine', '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b0928800cea54513acf558caf6220e56', null, 'province', '黑龙江省', 'Heilongjiang', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b18f9d9458964037be282c3295a8fd73', null, 'drug-formulation', '阴道药膜', 'medical film for vaginal use', '151', '151', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b2025b3dc6f94b198fd8f7b66882ac6d', null, 'is_first_report', '随访报告', 'Fllow-up Report', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b22819b4f15c4b6180ff7592c784d3ce', null, 'drug-formulation', '试剂', 'reagent', '74', '74', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b267318d01ac40e599726227c6ab43bb', null, 'inspect_unit', 'mmHg', null, '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b2c9f6b53d7a49d99f8b7eb3c1f09321', null, 'drug-formulation', '微丸', 'pellet', '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b2dd7109e89c4a08a0bb0bd6c6c5464b', null, 'maintain_page', '药物/事件矩阵', 'Drug/Event', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b2feeb2005b94ba7a53a07dc72255113', null, 'drug-formulation', '控释片', 'controlled-release tablet', '37', '37', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b3d340c25a4045f2aebabecfb9670110', null, 'is_ongoing', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b3d8ee5c3443483aaac09eb885d485a5', null, 'report_identity_type', '父母-子女报告', 'Child Report', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b4678b06cfc2491faa06e73afcdaf6be', null, 'maintain_control', '下拉单选择', 'Drop list Single', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b47e479db4164eb6a9cde777c15c52b9', null, 'other_drug_information', '服用超过有效期的药物', null, '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b483a19f671c47618b8baa52065e1b90', null, 'time_interval_unit', '秒', 's', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b4fb23dd7a4a45d6a5ca0759bbcf92e5', null, 'drug-way', '管道喂养', 'Parenteral', '51', '51', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b50377551a1c46659638f910827dad77', null, 'trimester_of_exposure', '孕早期', 'Early pregnancy', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b54297086257454fa89bc3d698a5e7eb', null, 'drug-formulation', '凝胶', 'hydrogel ', '97', '97', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b6a55fd0be084a409c8cd2f03fda00fb', null, 'dosage_unit', '毫克/分升', null, '48', '48', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b6ade853aa8a4b16a1b4851a9073f1c0', null, 'drug-formulation', '眼膏', 'eye ointment ', '124', '124', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b70a9220b2664298b7ee3e23451fbe8c', null, 'Patient Information', '尸检-确定的死因', 'Autopsy', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b745754aff7a4c7eb2baacfeaad2ab21', null, 'drug-formulation', '染发剂', 'hair dyes', '142', '142', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b76289c920704a1999c2aff1bd2e8c87', null, 'clinical-research', '临床验证', 'Clinical Trials', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b7a044a6cc82466783f5d5fd48e49aca', null, 'drug-way', '皮下给药', 'Subcutaneous', '58', '58', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b7a90ce5c97e472cb0de5da00d5b3128', null, 'blindedor_not', '研究者揭盲', 'Researchers uncover blindness', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b7f59eb6fba74fbc928647f391240797', null, 'product-categories', '新药6类', 'New drug class 6', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b7feff2b01584788a0cf77749dd88c83', null, 'province', '陕西省', 'Shanxi', '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b80bad05d8e74458af1e9146dc32b22e', null, 'other_event_terms', '与疾病进展相关', 'Disease Related', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b82bffb1c63345eb958c4439255ad7a8', null, 'drug-formulation', '吸入混悬液', 'Inhalation suspension liquid', '160', '160', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b82e9d7aa0f14047a9dd82e08aac7232', null, 'drug-way', '吸入给药', 'Respiratory (inhalation)', '55', '55', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b900a0c564ab44258ebb6d9acc0df15a', null, 'drug-formulation', '眼用凝胶', 'eye gel', '113', '113', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b9bed4dc1989468191b93735bd6ade28', null, 'drug-way', '结膜下给药', 'Sunconjunctival', '57', '57', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b9d8b0b8619c4af4ab01164ea53fe45d', null, 'reporter_cancel', '取消', 'Nullification', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ba6dfc2add9d475fa0dbc54850d2cf38', null, 'pregnancy_report', '孕早期', 'Early pregnancy', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bad696bd424246138cf634c55c753710', null, 'is_primary_reporter', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bb94d90684f3481eaa0a49d042d690ee', null, 'history_type', '既往不良反应史', 'Past medical history', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bbfdc2c6d88f4fbdab9610085533ffbd', null, 'drug-way', '肿瘤内注射', 'Intratumor', '36', '36', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bcbcbfcd86024f72aa48e567b42a9a37', null, 'other_drug_information', '用药错误', null, '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bcc25cfeec50480296df157b0f1a167c', null, 'drug-formulation', '涂剂', 'lotion', '101', '101', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bcc963d08d554530aec408669c341476', null, 'maintain_control', '下拉录入', 'Drop entry', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bceb0a5ee4984afaac0c0d3e4db51482', null, 'drug-way', '羊膜腔内给药', 'Intra-amniotic', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bd8bc9af51384ceea73f880c868ece8f', null, 'source_info_name', '上市后研究', 'Post marketing research', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bdf966b5b4064d52896c0cd7a096bb7c', null, 'drug-formulation', '喷雾剂', 'spray', '150', '150', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('be10f7a90481489f8a0cc8ef439c5d95', null, 'inspect_unit', 'um', null, '50', '50', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bf12be218fc14c1fa9aefc9a517aab50', null, 'pregnancy_outcome', '失访', 'loss to follow-up', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bf33a96535784c299b672737e08b8f94', null, 'drug-formulation', '粉雾剂', 'powder ', '108', '108', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bf938b18bad64ae3884374e4f872538c', null, 'attach-class', '尸检报告', 'autopsy report', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bf9c342668034cf9a137268f4ada2908', null, 'age_group', '成年', 'Adult', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bfd14c5d19c045c09918574c2efbc6c6', null, 'pregnancy_outcome', '宫内死亡', 'Intrauterine death', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bfd18abd26ff4687a7363e09ba06e5f4', null, 'source_caseidentifier', '产品质量投诉', 'Complaint of product quality', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c03319e5450944f6b7c2505b3501a78f', null, 'dosage_unit', '居里', 'Ci', '41', '41', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0a72dce597245c39710d8c91e823428', null, 'inspect_unit', 'k[iU]', null, '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0ab20fa98ac44bdb2d28f408c07d8cd', null, 'is_death', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0b1c3fac9214ed48b394e512c116e28', null, 'attach-format', 'txt', 'txt', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0b754a9054e44ccb3454d4e8f53f78c', null, 'drug-way', '膀胱内给药', 'Intravesical', '43', '43', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0d302ad00354b359511318c9d629e0d', null, 'province', '江苏省', 'Jiangsu', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c11bf64ef1f2429db4352888d166d008', null, 'drug-formulation', '泡腾颗粒', 'effervescent granules', '49', '49', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c13b8f18ed8d490d9ced2ab510a0556d', null, 'drug_character', '怀疑药品', 'Suspect', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c21af912b7dc415395be28e813c03ead', null, 'drug-way', '口服', 'Oral', '48', '48', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c22282e051214e9a9aba652b89e58dfa', null, 'province', '山西省', 'Shanxi', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c4463554d48e46f08b2866654d91c864', null, 'inspect_unit', '10^12/L', null, '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c47af321ffdf43a7917935a5c22afa25', null, 'province', '西藏自治区', 'Tibet', '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c4ad4b733ccb40969f7d00525175b641', null, 'drug-way', '经乳房给药', 'Transmammary', '63', '63', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c4b7a52f08cb40cba3770b65d483b471', null, 'inspect_unit', 'mmol/L', null, '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c4cf7343d5f14c2296b9751fd5949b00', null, 'inspect_unit', 'wk', null, '78', '78', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c51449f2f2f14fcfba1e2d6d9e1a58fb', null, 'breast_feeding', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5563c96eec8485c91c1f2ac92ff3529', null, 'drug-formulation', '阴道栓', 'vaginal plug', '98', '98', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5c1c0eea152482fb9e82a670b3105ec', null, 'drug-way', '皮内注射', 'Intradermal', '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5d852bc25c74937ac55df1b56eeb647', null, 'drug-formulation', '丹剂', 'sublimed preparation', '75', '75', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5eda17a1d9e412da511624fd1a6889f', null, 'inspect_unit', '[D\'ag\'U]', null, '58', '58', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5f065b096054de1acca0f079b2ce157', null, 'province', '江西省', 'Jiangxi', '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5f6558009da40c08bb6a30941f1dc69', null, 'drug-formulation', '吸入剂', 'inhalant', '105', '105', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c65bc1f3c2394c78a4ea3c2f623f0186', null, 'drug-formulation', '缓释植入剂', 'sustained-release implant', '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c6d41257c66249cfaa631915620f149c', null, 'drug-formulation', '注射剂', 'injection', '39', '39', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c75771c430164e94afc4067ab53060e6', null, 'reporter_evaluation', '无法判断', 'Unable to judge', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c7a7e8a88b6e49cd960c4903b740c87f', null, 'attach-class', '药品检验报告', 'Drug inspection report', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c7ead525fdd343c98ec4e0b055520ec6', null, 'dosage_unit', '微居里', 'uCi', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c8a9e24ba36a495fa4bf3dfb83e2c6ac', null, 'sae_reports', '无', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c8b576acde7640d1af470dd172492d8e', null, 'dosage_unit', '粒', null, '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c8db9de721e34c8a9d71f0cce6364e11', null, 'drug-way', '海绵体给药', 'Intracavernous', '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c94328151d7044dea0a9c61bb7be8b18', null, 'received_from', '文献报道', 'Literature report', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c998636bcaf9445ea7577e658d2ae1c4', null, 'clinical-research', 'Ⅲ 期', 'Ⅲexpect', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ca14948c8f86491fa174b6b14afec93a', null, 'sender_type', '患者/消费者', 'Patient / Consumer ', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cbb3b6d5e79b49e5a8b5f8b382eca921', null, 'Laboratory', '实验室检查', 'Laboratory', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cc084e5af26741c9899de8082db01431', null, 'drug-formulation', '涂膜', 'coating', '89', '89', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cc3c4b80ee124c65a502ec9d943eedd6', null, 'action_taken', '不适用', 'Not Applicable', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cc4c0549024d4438847aa8a456267f43', null, 'disabling', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cc8a200359204d999257194d54e54ba4', null, 'drug-formulation', '合剂', 'mixtrue', '79', '79', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cd0a6dd15ab74294a567ffa1c9e64c2d', null, 'drug-formulation', '糊剂', 'paste', '163', '163', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ce0504e36f8a4b3e91f1e0c3902f3b3e', null, 'qjf', '否', 'yes – no    (rechallenge was done, reaction did not recur) ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ce160f7046ce412b87de6e62d3867ee7', null, 'inspect_unit', '[FFU]', null, '60', '60', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cee8e9b822b1496b8434afa058024de4', null, 'is_death', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cf331ea1b9ef45acb9a0006548c689c8', null, 'drug-way', '经胎盘给药', 'Transplacental', '64', '64', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cf593c8dfcb740939846c8b5dd8ca2a4', null, 'event_out_come', '死亡', 'Fatal', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cf72f18314684705aec4338bb4f6eba6', null, 'drug-formulation', '控释透皮贴', 'controlled release transdermal stick', '59', '59', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cfae8e838a1b4c04b36e3fdf2d9fbaab', null, 'drug-formulation', '洗液', 'washing liquor', '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d008278d887c479cbb857f1f982e9ee6', null, 'drug-way', '局部浸润麻醉', 'Iontophoresis', '44', '44', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d01a0556243d4c40b98cd1ca5749add9', null, 'drug-way', '皮肤给药', 'Cutaneous', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d04b4272942c49d6ac746b3bc1c20d9f', null, 'dosage_unit', 'U', null, '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d0b19aee4aae4ae2a1390cbfcfa50c26', null, 'Patient Information', '死亡信息', 'Death Information', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d0d1395858064634b26b383a8baa18ff', null, 'qualifier', '＜', '＜', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d134cd6ed67f4f3a848e2c596919762e', null, 'attach-format', 'docx', 'docx', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d1387018a07a4c0eaa8b53be7aabd2b0', null, 'drug-way', '经皮给药', 'Transdermal', '62', '62', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d13c3546f21e44e68a57a5438e4fca3a', null, 'dosage_unit', '滴', '[drp]', '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d1646906ab63433b902e27b3cce4f123', null, 'dosage_unit', '纳居里', 'nCi', '56', '56', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d21d13c80ae849f69dcb4b665fb880cd', null, 'drug-way', '颈丛阻滞', 'Cervical plexus block', '76', '76', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d3663c4668ad4667bce0e16186d8a197', null, 'other_drug_information', '经检测不合格的批次和批号', null, '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d39ef5ae847f4d4aab97a3ee3693d1a7', null, 'maintain_control', '文件输入框', 'File input', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d3d853b40b8b4dbb9492d5640c691575', null, 'time_interval_unit', '周期性的', '{cyclical} ', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d42aaa12367e40d8a4e45c15048900df', null, 'sender_type', '卫生专业人员', 'Health Professional', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d44c8f6878cc407f9ed854f02e6803e1', null, 'dosage_unit', '片', null, '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d51b685567834a3ca82483225be00e06', null, 'drug-formulation', '气体', 'gaseous fluid', '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d579e8c464514d2e96f56a6d30b3508a', null, 'drug-way', '关节内给药', 'Intra-articular', '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d64ae8ad1b5d402ab6979def1f7d938a', null, 'relevant_medical_history', '吸烟史', 'History of smoking', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d6bbf28fca87461098b9db88a23f8885', null, 'drug-formulation', '泡腾片', 'effervescent tablets', '139', '139', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d6bdc06bf76e47ecb31f56b4879df199', null, 'reporter_evaluation', '很可能有关', 'Probably related', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d714bf66d27241b19fe33522aaa5f8a6', null, 'dosage_unit', '毫居里', 'mCi', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d72755ce0b594bbdaa7837197ca8e371', null, 'maintain_control', '下拉多选择', 'Drop list Multiple', '10', '10', null, '3', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d773a006de4d4033af58f1aa1f16ccb1', null, 'company_type', '经营企业', 'Business enterprise', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d77c16f8f25a4d6385ab18474f0971bb', null, 'listedness_determination', '已知', 'old', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d7c8f186a737407ba53bb5d505021470', null, 'dosage_unit', '微米', null, '60', '60', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d8a190dc07044074a549a930ac17ffd4', null, 'drug-formulation', '速释片', 'rapid-release tablets', '53', '53', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d8bdbe4245c44478b7b4fa38400ee22f', null, 'action_taken', '暂停用药', 'drug suspension', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d91b328eaf924956820570c09e13dfe5', null, 'drug-way', '肝内给药', 'Intrahepatic', '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d928d685b0714850abc576c50e9a9414', null, 'drug-way', '术中栓塞', 'Intraoperative embolization', '86', '86', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d9290f63d1854a2f934ea132c9b56a7d', null, 'attach-class', '文献', 'literature', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d949da10e75143f0ba178ec60085f2cc', null, 'inspect_unit', 'pg', null, '44', '44', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d95a93b008f348dda69cbf85ffb5e2bd', null, 'drug-way', '舌下给药', 'Sublingual', '60', '60', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('da73a8261778492c9619b39b1e9e421f', null, 'clinical-research', '其他研究', 'Other Studies', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('daaedcb8e88348348fdf531d59d40483', null, 'drug-formulation', '滴剂', 'drops', '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dab69a5e94914b708096d35b839ace2d', null, 'SUSAR', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dacbc2fdcfff4d06879f1c498ac372b1', null, 'maintain_control', '单项选择', 'Radio Button', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('daed01d1e7c041fb902a0da5347c15f6', null, 'drug-formulation', '胶囊', 'capsule', '129', '129', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dbdec2a275cd433597acc2077ca90cff', null, 'Overview', '药品与不良事件信息', 'Drug & AE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dcc54d49905b4b0eaf7b4e9048fa0439', null, 'drug-way', '骶管注射', 'Sacral canal injection', '79', '79', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dd3b0c9e1b074267af87bf8bb461e84c', null, 'age_unit', '分', 'min ', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dd827c1795e94088ac9458ed1d1567b9', null, 'dosage_unit', '微升', 'uL', '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('de829480bfea4f37a435b78b58edc648', null, 'inspect_unit', '[hp_Q]', null, '63', '63', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('deaf63eaaa8f45fcb69f662745b65fe0', null, 'drug-way', '包膜内给药', 'Intrathecal', '37', '37', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('df68cca63d5f4515aebb91bfa2ae8383', null, 'reporter_type', '法规部门', 'Regulatory department', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('df6d0eeeaa034b6d9d8aca554b7d7bec', null, 'qjf', '不明', 'yes – unk  (rechallenge was done, outcome unknown) ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dfc0fde323ca4aaba5ee079f0877d4eb', null, 'dosage_unit', 'MU', null, '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dfc7867f298d4cceb1a6296457f5019b', null, 'dosage_unit', 'GB', null, '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e02d5f481fab403da910db94d88ace2b', null, 'attach-class', '现场调查报告', 'Field investigation report', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e04d49ae98ab4f1084855a06e953f095', null, 'dosage_unit', '毫克', 'mg', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e09a9094b5e04e79b9526a74f1958978', null, 'body_weight_unit', '千克', 'Kg', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e0a4c39d57ee4f8b9a2a0d1600908bc6', null, 'drug-way', '静脉给药', 'Intravenous (not otherwise specified) ', '42', '42', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e1067f97063c4570b1ef84d8e879c210', null, 'frequency', '不详', 'Unknown', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e1408865dfde445992772cb1f2e21bbc', null, 'dosage_unit', '毫当量', 'meq', '52', '52', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e1a0d95adf544ba78a8f69d9f1689a57', null, 'drug-formulation', '混悬注射剂', 'acetate suspension for injection', '104', '104', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e24f708580144de2a5eddb6f8dba5dbc', null, 'dosage_unit', 'IU', null, '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e292f3e8fad74912abb401e1e26afe1b', null, 'province', '宁夏回族自治区', 'Ningxia', '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e2d6a5275fe745a89cd2b88f676e46e8', null, 'drug-formulation', '口服冻干粉', 'oral lyophilized powder', '156', '156', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e305e2d52b86404e90015e23f5143181', null, 'dosage_unit', '剂型', '{DF}', '47', '47', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e379dd1207cc45db96c31658f56893bf', null, 'drug-formulation', '露剂', 'Distillate medicinal water', '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e474fc128c524d1e97f878e7f6a72a70', null, 'inspect_unit', 'nmol', null, '43', '43', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e4844cb7480a41ccb05ab36e5681d3ea', null, 'drug_info_type', '进口', 'Imported', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e489e3a2c16d4e77bc8f0c0b4310c3e5', null, 'drug-formulation', '口服溶液', 'oral solution', '158', '158', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e4ad22e6018144e7b502ea58687855ef', null, 'reporter_organisation', '个人', 'personal', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e4ebd2f559974e80aee279bcacb0bf1a', null, 'product-categories', '新药1类', 'New drug class 1', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e62e0a17233f474c948abe1e8671054b', null, 'delivery_type', '顺产', 'Yield', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e62e12b5d05d4a70ba1ae7b068daf82d', null, 'province', '香港特别行政区', 'HongKong', '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e674ae2cdc234a648a0730531fbe55f1', null, 'life_threatening', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e6a013ae3bea43d5a70dd6229b93e285', null, 'report_attach_status', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e6ebba2b6bb34d028ccf88d3eff4cfef', null, 'initial_report', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e75d080d58af4a8e94a5b5485dd0aca8', null, 'Additional Documents', '附加信息', 'Additional Documents', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e7876e3dbfc24b2384a79067f4b33ff2', null, 'ctcae_classification', '1级', '1 level', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e8975491da254a36a82888f7a8d0030b', null, 'impacton_primary_disease', '导致后遗症', 'Cause sequela', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e8cb068039204251988b06de8920845c', null, 'Basic Information', '研究者信息', 'Reporter Information', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e9ca432bbbdb4ef7b4febaf51084da62', null, 'delivery_type', '剖腹产', 'Caesarean birth', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ea821dc658054ef380df997d6add3b2f', null, 'age_unit', '岁', 'a', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ead00fa24c4f4d12bd8a350b57aecf1f', null, 'inspect_unit', 'd', null, '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eb2191ad3c0b4b5c944f6b3fe82e8862', null, 'ctcae_classification', '3级', '3 level', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eb21c19ff4ee49849051a2a3f1212cbd', null, 'dosage_unit', '不详', 'NI', '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eb5095c1a97742a18574c87a250d2a67', null, 'province', '四川省', 'Sichuan', '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eb8d304ff726456a8e4c0779084e33af', null, 'drug-formulation', '缓释凝胶', 'sustained-release gel', '73', '73', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ec391024ade845f8aa44be5bf59845d3', null, 'maintain_page', '基本信息', 'Basic Information', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ec754c61a4d04a809822825fd22946ec', null, 'drug-formulation', '肠溶缓释胶囊', 'enteric sustained-release capsules', '157', '157', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ecbe04a6314e4722bb698ae98ff95a5a', null, 'dosage_unit', 'KU', null, '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ed1861539d25477a9f319a054cc305cb', null, 'medically_important', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('edf752bcf2f54303aa9c7855ff839885', null, 'drug-formulation', '乳胶', 'latex', '50', '50', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ee538a96f65446149fb395f725751882', null, 'drug-way', '胸腔内给药', 'Intrathoracic', '38', '38', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ee5eb38824d149cab816879da5fa3f96', null, 'other_event_terms', '感染', 'Infected', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eef3bb07a9f64ef698730e2c26c7ad93', null, 'is_ongoing', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ef29159a93414f459e5cf9768e77f27f', null, 'maintain_control', '日期', 'Date', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f01170cbadff437f919fb953fdda571f', null, 'attach-format', 'pdf', 'pdf', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f0215c01726f4fb9abbbef8b83f23e63', null, 'drug-way', '灌注', 'perfusion', '68', '68', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f0bb554cdafd44ffb749b611dd72f487', null, 'inspect_unit', '[PFU]', null, '70', '70', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f1121abcc33541c3bedd240bc5c1e350', null, 'drug-formulation', '糖丸', 'sugar pills', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f11bce93c3d54c779dc3651f59948536', null, 'drug-formulation', '软胶囊', 'soft capsule', '114', '114', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f20882d41342447eae994f2b3e3cae69', null, 'drug-formulation', '滴耳剂', 'ear drops', '161', '161', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f239eea860cb48ce9f2dc49e4ee893eb', null, 'inspect_outcome', '不可判断', 'Inconclusive', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f2a4fec7d77d49a1b0830f0096eea35b', null, 'Overview', '患者与报告者信息', 'Patient & Reporter', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f2d87083112848d58faa9269ebbb4214', null, 'is_reported_drug_supervision', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f3b846ee86d246c8895deed8d225bfc6', null, 'drug-way', '病灶内给药', 'Intralesional', '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f3b9b8eecfd14aa1b367539d51fd3460', null, 'drug-formulation', '煎膏剂', 'soft extract', '67', '67', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f3cf40ddfda6425bb2ce774ac5e445f4', null, 'inspect_outcome', '阳性', 'Positive', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f3f5f5d029244c17a48f4e182d738e84', null, 'drug-formulation', '缓释透皮贴', 'slow-release transdermal stick', '115', '115', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f41ce586b1b141bb8e29fb3a75b6030e', null, 'dosage_unit', '千兆贝克勒尔', 'GBq', '36', '36', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f46c9f5b258c47bfb10c6100370a8816', null, 'report_attach_status', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f47887eb0a4c49e4a024a0de7111b896', null, 'drug-class', '预防用生物制品', 'Vacine', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f50c1334f0ec48e99132719b9cabff6e', null, 'dosage_unit', '贴', null, '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f5495b0151894533a24bbd9342331f11', null, 'drug-formulation', '肠溶片', 'enteric-coated tablet', '90', '90', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f645d5e5a76f4f5c81cfad44ffef18fc', null, 'drug-formulation', '浸膏片', 'extract tablets', '43', '43', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f69168595d524bc592f1b50b4342d642', null, 'research_role', '次要研究者', 'Secondary', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f6f3ff56d1334ab28461ad1edca76b9f', null, 'inspect_unit', 'mol', null, '41', '41', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f7027c449a9e455780acab1d277a1808', null, 'inspect_outcome', '阴性', 'Negative', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f76881d220ac47cfa73a8705fc5ada07', null, 'drug-formulation', '外用片', 'tablet', '85', '85', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f77096e7101b4cbaa0a875aed12cd600', null, 'maintain_page', '报告总结', 'Report Summary', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f7a9d6a1088c4fe19e9a83a5597a3f17', null, 'drug-way', '腹膜腔内注射', 'Intraperitoneal', '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f7f67043667f47d2a6a5b6b8229a4853', null, 'drug-way', '经眼给药', 'Intraocular', '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f90cd2146215467281d6af7a69f9e3df', null, 'received_from', '未知', 'Unknown', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f90d50d63c244c7c8a22a4f6a770ac31', null, 'disabling', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f951d7ad9168446b9e590f2c99ddd040', null, 'drug-formulation', '酒剂', 'medicinal liquor', '76', '76', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f95961b1bfdc473994cb54b87b9dab69', null, 'ctcae_classification', '4级', '4 level', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f9ba6afd62a544afa2568830b0e1671f', null, 'follow-up_information', '重复报告', 'Repeat Report', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f9c57ebaa733499e90bb5e6dad56aa1c', null, 'inspect_unit', 'mCi', null, '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fa88086a2dec4dc894bd149e5573edc4', null, 'drug-way', '经耳给药', 'Auricular (otic)', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fac3a2d8ad1c4056bbe33e862ea14d34', null, 'drug-formulation', '阴道泡腾胶囊', 'vaginal effervescent capsule', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fb389809b1a34eb6b22a6864c287bf7d', null, 'drug-formulation', '膜剂', 'membranes', '152', '152', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fb4e487685734ac3a716c1184cd3e9d0', null, 'drug-way', '滑膜内给药', 'Intrasynovial', '35', '35', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fb52f34d3c1740df888b985a837fc3d2', null, 'drug-formulation', '干糖浆', 'dry syrup', '125', '125', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fb871623267a43a3a0c8c548700d49e4', null, 'can_reporter_be_followed_up', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fc14b413d6bd4b6aad2d52a830423308', null, 'is_serverity', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fcaad4729b0a423aa0efc8fcc2c54bce', null, 'is_ongoing', '未知', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fd055377ada746f8ab88168fdceb3b48', null, 'drug-way', '局部注射', 'Local injection', '82', '82', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fd06dcebbd6f46f38707b54fd315da05', null, 'research-subdivision', 'Ib期', 'phase Ib clinical trials', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fda350dd33684839b85e09e50e61521f', null, 'drug-formulation', '液体', 'liquid', '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fda60ae3377e4c5fb04901c6ebd31a9f', null, 'inspect_unit', '{trimester}', null, '76', '76', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fdd20e09c5c7490991e9d3b10782cd60', null, 'extended_hospitalization', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe042b2c3f574c579e1adcd567f1efe8', null, 'drug-formulation', '鼻用喷雾剂', 'nasal spray', '118', '118', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe47d530cb844b26b97aed382d323dcb', null, 'drug-way', '鼻甲注射', 'Injection of nasal turbinate', '72', '72', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe61afbb947f4275a364e4c7002daac0', null, 'qualifier', '＝', '＝', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe64730af91f42959ebcc0f9b5774b39', null, 'dosage_unit', '克', 'g', '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe81c4916e1947649d1a34279072a25a', null, 'dosage_unit', '万U', null, '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe9dd66bacbf4d8c9916362a47afceac', null, 'inspect_unit', '[BAU]', null, '55', '55', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('feaacaecf4e54939a3a31e506784edc8', null, 'inspect_unit', 'Ci', null, '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fee4507486f8428587676d30104d2a40', null, 'IME', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fef3ecf7429f449eaf28b50fb3f6dc3f', null, 'drug_character', '未用药', 'Drug Not Administered', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ff5bd86ce24549b3bab16eaa62fbef5e', null, 'drug-formulation', '细粒', 'fine stuff', '122', '122', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ff69f937d158485d8b26f7f0cf3fe3b8', null, 'sender_type', '制药公司', 'Pharmaceutical Company', '1', '1', null, '2', null, null, null, null, null);

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
-- Table structure for field_test
-- ----------------------------
DROP TABLE IF EXISTS `field_test`;
CREATE TABLE `field_test` (
  `id` char(32) NOT NULL,
  `field_type` int(11) DEFAULT NULL COMMENT '字段类型1系统通用，2内置字段，3私有字段',
  `field_code` varchar(64) DEFAULT NULL COMMENT '字段编码',
  `dict_data_name` varchar(32) DEFAULT NULL COMMENT '字段对应字典',
  `field_chinese_name` varchar(32) DEFAULT NULL COMMENT '字段中文名',
  `field_english_name` varchar(255) DEFAULT NULL COMMENT '字段英文名',
  `table_name` varchar(32) DEFAULT NULL COMMENT '数据表名称',
  `attribute_name` varchar(255) DEFAULT NULL COMMENT '表字段名',
  `html_type` int(11) DEFAULT NULL COMMENT '控件类型',
  `edit_status` int(11) DEFAULT NULL COMMENT '是否可编辑1可编辑，2不可编辑',
  `required_field` int(11) DEFAULT NULL COMMENT '是否必填1必填，2不必填',
  `field_length` varchar(11) DEFAULT NULL COMMENT '最大长度',
  `field_owner_boundary` int(11) DEFAULT NULL COMMENT '所属界面',
  `field_owner_paragraph` int(11) DEFAULT NULL COMMENT '所属段落',
  `export_node` varchar(255) DEFAULT NULL COMMENT 'etb导出节点',
  `dic_type` varchar(11) DEFAULT NULL COMMENT '字典类型',
  `dic_language` int(11) DEFAULT NULL COMMENT '字典语言',
  `dic_version` int(11) DEFAULT NULL COMMENT '字典版本',
  `field_statistical` int(11) DEFAULT NULL COMMENT '参与统计(1:是,2:否)',
  `field_qc` int(11) DEFAULT NULL COMMENT '参与QC(1:是,2:否)',
  `field_search` int(11) DEFAULT NULL COMMENT '参与搜索(1:是,2:否)',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1正常，2删除',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_test
-- ----------------------------
INSERT INTO `field_test` VALUES ('01c79d375aa546d1af6bdf927cec3723', '1', '10_001_0001', 'attach-class', '文件分类', 'Document Type', null, null, '4', '1', '2', '50', '10', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('03524a80c7914003ab746e286d084d62', '1', '09_001_0007', 'listedness_determination', '报告已知判断', 'Is it known', null, null, '4', '1', '2', '50', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('045900febc014e0ab5dd3bbefbb9351d', '1', '06_001_0011', null, '事件开始日期', 'Start Date of AE', null, null, '6', '1', '1', '25', '6', '1', 'E.i.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('046bc53a47024aeca14f620dd1f1a74d', '1', '07_001_0008', null, '正常范围最高值', 'Normal High Value', null, null, '1', '1', '2', '50', '7', '1', 'F.r.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('047ddda6df884da4a4281ae0bf2c9336', '1', '05_001_0002', null, '商品名称', 'Drug Name', null, null, '1', '1', '2', '50', '5', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0571b57f51fd454aacdfb1ccf7bedf7e', '1', '04_004_0009', 'pregnancy_outcome', '妊娠结局', 'Gestation Results', null, null, '3', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('06687a69d4e24cf09f7d264ede2d1c87', '1', '04_004_0003', null, '药物暴露时孕周', 'Exposure Weeks', null, null, '1', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('071054b744874ae6bfe348840100a415', '1', '05_001_0018', 'dosage_unit', '剂量（单位）', 'Dose Unit', null, null, '5', '1', '2', '50', '5', '2', 'G.k.4.r.1b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0a2f42f1988b4929a0849ff79c8ade42', '1', '01_002_0007', null, '不良事件发生时间', 'Start Date of AE', null, null, '6', '2', '1', '25', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0baf200536364d5882c6ca744e5f381d', '1', '05_001_0012', null, '批准文号', 'Application Number', null, null, '1', '1', '2', '50', '5', '1', 'G.k.3.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0bfdf0fe24294317b560b2b51b408168', '1', '04_004_0011', 'sex', '性别', 'Neonatal\'s Sex', null, null, '4', '1', '2', '50', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0c115d3ea3194ae5ab24b42c5175df25', '1', '06_001_0002', 'initial_report', '首要不良事件', 'Initial Report', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0c4bd3481e4e4d4c9276d1aa9f08c3f8', '1', '09_001_0009', 'event_out_come', '报告结局', 'Outcome of AE', null, null, '4', '1', '2', '50', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0d23eca6b99841d598b168fcf6f73cb0', '1', '08_001_0005', 'listedness_determination', '已知', 'Is it known', null, null, '4', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0d99097140224e56afd5a0eacc860422', '1', '03_001_0007', null, '报告者地址', 'Reporter\'s Street', null, null, '1', '1', '2', '50', '3', '1', 'C.2.r.2.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('0dcad61df52b4d6ebfe8e472c85ebca5', '1', '09_001_0002', null, '备注', 'Case Narrative Note', null, null, '1', '1', '2', '2000', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('10717c97fad24418a937d4c43b65f645', '1', '04_003_0004', null, '适应症（coode）', 'Drug Indication', null, null, '4', '1', '2', '50', '4', '3', 'D.8.r.6b', '1,3', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('12bb73743ebe4be692175244830fa4f9', '1', '08_001_0006', 'is_serverity', '严重性', 'Seriousness', null, null, '4', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1310e90c081541babc482c1e71c3ab31', '1', '01_003_0007', null, '中心编号', 'Center Id', null, null, '1', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1556301eb5f74ff6a3761f2184a24c30', '1', '02_004_0002', null, '病例识别码的来源', 'Case Source', null, null, '1', '1', '2', '50', '2', '4', 'C.1.9.1.r.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('177e471568af4439af54676fb779342d', '1', '08_001_0010', null, '开始给药至事件发生的时间间隔', 'Drug Start Interval', null, null, '1', '1', '2', '50', '8', '1', 'G.k.9.i.3.1a', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('18ec6c3559a54b67ad61bdb69e6f29ec', '1', '04_001_0006', 'age_group', '年龄层', 'Patient\'s Age Group', null, null, '4', '1', '2', '50', '4', '1', 'D.2.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1904ac08afd1432889da542acc8dcf0f', '1', '09_001_0005', 'reporter_evaluation', '报告相关性', 'Causality', null, null, '4', '1', '2', '50', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1ab082ad6b524fc28a07bc71da6c0086', '1', '03_001_0002', null, '报告者名', 'Reporter\'s Given Name', null, null, '1', '1', '2', '50', '3', '1', 'C.2.r.1.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1b0f0e944f11474db55364bb9132ca4e', '1', '05_001_0015', 'drug-class', '药品注册分类', 'Drug Categorization', null, null, '4', '1', '2', '50', '5', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1be4cdd45a104c99ab7fb6ef117b14e2', '1', '02_001_0007', null, '最晚上报药监时间', 'Last Report Time', null, null, '6', '1', '2', '25', '2', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1c5eb8c7237d4c149937fbcc6593e954', '1', '04_008_0012', null, '病史结束日期', 'Parent\'s Medical End Date', null, null, '6', '1', '2', '25', '4', '10', 'D.10.7.1.r.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1e12955f9d85468bb053a48b2d548b37', '1', '01_003_0008', null, '患者编号', 'Patient\'s Id', null, null, '1', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1e2ee1dd12604614a63c5209bb74e464', '1', '04_004_0008', 'delivery_type', '分娩方式', 'Delivery Type', null, null, '10', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1e31d52448ba4f36af303f30e6cb9950', '1', '08_001_0011', 'time_interval_unit', '时间间隔（单位）', 'Interval Unit', null, null, '4', '1', '2', '50', '8', '1', 'G.k.9.i.3.1b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1ed656b680e34454b231c49ff8766b05', '1', '04_004_0016', null, '5分钟APGAR评分', 'APGAR 5 Minutes', null, null, '1', '1', '2', '50', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1f4eecffb9004eeaa8c279625cee52f6', '1', '06_001_0001', 'diagnosis', '事件诊断标识', 'Regimen Dosage', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1f671d3b27d04747a4a42f7b021c37e1', '1', '01_002_0001', 'drug_character', '药物特征', 'Drug Characterisation', null, null, '4', '2', '2', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('1f8e76aeca4c4f97aa57fc1df0614459', '1', '04_001_0011', 'patient_nationality', '民族', 'Patient\'s Nationality', null, null, '4', '1', '2', '50', '4', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2045068e9c61432b9cdec725ce8e4cbf', '1', '06_001_0025', 'other_event_terms', '其他情况', 'Other circumstances', null, null, '3', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('23f2d14293dc46f8816b468b61998fd3', '1', '06_001_0013', null, '事件持续时间', 'Duration', null, null, '1', '1', '2', '50', '6', '1', 'E.i.6a', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2406e7b135f14d69ba6cd3a492fc6d23', '1', '02_002_0007', null, '第#周', 'Weeks', null, null, '1', '1', '2', '50', '2', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2445d6d5cf5e45c5ab66181070df3319', '1', '05_001_0025', null, '批次/批号', 'Production Batch', null, null, '1', '1', '2', '50', '5', '2', 'G.k.4.r.7', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('256857aabfe4429dba71ed0fe97131a8', '1', '04_005_0001', null, '死亡日期', 'Date of death', null, null, '6', '1', '2', '25', '4', '6', 'D.9.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('26180f3f32de46aca9307a1368d3f3a4', '1', '05_001_0026', 'drug-formulation', '剂型', 'Formulation', null, null, '5', '1', '2', '50', '5', '2', 'G.k.4.r.9.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2763c302fc12448ba65710c0da8b17ce', '1', '05_001_0020', 'time_interval_unit', '时间间隔单位', 'Interval Unit', null, null, '4', '1', '2', '50', '5', '2', 'G.k.4.r.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('279cd35d33f84b49b846311a43059b48', '1', '02_006_0001', null, '临床前药理毒理试验', 'Relevant Tests', null, null, '1', '1', '2', '50', '2', '6', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('28b3e71485794dbdbbf818a8d4c296aa', '1', '05_001_0022', null, '末次给药日期', 'Drug End Time', null, null, '6', '1', '2', '25', '5', '2', 'G.k.4.r.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('28bff023bce243ee94b95553a7707e6c', '1', '02_004_0001', 'source_caseidentifier', '类型', 'Case Type', null, null, '4', '1', '2', '50', '2', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('29db4e4832c440d8a4f192d3bb72aa27', '1', '04_004_0004', 'trimester_of_exposure', '药物暴露时孕期', 'Exposure Trimester', null, null, '4', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2a4d4466539e402f9af98993d2d281c5', '1', '02_005_0003', null, '备注', 'Link Report Note', null, null, '1', '1', '2', '50', '2', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2ac9dd048b6243cfbc3ac72ee35b79a0', '1', '04_001_0007', null, '体重（kg）', 'Patient\'s Weight', null, null, '1', '1', '2', '50', '4', '1', 'D.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2b954fd1bcec40568b422539fb4f0172', '1', '03_001_0006', null, '报告者部门', 'Reporter\'s Department', null, null, '1', '1', '2', '50', '3', '1', 'C.2.r.2.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2e5f9a13d78f4a8e95a7078ece982a61', '1', '05_001_0028', 'drug-way', '父母的给药途径', 'Parent Route of Administration', null, null, '5', '1', '2', '50', '5', '2', 'G.k.4.r.11.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2f02da6e435d4a5097e91867ac1eedd9', '1', '02_001_0002', null, 'PV获知时间', 'PV Received Date', null, null, '6', '1', '1', '25', '2', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('2ffb896c181c43d2b9f661261f696a5e', '1', '01_002_0003', null, '商品名', 'Drug Name', null, null, '1', '2', '2', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3001610377b3491880fe9a1cd3c2302c', '1', '06_001_0006', 'listedness_determination', '已知/新的', 'Is it known', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3042525128f647bdb2cabbc0402758f2', '1', '04_002_0006', 'combined_treatment', '合并治疗', 'Medical Treatment', null, null, '4', '1', '2', '50', '4', '2', 'D.7.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('311263eab3884231aab65ef5e0a84daf', '1', '03_001_0017', 'can_reporter_be_followed_up', '是否被随访', 'Can Reporter Be Followed Up', null, null, '4', '1', '2', '50', '3', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('313fe5a3aa744b129d662cafc204a0e7', '1', '09_001_0001', null, '报告描述', 'Case Narrative', null, null, '1', '1', '2', '2000', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('314aa41af3a94bba9f088b4140b1de78', '1', '02_003_0001', null, '篇名', 'Literature title', null, null, '1', '1', '2', '50', '2', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('32f32492258e49ec8b25ee0948bdde82', '1', '08_001_0012', null, '末次给药至事件发生的时间间隔', 'Drug End Interval', null, null, '1', '1', '2', '50', '8', '1', 'G.k.9.i.3.2a', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('395bcc75e1f34842bd8603e95bef2d4f', '1', '07_001_0006', null, '非结构化的检查结果', 'Unstructured Result', null, null, '1', '1', '2', '2000', '7', '1', 'F.r.3.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3af87f91d1d94bb6a41f483296f74763', '1', '04_002_0001', 'history_type', '病史（code)', 'Medical code', null, null, '4', '1', '2', '50', '4', '2', 'D.7.1.r.1b', '1,3', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3b8e644a25294115b0ad695fbb5afb14', '1', '01_004_0001', null, '篇名', 'Literature title', null, null, '1', '2', '2', '50', '1', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3ba8acba16d64d6c8ec229bcb40955b5', '1', '06_001_0004', null, '不良事件术语', 'AE MedDRA Code', null, null, '5', '1', '1', '50', '6', '1', 'E.i.2.1b', '1,2', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3bd66ad334404280ab51826783eb6efc', '1', '04_008_0008', 'sex', '父母性别', 'Parent\'s Sex', null, null, '4', '1', '2', '50', '4', '8', 'D.10.6', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3f40b14143894382aa780b0ce0e81e0d', '1', '05_001_0013', 'ISO-3166country_code', '药物授权国', 'Authorisation Country', null, null, '5', '1', '2', '50', '5', '1', 'G.k.3.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3f51f41ea71e4e419ba7fe30f774afd8', '1', '04_001_0004', null, '年龄', 'Patient\'s Age', null, null, '1', '1', '2', '50', '4', '1', 'D.2.2.a', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3f87367c47b84122889e6b000fdd3f7b', '1', '04_006_0001', null, '报告的死因（字典编码）', 'Reported of Death Code', null, null, '4', '1', '2', '50', '4', '6', 'D.9.2.r.1b', '1,2', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('3fc080e2073542268b682970a8b152c3', '1', '05_001_0007', 'dosage_unit', '规格（单位）', 'Strength Unit', null, null, '5', '1', '2', '50', '5', '1', 'G.k.2.3.r.3b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('40d30ef032f74d4a88cb76dd5a932b0c', '1', '02_001_0010', null, '企业首位获悉人', 'First Company Learned', null, null, '1', '1', '2', '50', '2', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('42a9cd90db644ba397c2997e01a7be2c', '1', '05_001_0017', null, '剂量', 'Dose', null, null, '1', '1', '2', '50', '5', '2', 'G.k.4.r.1a', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('43268948629c4d75bfb633dc463edd02', '1', '04_009_0005', null, '反应（字典编码）', 'Parent\'s Drug Reaction', null, null, '4', '1', '2', '50', '4', '10', 'D.10.8.r.7b', '1,2', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('44106a2f89eb4a4cbfadcf294f1c9779', '1', '04_004_0010', null, '生产日期', 'Delivery Date', null, null, '6', '1', '2', '25', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('447796fa7c204ca19a68c580ee728625', '1', '08_001_0013', 'time_interval_unit', '时间间隔（单位）', 'Interval Unit', null, null, '4', '1', '2', '50', '8', '1', 'G.k.9.i.3.2b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('45f80ab71cd44d9da64290703b924626', '1', '07_001_0002', null, '检查项', 'Test Name', null, null, '1', '1', '2', '50', '7', '1', 'F.r.2.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('47cf8b0cd74c4a84bea8a5be870d8a6e', '1', '04_004_0013', null, '出生体重（kg）', 'Neonatal\'s Weight', null, null, '1', '1', '2', '50', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('4834d4de900b44759f5dfc64e0e1097f', '1', '04_009_0004', null, '适应症（字典编码）', 'Parent\'s Drug Indication', null, null, '4', '1', '2', '50', '4', '10', 'D.10.8.r.6b', '1,3', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('48fc58c65a7d4ed182c21fb2aa36eebf', '1', '04_004_0006', null, '胎儿总数', 'para', null, null, '1', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('492d9da3515649e88313ddba0256f9a9', '1', '06_001_0021', 'ISO-3166country_code', '事件发生国家', 'Event Occurred Country', null, null, '5', '1', '2', '50', '6', '1', 'E.i.9', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('4a1e0d50f59c4b788d82552fb3a3d4a0', '1', '01_003_0002', null, '患者电话', 'Patient\'s Telephone', null, null, '1', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('4a81ad3b679c412387246f496a49cbdd', '1', '03_001_0010', null, '报告者邮编', 'Reporter\'s Postcode', null, null, '1', '1', '2', '50', '3', '1', 'C.2.r.2.6', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('4af225e2a8e844d4aceacb54c6cf5a04', '1', '01_003_0010', null, '报告者电话', 'Reporter\'s Telephone', null, null, '1', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('4b5bf4d9aee345459a460d4c80824108', '1', '07_001_0009', null, '备注', 'Test Note', null, null, '1', '1', '2', '2000', '7', '1', 'F.r.6', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('507330e8f7d34f3c804db4be2bc34c7f', '1', '08_001_0015', 'other_drug_information', '药物的额外信息', 'Additional Type', null, null, '4', '1', '2', '50', '8', '1', 'G.k.10.r', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('51a28c03c4cc428faad43040980c046a', '1', '02_003_0002', null, '作者', 'Literature author', null, null, '1', '1', '2', '50', '2', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('551fa2df0a7e4bad8efbf2e4e6e00af3', '1', '02_001_0008', null, '报告最近更新时间', 'Last update Date', null, null, '6', '1', '2', '25', '2', '1', 'C.1.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('56449d0711614e65af3b0a93bdba601f', '1', '04_004_0017', null, '10分钟APGAR评分', 'APGAR 10 Minutes', null, null, '1', '1', '2', '50', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('573aa8e29f9a4e78b58a91187c4b28aa', '1', '08_001_0016', null, '药物的其他信息', 'Additional Note', null, null, '1', '1', '2', '2000', '8', '1', 'G.k.11', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('590f156ecde544fe9859d87cfe4f1ce6', '1', '04_004_0001', null, '预产期', 'Due Date', null, null, '1', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5966dda2c8e14012a1a4e9e2563dabb2', '1', '07_001_0007', null, '正常范围最低值', 'Normal Low Value', null, null, '1', '1', '2', '50', '7', '1', 'F.r.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('59e7d1c7beb748d6ba8a6df585218a8a', '1', '06_001_0022', 'province', '事件发生省份', 'Event Occurred Province', null, null, '5', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5b0473bd84604ff7a4275455587bcb4d', '1', '02_003_0004', null, '发表时间', 'Literature Date', null, null, '1', '1', '2', '50', '2', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5bbec1c24ddc4ee1ba7886eb8a10e30a', '1', '01_001_0005', 'is_first_report', '首次/随访', 'First/Fllow-up', null, null, '4', '2', '2', '50', '1', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5c99971469244ac1a1e18da350744496', '1', '03_001_0013', 'reporter_type', '报告者资质', 'Qualification', null, null, '4', '1', '2', '50', '3', '1', 'C.2.r.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5d2a72bf18ce47bc96489dd5c2bf9d75', '1', '01_002_0006', null, '用药原因', 'Durg Reason', null, null, '1', '2', '2', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5dac2f3b494f433fa44ebc005b9e50e5', '1', '05_001_0016', 'interaction', '药物相互作用', 'Interaction', null, null, '1', '1', '2', '50', '5', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5e7e76cf36af47b8a8a1369569c1d736', '1', '01_002_0005', null, '生产批次', 'Production Batch', null, null, '1', '2', '2', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5ebf5a31b444408d9775a1cc3fa2ed24', '1', '05_001_0003', null, '通用名称', 'Common Name', null, null, '1', '1', '1', '50', '5', '1', 'G.k.2.2', '4', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('5efcc1e6f8e047bba720d6aa97f579e3', '1', '04_001_0010', null, '末次月经日期', 'Patient\'s LMP', null, null, '6', '1', '2', '25', '4', '1', 'D.6', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('609f39c7997b488cae22ebc59c73f3eb', '1', '02_002_0008', null, '第#次随访', 'Follow-up', null, null, '1', '1', '2', '50', '2', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('61ab6a573d3c4b66b7e41a8c24ed03bf', '1', '09_001_0008', null, '备注', 'Is it known Note', null, null, '1', '1', '2', '2000', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('621f03d03d794d6f95f67aa08c68785a', '1', '06_001_0007', 'is_serverity', '是否严重', 'Seriousness', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('6402618d11f24f5c918f3f748f426dea', '1', '04_004_0014', 'delivery_type', '分娩方式', 'Delivery Type', null, null, '4', '1', '2', '50', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('65f656a6bb794052aea32105e23f5a90', '1', '06_001_0014', 'time_interval_unit', '事件持续时间单位', 'Duration Unit', null, null, '4', '1', '2', '50', '6', '1', 'E.i.6b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('664b2d57045a4d6b94ca381f99d34ddb', '1', '06_001_0005', 'IME', 'IME', 'IME', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('666a7361b1404c7bbe039df6cc46cdbb', '1', '05_001_0021', null, '开始用药日期', 'Drug Start Time', null, null, '6', '1', '2', '25', '5', '2', 'G.k.4.r.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('68304b61457c4aaf9066e76b71dddc43', '1', '04_004_0018', null, '备注', 'Neonatal\'s Note', null, null, '1', '1', '2', '50', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('686e5def5eb64185a33cca06c329bb5d', '1', '04_008_0005', null, '父母末次月经', 'Parent\'s LMP', null, null, '6', '1', '2', '25', '4', '8', 'D.10.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('694b3aa9a791407eadc0cd45b715e7fa', '1', '01_004_0002', null, '作者', 'Literature author', null, null, '1', '2', '2', '50', '1', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('6b172f2f6e5649a7952b69be64b0e8b1', '1', '01_002_0004', null, '生产厂家', 'Manufacturer', null, null, '1', '2', '2', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('6b25ef15bbb8491f9e9dfae30f65521a', '1', '03_001_0016', null, '报告者传真', 'Reporter\'s Fax', null, null, '1', '1', '2', '50', '3', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('6d291143bcf346918ba467673c70797c', '1', '05_001_0024', 'time_interval_unit', '给药的持续时间（单位）', 'Drug Duration Unit', null, null, '4', '1', '2', '50', '5', '2', 'G.k.4.r.6b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('6e89b4d4963848d6a11b39fbfbeaeb81', '1', '04_001_0001', null, '患者姓名', 'Patient\'s name', null, null, '1', '1', '1', '50', '4', '1', 'D.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('6ebf15a78b7f487c948d602ea8bbf58e', '1', '06_001_0017', null, '不良事件过程描述(包括症状、体征临床检验等)及处理情况', 'Case Narrative', null, null, '1', '1', '2', '2000', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('6ed945cc74664094991836a1dcf9574a', '1', '05_001_0019', null, '间隔', 'Interval', null, null, '1', '1', '2', '50', '5', '2', 'G.k.4.r.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('6f2aa3e386f04014901f72a723ad8144', '1', '10_001_0002', null, '附件内容', 'Document file', null, null, '9', '1', '2', '10', '10', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('7044a94c0a2243fdbf15edc5165ce306', '1', '08_001_0002', null, '商品名称', 'Drug Name', null, null, '1', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('7074c040ef4341fda1778ce988984a2c', '1', '01_001_0004', 'received_from', '企业报告类型', 'Type Of Report', null, null, '4', '2', '2', '50', '1', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('70bd89e479fb45a5970fa50d5b94d925', '1', '08_001_0008', 'reporter_evaluation', '因果关系', 'Causality', null, null, '4', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('70d5eac07dfc41f28c5e9b5687ab0960', '1', '05_001_0005', null, '活性成分', 'Specified Substance', null, null, '1', '1', '2', '2000', '5', '1', 'G.k.2.3.r.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('71c420755b50432797d379024c0ba394', '1', '04_009_0001', null, '药物名称', 'Parent\'s Drug name', null, null, '1', '1', '2', '50', '4', '10', 'D.10.8.r.1', '3,4', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('7381f16a49c54f27ac70a3284e8912b8', '1', '02_005_0001', 'report_identity_type', '类型', 'Link Report Type', null, null, '4', '1', '2', '50', '2', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('74c43d8796bd414e8bc3ee52492074c0', '1', '04_008_0001', null, '父母姓名', 'Parent\'s Name', null, null, '1', '1', '2', '50', '4', '8', 'D.10.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('770a51aff0da4cf8a9346ec54fab327f', '1', '10_001_0003', 'report_attach_status', '是否属于上报附件', 'Original Document', null, null, '4', '1', '2', '50', '10', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('787054143a854836a32a8a7617133734', '1', '05_001_0029', null, '报告适应症编号（字典编码）', 'Drug Indication', null, null, '4', '1', '2', '50', '5', '3', 'G.k.7.r.2b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('78fd2f332e3a4fb9a6decce0acdc122c', '1', '01_002_0008', null, '不良事件名称', 'Name of AE', null, null, '1', '2', '1', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('792a16cf294243cda4f056ea6a45fb84', '1', '06_001_0008', 'severity', '严重程度', 'Severity', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('7cc2898ba25442db9982ecd3cbcd0cec', '1', '03_001_0019', 'evaluation', '报告者单位评价', 'Reporter\'s Organisation Evaluation', null, null, '4', '1', '2', '50', '3', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('7ea9b4280d3d4f6c9d550df2ea4deefb', '1', '02_002_0002', null, '中心编号', 'Center Id', null, null, '1', '1', '2', '50', '2', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('7fa598968f07459aadd0245810860e7a', '1', '03_001_0014', 'is_primary_reporter', '是否首要报告者', 'Primary Reporter', null, null, '4', '1', '2', '50', '3', '1', 'C.2.r.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('8171d46a7c3d4bb4a122977f875da251', '1', '04_002_0005', null, '说明', 'Medical Narrative', null, null, '1', '1', '2', '2000', '4', '2', 'D.7.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('81754920893b4a788586d1cc81f14362', '1', '04_005_0002', 'autopsy', '是否进行尸检', 'Autopsy', null, null, '4', '1', '2', '50', '4', '6', 'D.9.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('838a03e6a5424b2e92158b0765dca627', '1', '06_001_0018', 'event_out_come', '事件转归情况', 'Outcome of AE', null, null, '4', '1', '1', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('8406ac36f0e446138989a03f38026c79', '1', '01_003_0005', null, '年龄', 'Patient\'s Age', null, null, '1', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('8491f5dea500419283e6b13c64ca2e4c', '1', '06_001_0003', null, '不良事件名称', 'Name of AE', null, null, '1', '1', '1', '50', '6', '1', 'E.i.1.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('8c37289350434851a35f2403b724ecad', '1', '06_001_0019', null, '后遗症表现', 'sequela', null, null, '1', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('8cfff0117ce449d6af8afdb013a97248', '1', '04_001_0015', null, '住院号', 'Hospital Record Number', null, null, '1', '1', '2', '50', '4', '1', 'D.1.1.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('8d2cd96d40ca4a77b50f99681f1ab219', '1', '04_004_0015', null, '1分钟APGAR评分', 'APGAR 1 Minute', null, null, '1', '1', '2', '50', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('8d3fe78626cc40d49b65144c100be691', '1', '10_001_0004', null, '描述', 'Document Note', null, null, '1', '1', '2', '2000', '10', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('8f47cb5e903b4c3482bb7816671c139d', '1', '01_003_0006', 'age_unit', '年龄单位', 'Patient\'s Age Unit', null, null, '4', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('912bf692a8974338a4fd428334768de4', '1', '04_006_0002', null, '死因描述', 'Death Narrative', null, null, '1', '1', '2', '2000', '4', '6', 'D.9.2.r.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9304ba921bba459282689709b569ea21', '1', '02_002_0001', null, '项目编号', 'Study Registration Number', null, null, '1', '1', '2', '50', '2', '1', 'C.5.1.r.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('94caa1785f0d429b97608653774cc11e', '1', '02_001_0012', 'report_from_other_companies', '报告来自其他公司', 'Report from other companies', null, null, '4', '1', '2', '50', '2', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('959cb1ecc9a547d9b47a8830035f898a', '1', '05_001_0009', 'is_research_drug', '研究药物', 'Study Drug', null, null, '4', '1', '2', '50', '5', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('972c829c82b94619a64be2c268a1a343', '1', '05_001_0010', 'bind_test_drug', '设盲的试验用药', 'Investigational Product Blinded', null, null, '4', '1', '2', '50', '5', '1', 'G.k.2.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9a6169a499dc481b83d37fdcf83dc596', '1', '04_001_0003', null, '出生日期', 'Patient\'s Birthdate', null, null, '6', '1', '2', '25', '4', '1', 'D.2.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9aeb653a66d440c38eeb88a2733e60ec', '1', '06_001_0016', 'action_taken', '采取措施', 'Action(s) Taken', null, null, '10', '1', '2', '50', '6', '1', 'E.i.7', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9c3a92e7cfc4473b8bfb52cf635b46a4', '1', '01_001_0001', null, '首次获知时间', 'First Received Date', null, null, '6', '2', '2', '25', '1', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9c5028f425754f68b86335bdc28c1e1d', '1', '04_009_0002', null, '用药开始日期', 'Parent\'s Drug Start Date', null, null, '6', '1', '2', '25', '4', '10', 'D.10.8.r.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9d72621ceeb546be97d7129fb6633cac', '1', '02_001_0001', null, '首次获知时间', 'First Received Date', null, null, '6', '1', '1', '25', '2', '1', 'C.1.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9e9114144c3c411ab4ebe09ba39bd93c', '1', '02_001_0003', 'source_info_name', '企业信息来源', 'Enterprise Information Sources', null, null, '4', '1', '2', '50', '2', '1', 'ADR', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9ec4414e35fa43008e33b1e08f01cfc8', '1', '02_004_0003', null, '病例识别码', 'Case ID', null, null, '1', '1', '2', '50', '2', '4', 'C.1.9.1.r.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('9ff6991da36b4d56ae845f2e4f89db0d', '1', '07_001_0003', 'qualifier', '检查结果（限定符）', 'Test Result Value', null, null, '4', '1', '2', '50', '7', '1', 'F.r.3.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a008029c8a3d4850ab2e86974f5721ba', '1', '01_002_0009', null, '不良事件PT', 'AE PT', null, null, '1', '2', '2', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a0417e1592e148238e338289c3d47e83', '1', '02_002_0006', null, '研究描述', 'Description Of Study', null, null, '1', '1', '2', '2000', '2', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a1407cb03b6e45188fa90ee300bc2c71', '1', '01_004_0004', null, '发表时间', 'Literature Date', null, null, '6', '2', '2', '25', '1', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a165991d12b8455b8a78909f10bbf8c7', '1', '02_005_0002', null, '编号', 'Link Report Id', null, null, '1', '1', '2', '50', '2', '5', 'C.1.10.r', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a1677addc27949f0a87eed5c429c332c', '1', '03_001_0005', null, '报告者单位', 'Reporter\'s Organisation', null, null, '1', '1', '2', '50', '3', '1', 'C.2.r.2.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a1ed0a1753784efb8c1a94e5774dbc42', '1', '04_008_0006', null, '父母体重（kg）', 'Parent\'s Weight', null, null, '1', '1', '2', '50', '4', '8', 'D.10.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a20269e5b25b4a478e56a20aa4ada5da', '1', '04_008_0011', 'is_ongoing', '是否持续', 'Parent\'s Ongoing or not', null, null, '4', '1', '2', '50', '4', '10', 'D.10.7.1.r.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a204e9ddba294aea9472743344fa095c', '1', '09_001_0006', null, '备注', 'Causality Note', null, null, '1', '1', '2', '2000', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a30749013a9443938cd85a80cdde528f', '1', '01_001_0003', 'ISO-3166country_code', '事件发生国家', 'Event Occurred Country', null, null, '5', '2', '2', '50', '1', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a4a6dbb50f354ea6b4afd625678a84b5', '1', '07_001_0004', 'inspect_outcome', '检查结果（值）', 'Test Result Qualifier', null, null, '4', '1', '2', '50', '7', '1', 'F.r.3.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a5cbceed5dbe43dfbf378e2796345166', '1', '08_001_0004', null, '不良事件', 'Name of AE', null, null, '1', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a6d6ac02063a4e9da5469ea0589b066f', '1', '05_001_0008', 'ISO-3166country_code', '药物获得国家', 'Obtained Country', null, null, '5', '1', '2', '50', '5', '1', 'G.k.2.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a7438015060e49839d74ddd8f01398f4', '1', '03_001_0001', null, '报告者职位', 'Reporter\'s Title', null, null, '1', '1', '2', '50', '3', '1', 'C.2.r.1.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a7578fbc60d541e3a15531cbc59fbb77', '1', '02_001_0011', null, '企业首位获悉人联系方式', 'First Company Learned Tel', null, null, '1', '1', '2', '50', '2', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a78f5d8c6b074501975a13c40d1a10b8', '1', '05_001_0001', 'drug_character', '药物特征', 'Drug Characterisation', null, null, '4', '1', '1', '50', '5', '1', 'G.k.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a853a39cd32b4b4ea75c829db1d2ea99', '1', '04_008_0010', null, '病史开始日期', 'Parent\'s Medical Start Date', null, null, '6', '1', '2', '25', '4', '9', 'D.10.7.1.r.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a8ae3d9d07844227b3add032d534da57', '1', '04_001_0014', null, '门诊号', 'Medical Record Number', null, null, '1', '1', '2', '50', '4', '1', 'D.1.1.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a8f4bd0258ed4707aa8b447336f2adaf', '1', '03_001_0009', 'province', '报告者省份', 'Reporter\'s Province', null, null, '5', '1', '2', '50', '3', '1', 'C.2.r.2.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('a96f628bb0a3432990e8676ffe1db3bd', '1', '03_001_0012', 'ISO-3166country_code', '报告者国家代码', 'Reporter\'s Country Code', null, null, '5', '1', '2', '50', '3', '1', 'C.2.r.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('aba8587245494a9d98906c04bb49f406', '1', '01_003_0001', null, '患者姓名', 'Patient\'s name', null, null, '1', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('ad37452992c941a59abb26ea1a56035f', '1', '01_002_0002', null, '通用名', 'Common name', null, null, '1', '2', '1', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('ad50613cada84cc3a848bca34e80d2b9', '1', '08_001_0007', 'reporter_evaluation', '报告者评价', 'Reporter\'s  Evaluation', null, null, '4', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b032d6cf13044031a0d942bf40247423', '1', '08_001_0003', null, '通用名称', 'Common Name', null, null, '1', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b04f5d244d20412897d5003ba56c0b4a', '1', '04_008_0013', null, '文字描述', 'Parent\'s Medical Narrative', null, null, '1', '1', '2', '2000', '4', '10', 'D.10.7.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b0e04e769e394acf93359799742f178d', '1', '01_004_0003', null, '刊名', 'Literature journals', null, null, null, '2', '2', '50', '1', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b1f3fb225dcb4362ae7f1a191031dd03', '1', '08_001_0014', 'zjf', '再次给药后是否再次发生反应？', 'Dechallenge', null, null, '4', '1', '2', '50', '8', '1', 'G.k.9.i.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b254246975674f79ab4c41c900084f66', '1', '04_003_0001', null, '药物名称', 'Drug name', null, null, '1', '1', '2', '50', '4', '3', 'D.8.r.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b6614d1a8b6e4a81afce06cdcf6212ed', '1', '04_001_0009', 'sex', '性别', 'Patient\'s Sex', null, null, '4', '1', '2', '50', '4', '1', 'D.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b704cc910ff548199887eec10026a3b2', '1', '04_001_0002', null, '患者姓名缩写', 'Patient\'s initials', null, null, '1', '1', '2', '50', '4', '1', 'D.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b7ae6b45e6a74be3ac1a2f44eacd32bd', '1', '07_001_0005', 'inspect_unit', '检查结果（单位）', 'Test  Result Unit', null, null, '4', '1', '2', '50', '7', '1', 'F.r.3.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b8194abf17db4768b6efcedd11889002', '1', '01_003_0009', null, '报告者姓名', 'Reporter\'s Name', null, null, '1', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('b9b5ce4a4d8d4797a93c679cb52a0bfe', '1', '01_003_0003', 'sex', '性别', 'Patient\'s Sex', null, null, '4', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('bb497ba0bd514711b00d6621e314479e', '1', '03_001_0018', 'reporter_evaluation', '报告者评价', 'Reporter\'s Evaluation', null, null, '4', '1', '2', '50', '3', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('bea8481468f0429688ebebef7762a80c', '1', '04_009_0003', null, '用药结束日期', 'Parent\'s Drug End Date', null, null, '6', '1', '2', '25', '4', '10', 'D.10.8.r.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('bee342879f214abea12b6b2cc3cd5823', '1', '06_001_0009', 'ctcae_classification', 'CTCAE分级', 'CTC AE classification', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('bf0bb741fc2d4a39968630e935baea24', '1', '09_001_0003', 'is_serverity', '报告是否严重', 'Seriousness', null, null, '4', '1', '2', '50', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('c1bf124f93fc4e7aa1b00161578a1ac6', '1', '03_001_0021', 'research_role', '研究者角色', 'Reporter\'s Role', null, null, '4', '1', '2', '50', '3', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('c2d1fead77c04486814fbe835362b064', '1', '07_001_0001', null, '检查日期', 'Test Date', null, null, '1', '1', '2', '50', '7', '1', 'F.r.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('c368217831714e76af40210f3ad7dc30', '1', '01_001_0002', null, 'PV获知时间', 'PV Received Date', null, null, '6', '2', '1', '25', '1', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('c572fc389cb449789b1a3a1b07468e2a', '1', '04_001_0008', null, '身高（cm）', 'Patient\'s Height', null, null, '1', '1', '2', '50', '4', '1', 'D.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('c5fa86767b484abe993ae7ebdab9d672', '1', '02_002_0005', null, '研究名称', 'Name Of Study', null, null, '1', '1', '2', '50', '2', '2', 'C.5.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('ca6a40737596460ca122cde6f8691489', '1', '04_002_0003', 'is_ongoing', '是否持续', 'Ongoing or not', null, null, '4', '1', '2', '50', '4', '2', 'D.7.1.r.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('ca81a9e2eb2342fbacc914288b0af3eb', '1', '08_001_0001', null, '生产厂商', 'Manufacturer', null, null, '1', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('caa335a542db44a69b3e4946df47f296', '1', '03_001_0020', 'reporter_privacy_confidential', '隐私机密', 'Reporter Privacy confidential', null, null, '4', '1', '2', '50', '3', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('cae3c10065aa4d7aac2aacc138104531', '1', '02_002_0003', 'clinical-research', '研究分期', 'Study Type Where Reaction(s)', null, null, '4', '1', '2', '50', '2', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('cafbd90ac0124ed9a1e885f04518e57b', '1', '04_008_0007', null, '父母身高（cm）', 'Parent\'s Height', null, null, '1', '1', '2', '50', '4', '8', 'D.10.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('cb2ff18b88b64a6bae5b54599eacd1b9', '1', '01_001_0007', 'seriousness', '报告严重性', 'Seriousness', null, null, '2', '2', '2', '50', '1', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('cba8f9069ecc47439fd06089694a6bf7', '1', '04_003_0003', null, '用药结束日期', 'Drug End Date', null, null, '6', '1', '2', '25', '4', '3', 'D.8.r.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('cc16edc65a9446c7a81fa3f132141824', '1', '04_001_0005', 'age_unit', '年龄单位', 'Patient\'s Age Unit', null, null, '4', '1', '2', '50', '4', '1', 'D.2.2.b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('cc52972fbda14b91a066e158265d5f15', '1', '04_008_0003', null, '父母年龄', 'Parent\'s Age', null, null, '1', '1', '2', '50', '4', '8', 'D.10.2.2a', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('cd970b2377d54983a94a9c980490337d', '1', '05_001_0027', 'drug-way', '给药途径', 'Route of Administration', null, null, '5', '1', '2', '50', '5', '2', 'G.k.4.r.10.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('cf3cdd3870c24c4d8e8ba6cd52a1fcb9', '1', '04_008_0009', 'history_type', '病史（疾病/手术等code)', 'Parent\'s Medical code', null, null, '4', '1', '2', '50', '4', '9', 'D.10.7.1.r.1b', '1,3', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('d04c947fb19a4069a38184502fa2ba55', '1', '04_001_0012', null, '患者电话', 'Patient\'s Telephone', null, null, '1', '1', '1', '50', '4', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('d0544e6899134076a5847bc777b48b3a', '1', '02_001_0009', null, '迟报原因', 'Delayed Reason', null, null, '1', '1', '2', '50', '2', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('d11edd73eafa4e5dae7bae8296f1baea', '1', '04_004_0002', null, '事件发生孕周', 'Gestation Period', null, null, '1', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('d3a826bd1f1446a1978ff9ca5fe5fa33', '1', '05_001_0006', null, '规格', 'Strength', null, null, '1', '1', '2', '50', '5', '1', 'G.k.2.3.r.3a', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('d42e41516bd54c48ada1b4fec26c7d0b', '1', '05_001_0014', null, '生产厂家', 'Manufacturer', null, null, '1', '1', '2', '50', '5', '1', 'G.k.3.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('d548286ad4274af9990202d7684fc6e5', '1', '06_001_0024', 'sae_reports', 'SAE报道情况（国外）', 'SAE reports (foreign)', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('d7fb9ab69ffd41399a24ec340ef7a9dd', '1', '04_007_0001', null, '尸检-确定的死因（字典编码）', 'Autopsy Code', null, null, '4', '1', '2', '50', '4', '7', 'D.9.4.r.1b', '1,2', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('d9cfbbc63e0246df831ff65d67505edc', '1', '01_001_0006', 'SUSAR', 'SUSAR', 'SUSAR', null, null, '4', '2', '2', '50', '1', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('db7c564fcfd045b58171d98d14f4b869', '1', '02_002_0004', 'research-type', '研究类型', 'Type Of Study', null, null, '4', '1', '2', '50', '2', '2', 'C.5.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('dc986e3fb3084591a3cf99d655b3905a', '1', '03_001_0008', 'city', '报告者城市', 'Reporter\'s City', null, null, '5', '1', '2', '50', '3', '1', 'C.2.r.2.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('dca732618984490ca0d5d3b16b70c3a0', '1', '04_001_0013', null, '医院名称', 'Hospital Name', null, null, '1', '1', '2', '50', '4', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('ddfae33edfcf457a9d87645a7de93717', '1', '04_004_0007', null, '分娩胎儿数', 'Number of Fetus', null, null, '1', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('de7a1cccc1b04ba3931bf831e73551e3', '1', '04_002_0004', null, '病史结束日期', 'Medical End Date', null, null, '6', '1', '2', '25', '4', '2', 'D.7.1.r.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('deaf40695c6b4b5ba15c1f33067bc343', '1', '04_001_0017', 'reporter_privacy_confidential', '隐私机密', 'Patient\'s Privacy', null, null, '4', '1', '2', '50', '4', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('e3b71ad4062d485f9ce8e6dc1db45bd7', '1', '10_001_0005', 'attach-format', '文件格式', 'File Type', null, null, '4', '2', '2', '50', '10', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('e59062fbd544414399c924f3e144aad8', '1', '09_001_0010', null, '备注', 'Outcome of AE Note', null, null, '1', '1', '2', '2000', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('e631a6a956ef4e8fa489f77b92b8b52a', '1', '04_002_0002', null, '病史开始日期', 'Medical Start Date', null, null, '6', '1', '2', '25', '4', '2', 'D.7.1.r.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('e6607f3bab924e739ec4c303a9b3e56e', '1', '09_001_0004', null, '备注', 'Seriousness Note', null, null, '1', '1', '2', '2000', '9', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('e72a901bde43492cbdc5f096af1670af', '1', '04_001_0018', 'relevant_medical_history', '相关重要信息', 'Important Information', null, null, '3', '1', '2', '50', '4', '1', 'ADR', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('e78f373327c8436aa4b4e8b72c78caa5', '1', '04_008_0004', 'age_unit', '年龄单位', 'Parent\'s Age Unit', null, null, '4', '1', '2', '50', '4', '8', 'D.10.2.2b', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('e8096f4612a74f7499b59a11857db534', '1', '04_003_0002', null, '用药开始日期', 'Drug Start Date', null, null, '6', '1', '2', '25', '4', '3', 'D.8.r.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('ec6689f913a9410c9494c5633ec9ccc2', '1', '06_001_0015', 'frequency', '事件发生频率', 'Frequency', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('ed5e78fa03644e149f12a16f31e8e891', '1', '01_003_0004', null, '出生日期', 'Patient\'s Birthdate', null, null, '6', '2', '2', '25', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('eefca44b472f490c8961bff56b06e381', '1', '01_003_0011', null, '所属机构', 'Reporter\'s Organisation', null, null, '1', '2', '2', '50', '1', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('ef573b3727be464ba5b436f4c7f49a98', '1', '04_007_0002', null, '死因描述', 'Death Narrative', null, null, '1', '1', '2', '2000', '4', '7', 'D.9.2.r.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('efdaca3c45834744bcbcbbf3240f3b56', '1', '08_001_0009', 'reporter_evaluation', '因果关系修正', 'Causality Update', null, null, '4', '2', '2', '50', '8', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f2f63ab9a9a94e6bab4fbf1a1c9e5a14', '1', '06_001_0010', 'standard_of_seriousness', '严重性标准', 'Severity', null, null, '3', '1', '2', '50', '6', '1', 'E.i.3.2', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f3604cfdd2294b88bd4db3c579a38ead', '1', '03_001_0003', null, '报告者姓', 'Reporter\'s Family Name', null, null, '1', '1', '2', '50', '3', '1', 'C.2.r.1.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f36c0c4f989e43eca060d90f395e6d9b', '1', '04_001_0016', null, '受试者编号', 'Patient\'s Id', null, null, '1', '1', '2', '50', '4', '1', 'D.1.1.4', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f37edb9d9d9f4d11a39360a4b184d940', '1', '02_001_0005', 'is_attach', '是否有原始资料', 'Original Document', null, null, '4', '1', '2', '50', '2', '1', 'C.1.6.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f3b6cbd8f06b48159668c60b544d7b51', '1', '03_001_0015', null, '报告者邮箱', 'Reporter\'s Email', null, null, '1', '1', '2', '50', '3', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f412b490eb1f48baa2205055cfdc826c', '1', '01_002_0010', null, '不良事件结果', 'Outcome of AE', null, null, '1', '2', '2', '50', '1', '2', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f5fa19e75be440198c314e16e0d49ef3', '1', '04_008_0002', null, '父母出生日期', 'Parent\'s BiarthDate', null, null, '6', '1', '2', '25', '4', '8', 'D.10.2.1', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f6da391744c443e193c604244e44ce95', '1', '02_003_0003', null, '刊名', 'Literature journals', null, null, '1', '1', '2', '50', '2', '3', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f70e4487b5404fba9d3b880ed5fc71a3', '1', '02_001_0004', 'received_from', '企业报告类型', 'Type Of Report', null, null, '4', '1', '1', '50', '2', '1', 'C.1.3', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f7b508e156c94c5893b27d1a0d4bbcc0', '1', '03_001_0011', null, '报告者电话', 'Reporter\'s Telephone', null, null, '1', '1', '1', '50', '3', '1', 'C.2.r.2.7', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f7bad6285ea84ab69c0f84c976612b18', '1', '05_001_0004', null, '英文名称', 'English Name', null, null, '1', '1', '2', '50', '5', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f7cd55e3dafb45d49563137a1866345e', '1', '03_001_0004', 'company_type', '报告者单位类型', 'Type of Reporter\'s Organisation', null, null, '4', '1', '2', '50', '3', '1', 'ADR', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f7d71b629f5b46e2be633a90f34b7728', '1', '06_001_0023', 'sae_reports', 'SAE报道情况（国内）', 'SAE reports (domestic)', null, null, '4', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f919fc8fa72149efa4c28ecdefd80e35', '1', '04_004_0012', null, '身高（cm）', 'Neonatal\'s Height', null, null, '1', '1', '2', '50', '4', '5', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('f9d4517fea154ccbb9950c5616ba82d9', '1', '02_001_0006', 'SUSAR', 'SUSAR', 'SUSAR', null, null, '4', '1', '1', '50', '2', '1', 'C.1.7', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('fb8cd5a5023b448facc7f28ddc635cf7', '1', '04_003_0005', null, '反应（coode）', 'Drug Reaction', null, null, '4', '1', '2', '50', '4', '3', 'D.8.r.7b', '1,2', null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('fd2fbf557d394a6d8532db69aa9fea1e', '1', '05_001_0011', null, '揭盲日期', 'Date For Unblinding', null, null, '6', '1', '2', '25', '5', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('fd3057dbfac44edaae4c85c249ef1611', '1', '05_001_0023', null, '给药的持续时间', 'Drug Duration', null, null, '1', '1', '2', '50', '5', '2', 'G.k.4.r.6a', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('fd936668cf3444ecb70e29925f389c30', '1', '06_001_0012', null, '事件结束日期', 'End Date of AE', null, null, '6', '1', '2', '25', '6', '1', 'E.i.5', null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('fec6dc7093de4d2e89c40a99e0387665', '1', '04_004_0005', null, '妊娠次数', 'Gravida', null, null, '1', '1', '2', '50', '4', '4', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);
INSERT INTO `field_test` VALUES ('fed56bdd14e846fa98371efdcfbd4e40', '1', '06_001_0020', 'impacton_primary_disease', '对原患疾病的影响', 'Impact on Primary Disease', null, null, '3', '1', '2', '50', '6', '1', null, null, null, null, null, null, null, '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for field_test_conpany
-- ----------------------------
DROP TABLE IF EXISTS `field_test_conpany`;
CREATE TABLE `field_test_conpany` (
  `id` char(32) NOT NULL,
  `field_type` int(11) DEFAULT NULL COMMENT '字段类型1系统通用，2内置字段，3私有字段',
  `company_id` char(32) DEFAULT NULL,
  `field_code` varchar(64) DEFAULT NULL COMMENT '字段编码',
  `dict_data_name` varchar(32) DEFAULT NULL COMMENT '字段对应字典',
  `field_chinese_name` varchar(32) DEFAULT NULL COMMENT '字段中文名',
  `field_english_name` varchar(255) DEFAULT NULL COMMENT '字段英文名',
  `table_name` varchar(32) DEFAULT NULL COMMENT '数据表名称',
  `attribute_name` varchar(255) DEFAULT NULL COMMENT '表字段名',
  `html_type` int(11) DEFAULT NULL COMMENT '控件类型',
  `edit_status` int(11) DEFAULT NULL COMMENT '是否可编辑1可编辑，2不可编辑',
  `required_field` int(11) DEFAULT NULL COMMENT '是否必填1必填，2不必填',
  `field_length` varchar(11) DEFAULT NULL COMMENT '最大长度',
  `field_owner_boundary` int(11) DEFAULT NULL COMMENT '所属界面',
  `field_owner_paragraph` int(11) DEFAULT NULL COMMENT '所属段落',
  `export_node` varchar(255) DEFAULT NULL COMMENT 'etb导出节点',
  `dic_type` varchar(11) DEFAULT NULL COMMENT '字典类型',
  `dic_language` int(11) DEFAULT NULL COMMENT '字典语言',
  `dic_version` int(11) DEFAULT NULL COMMENT '字典版本',
  `field_statistical` int(11) DEFAULT NULL COMMENT '参与统计(1:是,2:否)',
  `field_qc` int(11) DEFAULT NULL COMMENT '参与QC(1:是,2:否)',
  `field_search` int(11) DEFAULT NULL COMMENT '参与搜索(1:是,2:否)',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1正常，2删除',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_test_conpany
-- ----------------------------

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
INSERT INTO `folder_information` VALUES ('1d219e6306e84b559b00703859091f43', null, '62', '13', '新建一级目录', '12', '1', '1', '33', '2018-10-23 17:46:29', '33', '2018-10-23 17:46:29');
INSERT INTO `folder_information` VALUES ('3710134c32b94f0aa09b461be5068f5d', '5f7d4eab17294b69b3ee5c25dcccbb98', '62', '13', '新建二级目录', '1', '1', '1', '33', '2018-10-23 13:44:36', '33', '2018-10-23 13:44:36');
INSERT INTO `folder_information` VALUES ('472ae92c76c64b66a392ee8db4aab85b', null, 'string', 'string', '测试一级目录', '2', '1', '1', 'string', '2018-10-19 10:09:55', '33', '2018-10-23 10:36:22');
INSERT INTO `folder_information` VALUES ('49f989e20c6045bebb48434725e6a7b7', null, '62', '13', '新建一级目录810', '1', '1', '1', '33', '2018-10-23 10:20:02', '33', '2018-10-23 10:37:55');
INSERT INTO `folder_information` VALUES ('4d4b732d85b14030ac9b10c405f2dc43', null, '62', '13', '新建一级目录02012', '1', '1', '1', '33', '2018-10-23 10:26:37', '33', '2018-10-23 10:26:37');
INSERT INTO `folder_information` VALUES ('50666f125cd245629a89cacf767a0bd5', null, '62', '13', '新建一级目录2', '2', '1', '1', '33', '2018-10-22 11:32:10', '33', '2018-10-23 10:38:27');
INSERT INTO `folder_information` VALUES ('55471ce4ffc4420d966458564b9d8fd1', '7d9969e0bae2476a9fc276ebe76d59f5', '62', '13', '121', '21', '1', '1', '33', '2018-10-23 13:27:08', '33', '2018-10-23 13:27:08');
INSERT INTO `folder_information` VALUES ('55a4c6d8beb34dfb95053729dc2baa77', '91e7f56843db41359e05276200065423', '62', '13', '新建二级目录2-1', '1', '1', '1', '33', '2018-10-23 13:44:56', '33', '2018-10-23 13:45:08');
INSERT INTO `folder_information` VALUES ('5f7d4eab17294b69b3ee5c25dcccbb98', null, '62', '13', '新建一级目录5', '1', '1', '1', '33', '2018-10-23 13:43:59', '33', '2018-10-23 13:43:59');
INSERT INTO `folder_information` VALUES ('632c67ff391b434b800c4dbf99d03b37', null, '62', '13', '新建一级目录2', '21', '1', '1', '33', '2018-10-23 13:38:38', '33', '2018-10-23 13:38:38');
INSERT INTO `folder_information` VALUES ('642fb7a7fbb94249ad4e223d5b908cbc', null, '62', '13', '121', '2', '1', '1', '33', '2018-10-22 18:38:57', '33', '2018-10-22 18:38:57');
INSERT INTO `folder_information` VALUES ('643aae4eb86a473e87f7f21d6999c1a2', null, '62', '13', '新建一级目录', '1', '1', '1', '33', '2018-10-23 13:26:39', '33', '2018-10-23 13:26:39');
INSERT INTO `folder_information` VALUES ('6869849bc5a0441cba84b81d44956179', '9d302ab0c62d4ac3a604fc7f269f38d0', '62', '13', '现金', '1', '1', '1', '33', '2018-10-22 15:18:56', '33', '2018-10-22 15:18:56');
INSERT INTO `folder_information` VALUES ('79d6621e8c164b4eba148a73d8bbd170', '49f989e20c6045bebb48434725e6a7b7', '62', '13', '12', '21', '1', '1', '33', '2018-10-23 13:27:23', '33', '2018-10-23 13:27:23');
INSERT INTO `folder_information` VALUES ('7d9969e0bae2476a9fc276ebe76d59f5', null, '62', '13', '新建一级目录212', '1', '1', '1', '33', '2018-10-23 10:27:16', '33', '2018-10-23 10:27:16');
INSERT INTO `folder_information` VALUES ('9028d9ef9e0642679594357de8c1bcab', null, '62', '13', '1', '1', '1', '1', '33', '2018-10-22 11:25:26', '33', '2018-10-22 11:25:26');
INSERT INTO `folder_information` VALUES ('91e7f56843db41359e05276200065423', null, '62', '13', '新建一级目录', '1', '1', '1', '33', '2018-10-23 13:33:47', '33', '2018-10-23 13:33:47');
INSERT INTO `folder_information` VALUES ('9d302ab0c62d4ac3a604fc7f269f38d0', null, 'string', 'string', '测试一级目录111', '2', '1', '1', 'string', '2018-10-19 10:27:54', 'string', '2018-10-19 10:27:54');
INSERT INTO `folder_information` VALUES ('9ed5b3e7f121415091425ab3cbe6f637', null, '62', '13', '新建一级目录810212', '1', '1', '1', '33', '2018-10-23 10:29:25', '33', '2018-10-23 10:29:25');
INSERT INTO `folder_information` VALUES ('a578f8a619204089afe6b6d8c05a2da5', null, '62', '13', '新建菜单四', '12', '1', '1', '33', '2018-10-23 13:42:41', '33', '2018-10-23 13:42:41');
INSERT INTO `folder_information` VALUES ('a62e165defac4e0badeea5bf10d6d72f', null, '62', '13', '新建一级目录4', '1', '1', '1', '33', '2018-10-22 11:32:36', '33', '2018-10-22 11:32:36');
INSERT INTO `folder_information` VALUES ('a8c0f8f17d94491ea8df2c032791d6f0', '4d4b732d85b14030ac9b10c405f2dc43', '62', '13', '21', '2', '1', '1', '33', '2018-10-23 13:27:39', '33', '2018-10-23 13:27:39');
INSERT INTO `folder_information` VALUES ('b597445c9eb34132a43e4b5f0317225d', '472ae92c76c64b66a392ee8db4aab85b', '62', '13', '新建二级目录3', '1', '1', '1', '33', '2018-10-23 13:32:54', '33', '2018-10-23 13:32:54');
INSERT INTO `folder_information` VALUES ('be5df5a061af4b9a878b332bd7a0aed6', null, '62', '13', '新建一级目录·1', '1', '1', '1', '33', '2018-10-22 11:29:50', '33', '2018-10-22 11:29:50');
INSERT INTO `folder_information` VALUES ('e4ac404ec2b24e3d912964b2e09281b8', null, '62', '13', '新建目录三', '12', '1', '1', '33', '2018-10-23 13:40:54', '33', '2018-10-23 13:40:54');
INSERT INTO `folder_information` VALUES ('f68cde7eb7e44b50b3951d915a028f38', '5f7d4eab17294b69b3ee5c25dcccbb98', '62', '13', '新建二级目录', '1', '1', '1', '33', '2018-10-23 13:44:34', '33', '2018-10-23 13:44:34');
INSERT INTO `folder_information` VALUES ('f9374da3881d4e1ca8bc729c50923fc2', null, '62', '13', '新建一级目录8', '1', '1', '1', '33', '2018-10-23 10:19:49', '33', '2018-10-23 10:19:49');

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
-- Table structure for overview_drug_event_info
-- ----------------------------
DROP TABLE IF EXISTS `overview_drug_event_info`;
CREATE TABLE `overview_drug_event_info` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `drug_type` int(11) DEFAULT NULL COMMENT '药品类型',
  `drug_generic_name` varchar(128) DEFAULT NULL COMMENT '药品通用名',
  `drug_trade_name` varchar(128) DEFAULT NULL COMMENT '药品商品名',
  `drug_manufacturer` varchar(32) DEFAULT NULL COMMENT '药品生产厂家',
  `production_batch` varchar(32) DEFAULT NULL COMMENT '生产批次',
  `medical_reasons` varchar(128) DEFAULT NULL COMMENT '用药原因',
  `adverse_events_time` datetime DEFAULT NULL COMMENT '不良事件发生时间',
  `adverse_events_name` varchar(32) DEFAULT NULL COMMENT '不良事件名称',
  `adverse_events_pt` varchar(32) DEFAULT NULL COMMENT '不良事件pt',
  `adverse_events_result` varchar(128) DEFAULT NULL COMMENT '不良事件结果',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='概览-药品与不良事件信息';

-- ----------------------------
-- Records of overview_drug_event_info
-- ----------------------------

-- ----------------------------
-- Table structure for overview_literature_info
-- ----------------------------
DROP TABLE IF EXISTS `overview_literature_info`;
CREATE TABLE `overview_literature_info` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `literature_name` varchar(128) DEFAULT NULL COMMENT '文献篇名',
  `literature_author` varchar(32) DEFAULT NULL COMMENT '文献作者',
  `literature_title` varchar(128) DEFAULT NULL COMMENT '文献刊名',
  `literature_published_time` datetime DEFAULT NULL COMMENT '文献发表时间',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='概览-文献信息';

-- ----------------------------
-- Records of overview_literature_info
-- ----------------------------

-- ----------------------------
-- Table structure for overview_patient_reporter_info
-- ----------------------------
DROP TABLE IF EXISTS `overview_patient_reporter_info`;
CREATE TABLE `overview_patient_reporter_info` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `patient_name` varchar(32) DEFAULT NULL COMMENT '患者姓名',
  `patient_phone` int(11) DEFAULT NULL COMMENT '患者电话',
  `patient_sex` int(11) DEFAULT NULL COMMENT '患者性别',
  `patient_birth_time` datetime DEFAULT NULL COMMENT '患者出生日期',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_age_unit` varchar(32) DEFAULT NULL COMMENT '患者年龄单位',
  `centre_number` varchar(32) DEFAULT NULL COMMENT '中心编号',
  `patient_number` varchar(32) DEFAULT NULL COMMENT '患者编号',
  `reporter_name` varchar(32) DEFAULT NULL COMMENT '报告者姓名',
  `reporter_phone` int(11) DEFAULT NULL COMMENT '报告者电话',
  `reporter_affiliation` varchar(32) DEFAULT NULL COMMENT '报告者所属机构',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='概览-患者与报告者信息';

-- ----------------------------
-- Records of overview_patient_reporter_info
-- ----------------------------

-- ----------------------------
-- Table structure for overview_report_attributes
-- ----------------------------
DROP TABLE IF EXISTS `overview_report_attributes`;
CREATE TABLE `overview_report_attributes` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `report_first_received_date` datetime DEFAULT NULL COMMENT '首次获知时间',
  `pv_received_date` datetime DEFAULT NULL COMMENT 'pv获知时间',
  `event_origin_country` varchar(32) DEFAULT NULL COMMENT '事件发生国家',
  `report_type` int(11) DEFAULT NULL COMMENT '企业报告类型',
  `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访',
  `report_susar` int(11) DEFAULT NULL COMMENT '快速报告SUSAR',
  `report_severity` int(11) DEFAULT NULL COMMENT '报告严重性',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='概览-报告属性';

-- ----------------------------
-- Records of overview_report_attributes
-- ----------------------------

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
INSERT INTO `regulations` VALUES ('94d873c85427407a81600801e16fbe07', '62', '测试', '严重', '1', '8', '1', '天', '[{\"label\":\"1\",\"value\":1},{\"label\":\"法规\",\"value\":1},{\"label\":\"发的\",\"value\":1},{\"label\":\"不超过\",\"value\":1},{\"label\":\"f\",\"value\":4}]', '1', '33', '2018-10-24 16:04:55', '33', '2018-10-24 16:04:55');
INSERT INTO `regulations` VALUES ('9eb06fb043ce4982bfb90ee567255cd0', '62', 'uy', '其他', '7', '7', '1', '天', '[{\"label\":\"发过火\",\"value\":7}]', '1', '33', '2018-09-18 18:00:28', '33', '2018-09-18 18:00:28');
INSERT INTO `regulations` VALUES ('a1f7fe20752f49eb872a15cfb15535a5', '62', '严重', '严重', '14', '3', '1', '天', '[{\"label\":\"0\",\"value\":2},{\"label\":\"1\",\"value\":1}]', '5', '33', '2018-09-14 15:46:19', '33', '2018-09-18 15:05:46');
INSERT INTO `regulations` VALUES ('c043e4d1cf9f4d4c9c4bc633caa4fe6c', '62', '一般', '一般', '3', '6', '1', '天', '[{\"label\":\"医学评审\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据质控\",\"value\":1}]', '1', '33', '2018-09-20 14:41:19', '33', '2018-09-20 14:41:19');
INSERT INTO `regulations` VALUES ('c7301dd73b5041ac813354f1031b8cb3', '62', '好讨厌', '报告规则', '4', '7', '2', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:42:12', '33', '2018-09-12 16:50:42');
INSERT INTO `regulations` VALUES ('d8fd6cceb1834848858232cb2f318e62', '62', '的神色', '报告规则', '3', '6', '1', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":1}]', '1', '33', '2018-09-12 16:53:04', '33', '2018-09-12 16:53:04');
INSERT INTO `regulations` VALUES ('e199581a4a09468d9015818010d97f90', '62', '很久', '报告规则', '6', '7', '2', '1', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":2}]', '2', '33', '2018-09-12 16:13:21', '33', '2018-09-12 16:50:48');
INSERT INTO `regulations` VALUES ('e1e80fd7b38e482f9dad8a895ea0eea2', '62', '一般', '一般', '3', '3', '1', '天', '[{\"label\":\"0\",\"value\":1},{\"label\":\"1\",\"value\":2}]', '1', '33', '2018-09-18 15:05:34', '33', '2018-09-18 15:05:34');
INSERT INTO `regulations` VALUES ('e2c024e6a1384ba29e98a00c5cb311cb', '62', '玩儿', '报告规则', '3', '6', '1', '天', '[{\"label\":\"报告递交\",\"value\":1},{\"label\":\"数据录入\",\"value\":1},{\"label\":\"原始资料\",\"value\":1},{\"label\":\"数据质控\",\"value\":1},{\"label\":\"医学评审QC\",\"value\":1},{\"label\":\"医学评审\",\"value\":1}]', '1', '33', '2018-09-12 16:53:40', '33', '2018-09-12 16:53:40');

-- ----------------------------
-- Table structure for report_tasks
-- ----------------------------
DROP TABLE IF EXISTS `report_tasks`;
CREATE TABLE `report_tasks` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目id',
  `source_id` char(32) DEFAULT NULL COMMENT '资源id',
  `source_type` tinyint(1) DEFAULT '1' COMMENT '资源类型（1 手动导入 2 文献导入 3 移动端导入）',
  `report_id` char(32) DEFAULT NULL COMMENT '报告id',
  `report_assigned_date` datetime DEFAULT NULL COMMENT '报告分发时间',
  `report_priority` int(11) DEFAULT NULL COMMENT '报告优先级',
  `task_severity` varchar(40) DEFAULT NULL COMMENT '报告严重性 （一般 严重 死亡 其他）',
  `task_role_id` varchar(32) DEFAULT NULL COMMENT '分发角色',
  `task_user_id` char(32) DEFAULT NULL COMMENT '分发人id',
  `task_user_name` char(50) DEFAULT NULL COMMENT '分发人名称',
  `regulation_id` char(32) DEFAULT NULL COMMENT '报告规则id',
  `regulation_node_id` int(11) DEFAULT NULL COMMENT '报告规则节点id',
  `regulation_node_name` varchar(40) DEFAULT NULL COMMENT '节点名称',
  `task_countdown` datetime DEFAULT NULL COMMENT '任务倒计时',
  `delete_status` int(11) DEFAULT '0' COMMENT '删除状态(1:未删除，0:已删除)',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='报告任务表';

-- ----------------------------
-- Records of report_tasks
-- ----------------------------

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
INSERT INTO `role_menu` VALUES ('1039748360771428352', '1006', '9f7225dcf0b748b3b94908e4457e7cef', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428353', '1006', 'ebcd8028d5444e6886157ef8ba6c57b4', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428354', '1006', '2cd9f888aede41419c6efe2a641ca1f1', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428355', '1006', '96141b02268e4705b98eb45ca65affac', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428356', '1006', '528d9514c59049d994433a8a82b3f995', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428357', '1006', '68cf608f21c7476fac9d0213ba1778e2', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428358', '1006', 'd541d7d219094a2c98d0a8fc717e9da8', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428359', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428360', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428361', '1006', '3ba6e0e0fc33464e8317cb38e14537eb', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428362', '1006', '89df9b7c7b744ca39f49aef5de0fa46a', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428363', '1006', '2fd66a73cfe54dbdbe40d55fb97fec9b', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428364', '1006', 'd43e4e58d6e5457b88d6b312dd4dff72', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428365', '1006', 'f1cd8a4b25354134a1eaa49cb90385b8', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428366', '1006', '71d6a3dd0c294b79add8026d21e1f00f', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428367', '1006', '5a2c4cd26a5a46dc86ce5f0d32c93abf', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428368', '1006', '1c30189542904319b1691a1497254efe', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428369', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428370', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428371', '1006', '57830d80b9e94438801da25492647ddb', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428372', '1006', '24ce88922af440efbdb397aa5e84bf07', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1039748360771428373', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-12 13:31:41', '2', '2018-10-24 15:16:52');
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
INSERT INTO `role_menu` VALUES ('1041934548536553472', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553473', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553474', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553475', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553476', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553477', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553478', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553479', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553480', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553481', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553482', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553483', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553484', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553485', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553486', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553487', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553488', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553489', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1041934548536553490', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-09-18 14:18:49', '2', '2018-10-24 15:16:52');
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
INSERT INTO `role_menu` VALUES ('1052750451836637184', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637185', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637186', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637187', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637188', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637189', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637190', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637191', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637192', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637193', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637194', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637195', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637196', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637197', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637198', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637199', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637200', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637201', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637202', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052750451836637203', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 10:37:22', '2', '2018-10-24 15:16:52');
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
INSERT INTO `role_menu` VALUES ('1052771236210987008', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987009', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987010', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987011', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987012', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987013', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987014', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987015', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987016', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987017', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987018', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987019', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987020', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987021', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987022', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987023', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987024', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987025', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987026', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052771236210987027', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 11:59:57', '2', '2018-10-24 15:16:52');
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
INSERT INTO `role_menu` VALUES ('1052845948131790848', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790849', '1006', 'b62a2a1a6bf8432e976e8787713cfb6b', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790850', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790851', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790852', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790853', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790854', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790855', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790856', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790857', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790858', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790859', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790860', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790861', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790862', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790863', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790864', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790865', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790866', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790867', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1052845948131790868', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-18 16:56:50', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296832', '1006', 'b62a2a1a6bf8432e976e8787713cfb6b', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296833', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296834', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296835', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296836', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296837', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296838', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296839', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296840', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296841', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296842', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296843', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296844', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296845', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296846', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296847', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296848', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296849', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296850', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296851', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054185601682296852', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-22 09:40:08', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636736', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636737', '1006', 'b62a2a1a6bf8432e976e8787713cfb6b', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636738', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636739', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636740', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636741', '1006', 'a7f56456473c456b9ee49dd62659ef13', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636742', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636743', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636744', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636745', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636746', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636747', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636748', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636749', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636750', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636751', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636752', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636753', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636754', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636755', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636756', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683610379636757', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-23 18:39:02', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260544', '1006', 'f538197465f14f9b870f661fd4407549', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260545', '1006', 'b62a2a1a6bf8432e976e8787713cfb6b', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260546', '1006', 'a0b37036e239423bb5f574ec99b690c7', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260547', '1006', 'b42a5b673b774688add97ceaf13f0698', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260548', '1006', 'edcef1bf62eb4687a223e10df4085db0', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260549', '1006', 'a7f56456473c456b9ee49dd62659ef13', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260550', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260551', '1006', '94b2adbd099448d9a0edc53130ad4e54', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260552', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260553', '1006', '5916fcfcff6e46c793e92decd48f83e7', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260554', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260555', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260556', '1006', 'efd8346015aa45fd95df97bad8e3c877', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260557', '1006', 'a0abdae523e944f8a507463f83ceb2bb', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260558', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260559', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260560', '1006', '9e6f7f86c31d41c795dadb410f58f859', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260561', '1006', 'e66d9275b9c644518f60d8ae51985ead', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260562', '1006', '859824ce1b354484b31d926a3320e1a3', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260563', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260564', '1006', 'c6b999553dda470a9afa2bae6d270798', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260565', '1006', '0965be7f783a42adae1547864404281c', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260566', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054683697105260567', '1006', 'c74ae8cb0caa43599f196533dde11a60', '0', null, '2', '2018-10-23 18:39:23', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866560', '1006', 'f538197465f14f9b870f661fd4407549', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866561', '1006', 'b62a2a1a6bf8432e976e8787713cfb6b', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866562', '1006', 'a0b37036e239423bb5f574ec99b690c7', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866563', '1006', 'b42a5b673b774688add97ceaf13f0698', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866564', '1006', 'edcef1bf62eb4687a223e10df4085db0', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866565', '1006', '4611dfcec52b41b4877ae8dbf2736f87', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866566', '1006', '94b2adbd099448d9a0edc53130ad4e54', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866567', '1006', '1aeb4779df6940a6b92f1c7fb2ee946a', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866568', '1006', '5916fcfcff6e46c793e92decd48f83e7', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866569', '1006', '8cf8b04e5fb040b4ac24f95352de6106', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866570', '1006', 'e7092728c02f43489cbacfd03e10d1f2', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866571', '1006', 'efd8346015aa45fd95df97bad8e3c877', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866572', '1006', 'a0abdae523e944f8a507463f83ceb2bb', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866573', '1006', 'c5da4b34ec2d47b1ad016bbd483cb86b', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866574', '1006', '28f1475d6ec54eaaa8e913c3f19c3e85', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866575', '1006', '9e6f7f86c31d41c795dadb410f58f859', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866576', '1006', 'e66d9275b9c644518f60d8ae51985ead', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866577', '1006', '859824ce1b354484b31d926a3320e1a3', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866578', '1006', '13cf21b481074730b7f1ab6dc2e46cac', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866579', '1006', 'c6b999553dda470a9afa2bae6d270798', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866580', '1006', '0965be7f783a42adae1547864404281c', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866581', '1006', 'b3fc01f505c74a5bb1ee88eb9a6cecf8', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');
INSERT INTO `role_menu` VALUES ('1054995117692866582', '1006', 'c74ae8cb0caa43599f196533dde11a60', '1', null, '2', '2018-10-24 15:16:52', '2', '2018-10-24 15:16:52');

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
INSERT INTO `sys_menu` VALUES ('1caf9f6ec3064d67b1840fc997a91235', 'a7f56456473c456b9ee49dd62659ef13', 'b42a5b673b774688add97ceaf13f0698', '报告管理', 'reportManagement', '1', '/reportManagement', '', 'el-icon-tickets', '1', '1', '1', 'reportManagement', null, '33', '2018-10-23 18:33:14', '33', '2018-10-24 14:29:07');
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
INSERT INTO `sys_menu` VALUES ('80a3da56d0c8487c966e075a722c1349', 'a0abdae523e944f8a507463f83ceb2bb', 'efd8346015aa45fd95df97bad8e3c877', '原始资料', 'rawDataImport', '1', '/rawDataImport/index', '', 'el-icon-printer', '1', '1', '0', 'el-icon-printer', null, '33', '2018-10-23 18:38:39', '33', '2018-10-23 18:38:39');
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
INSERT INTO `sys_menu` VALUES ('b451cdafd6684e248fb9f642fa298dfe', 'efd8346015aa45fd95df97bad8e3c877', '', '报告管理', 'reportManagement', '1', '/reportManagement', '', 'el-icon-document', '1', '1', '0', 'el-icon-document', null, '33', '2018-10-23 18:36:02', '33', '2018-10-23 18:36:02');
INSERT INTO `sys_menu` VALUES ('b51ba63351d74f0eb5a174b15684c0b1', '96141b02268e4705b98eb45ca65affac', '', '药物信息-上市前', 'aaa', '1', '/preDrug/index', '', '', '1', '1', '1', '', null, '33', '2018-09-12 13:19:28', '33', '2018-09-13 14:27:44');
INSERT INTO `sys_menu` VALUES ('b6c5e48dfe6b4c9a8be1a3f946f64cfb', '58463887615c4a54815f9f83625c02ec', '2cd9f888aede41419c6efe2a641ca1f1', 'test', 'test', '2', '', '删除', 'form', '1', '1', '1', '1', null, '33', '2018-09-11 14:34:26', '33', '2018-09-12 09:07:32');
INSERT INTO `sys_menu` VALUES ('c0b866d3c99a4279acbdefd8bfaa76a7', '3ba6e0e0fc33464e8317cb38e14537eb', '', '工作流', 'Workflow', '1', '/Workflow', '', 'form', '1', '1', '1', '1', null, '33', '2018-09-10 14:45:07', '33', '2018-09-13 14:27:54');
INSERT INTO `sys_menu` VALUES ('c4f7dd90fe7b4c9ba38b964108b3fe9c', 'ebcd8028d5444e6886157ef8ba6c57b4', '', '邮箱配置', 'email', '1', '/email', '', 'tree', '0', '1', '1', 'email', null, '33', '2018-09-10 11:22:44', '33', '2018-09-13 14:10:01');
INSERT INTO `sys_menu` VALUES ('c9ca44b7c360462db2719d45f184d27e', 'b901bff502414927a2b2fe0cb0f7328f', '9f7225dcf0b748b3b94908e4457e7cef', 'test', 'test', '2', 'test', '', 'test', '1', '2', '1', 'test', null, '33', '2018-09-10 17:37:51', '33', '2018-09-11 14:52:08');
INSERT INTO `sys_menu` VALUES ('cce78f83afd34a65a6e1bf5167724d02', '1aeb4779df6940a6b92f1c7fb2ee946a', 'b42a5b673b774688add97ceaf13f0698', '上市前药品信息', 'preDrug', '1', '/preDrug/index', '', '', '3', '1', '0', '/preDrug/index', null, '33', '2018-09-13 14:14:21', '33', '2018-09-13 14:14:21');
INSERT INTO `sys_menu` VALUES ('cf55a3c9a4b8425a93acbb586291e9f7', 'f538197465f14f9b870f661fd4407549', '', '检索任务管理', 'retrievalTask', '1', '/retrievalTask/index', '', 'el-icon-info', '0', '1', '0', '检索任务管理', null, '33', '2018-10-18 10:35:51', '33', '2018-10-18 10:35:51');
INSERT INTO `sys_menu` VALUES ('d2127242f52f42659ce7064d95045e87', '1d2738bfe23d469e8203841d7cfdf46b', '', 'sd', 'asfd', '1', '/asf', '', '', '1', '1', '1', 'asd', null, '33', '2018-10-23 18:34:16', '33', '2018-10-23 18:34:29');
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
-- Table structure for sys_report
-- ----------------------------
DROP TABLE IF EXISTS `sys_report`;
CREATE TABLE `sys_report` (
  `id` varchar(32) NOT NULL COMMENT '报告ID',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` varchar(32) DEFAULT NULL COMMENT '项目ID',
  `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',
  `event_from_country` varchar(32) DEFAULT NULL COMMENT '事件发生国家',
  `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',
  `report_type` int(11) DEFAULT NULL COMMENT '企业报告类型',
  `current_process_node` varchar(32) DEFAULT NULL COMMENT '报告当前处理节点id',
  `current_process_node_name` varchar(32) DEFAULT NULL COMMENT '报告当前处理节点名称',
  `previous_process_node` varchar(32) DEFAULT NULL COMMENT '报告上一处理节点id',
  `previous_process_node_name` varchar(32) DEFAULT NULL COMMENT '报告上一处理节点名称',
  `current_node_user_id` varchar(32) DEFAULT NULL COMMENT '节点处理人id',
  `current_node_user_name` varchar(32) DEFAULT NULL COMMENT '节点处理人名称',
  `previous_node_user_id` varchar(32) DEFAULT NULL COMMENT '节点上一处理人ID',
  `previous_node_user_name` varchar(32) DEFAULT NULL COMMENT '节点上一处理人名称',
  `report_countdown` datetime DEFAULT NULL COMMENT '报告倒计时',
  `report_priority` int(11) DEFAULT NULL COMMENT '报告优先级',
  `report_susar` int(11) DEFAULT NULL COMMENT 'SUSAR报告',
  `report_repeat` int(11) DEFAULT NULL COMMENT '重复报告',
  `report_invalid` int(11) DEFAULT NULL COMMENT '无效报告',
  `create_version_num` int(11) DEFAULT NULL COMMENT '新建版本次数',
  `latest_version` int(11) DEFAULT NULL COMMENT '最新版本(0:不是，1:是)',
  `previous_report_version_id` varchar(32) DEFAULT NULL COMMENT '上一版本报告ID',
  `create_version_reason` varchar(1024) DEFAULT NULL COMMENT '创建版本原因',
  `pv_create_time` datetime DEFAULT NULL COMMENT 'pv获知时间',
  `related_report` text COMMENT '关联报告(id集合)',
  `first_create_time` datetime DEFAULT NULL COMMENT '首次获知时间',
  `drug_name` varchar(3120) DEFAULT NULL COMMENT '药物名称(商品名;通用名称)',
  `primary_adverse_event` varchar(128) DEFAULT NULL COMMENT '首要不良事件',
  `patient_name` varchar(32) DEFAULT NULL COMMENT '患者姓名',
  `principal_rapporteur` varchar(32) DEFAULT NULL COMMENT '首要报告者姓名',
  `causal_relationship` int(11) DEFAULT NULL COMMENT '因果关系',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个例报告';

-- ----------------------------
-- Records of sys_report
-- ----------------------------

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
INSERT INTO `sys_sender` VALUES ('d2387e982a1e4be69f4f4b53e779b89f', '2018MEDSI000121法规和法国风格法国话费', '62', '恢复供货', '1', '发过火', null, null, null, null, null, null, null, null, null, null, '1', '2', null, null, '2018-09-18 17:16:02', null, null);
INSERT INTO `sys_sender` VALUES ('dbabf7f1cd8c4db1b9f4770dbf8d437f', '2018MEDSI000008', '62', '2121', '212', '21212', '2121', '212', '1', '1', '21', null, '2121', '2121', '2121', null, '2', '1', null, null, '2018-08-21 17:14:36', null, null);
INSERT INTO `sys_sender` VALUES ('f1e554cc34394b91bde7951ebbf86bdb', '2018MEDSI000056', '62', '1231232312312', '1232111212', '2232131', '王企鹅去问问去', '房贷首付地方发呆时', '1', '1', '为期额', '放的感到很尴尬很头疼', '123121', '1231213213124', '3123饿的我', ' 3违法都是凡人3 ', '2', '1', null, null, '2018-09-06 09:55:33', null, null);
INSERT INTO `sys_sender` VALUES ('fd37953f23a7409dbb1eebf6a0eab9f7', '2018MEDSI000118', '62', '测试', '1', '双方都', '研发部', '前段', '1', '6', '漯河', '艾斯德斯', '1232', '13231', '23', '123', '2', '2', null, null, '2018-09-18 15:40:40', null, null);

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
INSERT INTO `workflow_regulations` VALUES ('899f4a441aa041599f8f486a4ff90b1a', '21a5a95ad5c94481989675810b21f11f', '94d873c85427407a81600801e16fbe07', '62', '1', null, '33', '2018-10-24 16:04:55', '33', '2018-10-24 16:04:55');
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
