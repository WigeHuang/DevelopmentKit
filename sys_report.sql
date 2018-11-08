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
  `national_system_code` varchar(32) DEFAULT NULL COMMENT '国家系统编码',
  `manufacturer` varchar(32) DEFAULT NULL COMMENT '生产厂家',
  `pt_code` int(11) DEFAULT NULL COMMENT 'ptcode',
  `has_intellectual` int(11) DEFAULT NULL COMMENT '已知性',
  `severity` int(11) DEFAULT NULL COMMENT '严重性',
  `rapporteur_evaluation` int(11) DEFAULT NULL COMMENT '报告者评价',
  `rapporteur_unit_evaluation` int(11) DEFAULT NULL COMMENT '报告者单位评价',
  `correction_causation` int(11) DEFAULT NULL COMMENT '因果关系修正',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个例报告';

CREATE TABLE `report_tasks` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目id',
  `source_id` char(32) DEFAULT NULL COMMENT '资源id',
  `source_type` tinyint(1) DEFAULT '1' COMMENT '资源类型（1 手动导入 2 文献导入 3 移动端导入）',
  `report_id` char(32) DEFAULT NULL COMMENT '报告id',
  `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',
  `current_process_node` varchar(32) DEFAULT NULL COMMENT '报告当前处理节点id',
  `current_process_node_name` varchar(32) DEFAULT NULL COMMENT '报告当前处理节点名称',
  `previous_process_node` varchar(32) DEFAULT NULL COMMENT '报告上一处理节点id',
  `previous_process_node_name` varchar(32) DEFAULT NULL COMMENT '报告上一处理节点名称',
  `current_node_user_id` varchar(32) DEFAULT NULL COMMENT '节点处理人id',
  `current_node_user_name` varchar(32) DEFAULT NULL COMMENT '节点处理人名称',
  `previous_node_user_id` varchar(32) DEFAULT NULL COMMENT '节点上一处理人ID',
  `previous_node_user_name` varchar(32) DEFAULT NULL COMMENT '节点上一处理人名称',
  `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',
  `report_type` int(11) DEFAULT NULL COMMENT '企业报告类型',
  `report_assigned_date` datetime DEFAULT NULL COMMENT '任务分发时间',
  `report_first_create_time` datetime DEFAULT NULL COMMENT '首次获知时间',
  `report_drug_name` varchar(3120) DEFAULT NULL COMMENT '药物名称(商品名;通用名称)',
  `report_adverse_event` varchar(128) DEFAULT NULL COMMENT '不良事件',
  `report_susar` int(11) DEFAULT NULL COMMENT 'SUSAR报告',
  `report_priority` int(11) DEFAULT NULL COMMENT '报告优先级',
  `task_type` int(11) DEFAULT NULL COMMENT '任务类型（1 待办任务，2 超时任务）',
  `task_severity` varchar(40) DEFAULT NULL COMMENT '报告严重性 （一般 严重 死亡 其他）',
  `regulation_id` char(32) DEFAULT NULL COMMENT '报告规则id',
  `workflow_id` varchar(32) DEFAULT NULL COMMENT '工作流id',
  `task_current_role_id` varchar(32) DEFAULT NULL COMMENT '任务分发角色id',
  `task_current_user_id` varchar(32) DEFAULT NULL COMMENT '任务分发人id',
  `task_current_user_name` varchar(50) DEFAULT NULL COMMENT '任务分发人名称',
  `task_current_workflow_node_id` varchar(32) DEFAULT NULL COMMENT '工作流节点id',
  `task_current_workflow_node_name` varchar(32) DEFAULT NULL COMMENT '节点名称',
  `task_previous_role_id` varchar(32) DEFAULT NULL COMMENT '上一节点分发角色id',
  `task_previous_user_id` varchar(32) DEFAULT NULL COMMENT '上一节点分发人id',
  `task_previous_user_name` varchar(32) DEFAULT NULL COMMENT '上一节点分发人名称',
  `task_previous_workflow_node_id` varchar(32) DEFAULT NULL COMMENT '上一个工作流节点id',
  `task_previous_workflow_node_name` varchar(32) DEFAULT NULL COMMENT '上一个工作流节点名称',
  `task_countdown` datetime DEFAULT NULL COMMENT '任务倒计时',
  `report_countdown` datetime DEFAULT NULL COMMENT '报告倒计时',
  `delete_status` int(11) DEFAULT '1' COMMENT '删除状态(1:未删除，0:已删除)',
  `REVISION` int(11) DEFAULT '1' COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='报告任务表';



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
  `file_status` tinyint(1) DEFAULT '0' COMMENT '0 未分发 1 已分发任务 2 任务已生成报告',
  `file_description` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `file_upload_user_id` char(32) DEFAULT NULL COMMENT '上传文件用户ID',
  `file_upload_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '上传文件时间',
  `file_upload_key` varchar(255) DEFAULT NULL COMMENT '七牛云Key',
  `delete_status` int(11) DEFAULT '1' COMMENT '删除状态(1:未删除，0:已删除)',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资料存放目录信息';

CREATE TABLE `file_info` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` char(32) DEFAULT NULL COMMENT '项目id',
  `attachment_id` varchar(32) DEFAULT NULL COMMENT '附件id',
  `file_name` varchar(100) DEFAULT NULL COMMENT '文件名',
  `file_folder_id` char(32) DEFAULT NULL COMMENT '文件目录ID',
  `file_class` varchar(100) DEFAULT NULL COMMENT '文件分类',
  `file_received_date` datetime DEFAULT NULL COMMENT '接收时间',
  `file_source` varchar(20) DEFAULT NULL COMMENT '文件来源',
  `file_status` tinyint(1) DEFAULT '0' COMMENT '0 未分发 1 已分发任务 2 任务已生成报告',
  `file_upload_user_id` char(32) DEFAULT NULL COMMENT '上传文件用户ID',
  `file_upload_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '上传文件时间',
  `delete_status` int(11) DEFAULT '1' COMMENT '删除状态(1:未删除，0:已删除)',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资料存放目录信息';


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


CREATE TABLE `patientinfo_basic` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `patient_name` varchar(32) DEFAULT NULL COMMENT '患者姓名',
  `patient_name_abbreviations` varchar(32) DEFAULT NULL COMMENT '患者姓名缩写',
  `patient_birth` date DEFAULT NULL COMMENT '患者出生日期',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_age_unit` int(11) DEFAULT NULL COMMENT '患者年龄单位',
  `age_group` int(11) DEFAULT NULL COMMENT '年龄层',
  `patient_weight` int(11) DEFAULT NULL COMMENT '患者体重',
  `patient_height` int(11) DEFAULT NULL COMMENT '患者身高',
  `patient_sex` int(11) DEFAULT NULL COMMENT '患者性别',
  `last_menstrual_period` date DEFAULT NULL COMMENT '末次月经日期',
  `patient_national` int(11) DEFAULT NULL COMMENT '患者民族',
  `patient_phone` varchar(11) DEFAULT NULL COMMENT '患者电话',
  `hospital_name` varchar(32) DEFAULT NULL COMMENT '医院名称',
  `outpatient_service_no` varchar(32) DEFAULT NULL COMMENT '门诊号',
  `hospital_no` varchar(32) DEFAULT NULL COMMENT '住院号',
  `patient_no` varchar(32) DEFAULT NULL COMMENT '受试者编号',
  `privacy_confidential` int(11) DEFAULT NULL COMMENT '隐私机密',
  `relevant_important_info` varchar(32) DEFAULT NULL COMMENT '相关重要信息(数字多选以逗号隔开)',
  `allergy_remark` varchar(255) DEFAULT NULL COMMENT '过敏史备注',
  `other_remark` varchar(255) DEFAULT NULL COMMENT '其他史备注',
  `past_adverse_reactions` int(11) DEFAULT NULL COMMENT '既往药品不良反应/事件(1:有，2:无，3:不详)',
  `family_adverse_reactions` int(11) DEFAULT NULL COMMENT '家族药品不良反应/事件(1:有，2:无，3:不详)',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='患者信息-患者信息';


CREATE TABLE `basicinfo_report_attributes` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `report_first_received_date` datetime DEFAULT NULL COMMENT '报告首次获知时间',
  `pv_received_date` datetime DEFAULT NULL COMMENT 'pv获知时间',
  `report_sources` int(11) DEFAULT NULL COMMENT '企业信息来源',
  `report_type` int(11) DEFAULT NULL COMMENT '企业报告类型',
  `report_original_data` int(11) DEFAULT NULL COMMENT '是否有原始资料(1:有，2:无)',
  `report_susar` int(11) DEFAULT NULL COMMENT '快速报告SUSAR',
  `last_report_drug_regulatory_time` datetime DEFAULT NULL COMMENT '最晚上报药监时间',
  `report_recent_date` datetime DEFAULT NULL COMMENT '报告最近更新时间',
  `delayed_report_cause` varchar(128) DEFAULT NULL COMMENT '迟报原因',
  `report_first_reporter` varchar(32) DEFAULT NULL COMMENT '企业首位获悉人',
  `report_first_reporter_phone` int(11) DEFAULT NULL COMMENT '企业首位获悉人联系方式',
  `report_came_other_companies` varchar(32) DEFAULT NULL COMMENT '报告来自其他公司',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基本信息-报告属性';





PSUR 
6.药品不良反应报告信息 
6.1药品个例不良反应
表一：个例药品不良反应病例列表
药物名 
  序号       报告编号               药品批号                      不良反应名称
        sys_report.report_no    drug.drug_production_batch 

patientinfo_parents_previous_medical_history 患者信息-父母相关既往用药史  用药开始日期 用药结束日期

drug_adverse_reactions  drug_id adverse_name 不良反应名称 

首次/随访报告  病例来源 来自于报告

根据活性成分->找对应的药物 同时获取活性成分的对应开始和截止时间的有效报告

sys_report
  `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',
    `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',

drug
  `drug_production_batch` varchar(50) DEFAULT NULL COMMENT '生产批号',
    `drug_dosage` varchar(500) DEFAULT '' COMMENT '用法用量',

adverse_events
  `adverse_event_name` varchar(32) DEFAULT NULL COMMENT '不良事件名称',    
    `event_start_date` datetime DEFAULT NULL COMMENT '事件开始日期',
      `event_end_date` datetime DEFAULT NULL COMMENT '事件结束日期',
        `events_turn` int(11) DEFAULT NULL COMMENT '事件转归情况',

patientinfo_basic
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
    `patient_sex` int(11) DEFAULT NULL COMMENT '患者性别',

patientinfo_previous_medical_history
  `medication_start_time` varchar(32) DEFAULT NULL COMMENT '用药开始日期',
    `medication_end_time` varchar(32) DEFAULT NULL COMMENT '用药结束日期',

basicinfo_report_attributes   
  `report_sources` int(11) DEFAULT NULL COMMENT '企业信息来源',




  个例药品不良反应汇总表（按SOC/PT统计）


  