/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50150
Source Host           : localhost:3306
Source Database       : iphone

Target Server Type    : MYSQL
Target Server Version : 50150
File Encoding         : 65001

Date: 2017-07-29 15:44:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `user_id` char(50) NOT NULL DEFAULT '' COMMENT '用户ID',
  `acc_id` char(50) DEFAULT NULL COMMENT '帐户ID',
  `acc_status` char(1) DEFAULT NULL COMMENT '帐户状态，0=停用，1=起用',
  `acc_balance` decimal(18,2) DEFAULT NULL COMMENT '账户余额',
  `acc_activate_date` datetime DEFAULT NULL COMMENT '账户起用日期',
  `acc_due_date` datetime DEFAULT NULL COMMENT '账户有效截止日期',
  `user_level` char(1) DEFAULT NULL COMMENT '用户等级，1,2,3,4,5级后台字段用于维护报价',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='会员帐户表';

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('65624910', null, '1', '1326650.97', '2017-05-12 00:55:35', null, '1');

-- ----------------------------
-- Table structure for `b_xtxg_sjzd`
-- ----------------------------
DROP TABLE IF EXISTS `b_xtxg_sjzd`;
CREATE TABLE `b_xtxg_sjzd` (
  `JLBH` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `ZDMC` varchar(256) DEFAULT NULL COMMENT '字典名称',
  `SJZ` varchar(255) DEFAULT NULL COMMENT '实际值',
  `FZBH` varchar(32) DEFAULT NULL COMMENT '分组编号',
  `XSSX` bigint(20) DEFAULT NULL COMMENT '显示顺序',
  `BZ` varchar(200) DEFAULT NULL COMMENT '备注',
  `CJSJ` datetime NOT NULL COMMENT '创建时间',
  `CJR` bigint(20) DEFAULT NULL COMMENT '创建人',
  `GXSJ` datetime NOT NULL COMMENT '修改时间',
  `GXR` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ZT` bigint(20) DEFAULT '1' COMMENT '0:逻辑删除;1:正常',
  `KZZD1` varchar(32) DEFAULT NULL COMMENT '扩展字段1',
  `KZZD2` varchar(32) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`JLBH`)
) ENGINE=InnoDB AUTO_INCREMENT=611195 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of b_xtxg_sjzd
-- ----------------------------
INSERT INTO `b_xtxg_sjzd` VALUES ('10301', '工作组', '3', 'JGLX', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10310', '业务小组', '20', 'ZZBQ', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10311', '开发小组', '21', 'ZZBQ', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10434', '京', '京', 'SFJC', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10435', '津', '津', 'SFJC', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10436', '沪', '沪', 'SFJC', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10437', '渝', '渝', 'SFJC', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10438', '辽', '辽', 'SFJC', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10439', '吉', '吉', 'SFJC', '6', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10440', '黑', '黑', 'SFJC', '7', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10441', '新', '新', 'SFJC', '8', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10442', '甘', '甘', 'SFJC', '9', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10443', '青', '青', 'SFJC', '10', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10444', '宁', '宁', 'SFJC', '11', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10445', '蒙', '蒙', 'SFJC', '12', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10446', '陕', '陕', 'SFJC', '13', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10447', '晋', '晋', 'SFJC', '14', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10448', '冀', '冀', 'SFJC', '15', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10449', '鲁', '鲁', 'SFJC', '16', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10450', '豫', '豫', 'SFJC', '17', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10451', '苏', '苏', 'SFJC', '18', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10452', '浙', '浙', 'SFJC', '19', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10453', '皖', '皖', 'SFJC', '20', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10454', '湘', '湘', 'SFJC', '21', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10455', '赣', '赣', 'SFJC', '22', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10456', '鄂', '鄂', 'SFJC', '23', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10457', '川', '川', 'SFJC', '24', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10458', '藏', '藏', 'SFJC', '25', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10459', '云', '云', 'SFJC', '26', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10460', '贵', '贵', 'SFJC', '27', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10461', '桂', '桂', 'SFJC', '28', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10462', '闽', '闽', 'SFJC', '29', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10463', '粤', '粤', 'SFJC', '30', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10464', '琼', '琼', 'SFJC', '31', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10465', '台', '台', 'SFJC', '32', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10466', '军', '军', 'SFJC', '33', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10467', '空', '空', 'SFJC', '34', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10468', '海', '海', 'SFJC', '35', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10469', '北', '北', 'SFJC', '36', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10470', '沈', '沈', 'SFJC', '37', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10471', '兰', '兰', 'SFJC', '38', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10472', '济', '济', 'SFJC', '39', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10473', '南', '南', 'SFJC', '40', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10474', '广', '广', 'SFJC', '41', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10475', '成', '成', 'SFJC', '42', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('10476', 'WJ', 'WJ', 'SFJC', '43', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20000', '公司', '1', 'JGLX', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20001', '部门', '2', 'JGLX', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20051', '行业大类', '0', 'HYFL', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20052', '行业中类', '1', 'HYFL', '2', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20053', '行业小类', '2', 'HYFL', '3', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20059', '居民身份证', '1', 'ZJLX', '1', '身份证', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20060', '港澳台居民居民身份证', '2', 'ZJLX', '2', '港澳通行证', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20061', '军官证', '3', 'ZJLX', '3', '军官证', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20062', '护照', '4', 'ZJLX', '4', '护照', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20063', '驾驶证', '5', 'ZJLX', '5', '驾驶证', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('20064', '其他', '6', 'ZJLX', '6', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40051', '博士及以上', '1', 'Career', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40052', '硕士', '2', 'Career', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40053', '大学', '3', 'Career', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40054', '中专', '4', 'Career', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40055', '高中', '5', 'Career', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40056', '初中及以下', '6', 'Career', '6', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40301', '增值税专用发票', '1', 'Invoice_Type', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40302', '增值税普通发票\r\n', '3', 'Invoice_Type', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40303', '普通发票', '2', 'Invoice_Type', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40401', '已出库', '1', 'Logist_State', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40402', '在途', '2', 'Logist_State\r\n', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40403', '即将送达\r\n', '3', 'Logistics_State\r\nLogist_State', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40404', '已送达\r\n', '4', 'Logist_State', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('40405', '已确认收货\r\n', '5', 'Logistics_State\r\nLogist_State', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50001', '国家邮政局', '1', 'Bank_Name', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50002', '中国工商银行', '2', 'Bank_Name', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50003', '农业银行', '3', 'Bank_Name', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50004', '中国银行', '4', 'Bank_Name', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50005', '中国银行澳门分行', '5', 'Bank_Name', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50006', '中国建设银行', '6', 'Bank_Name', '6', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50007', '建设银行', '7', 'Bank_Name', '7', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50008', '交通银行股份有限公司太平洋双币信用卡中心', '8', 'Bank_Name', '8', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50009', '交通银行', '9', 'Bank_Name', '9', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50010', '中信实业银行信用卡中心', '10', 'Bank_Name', '10', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50011', '中信实业银行', '11', 'Bank_Name', '11', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50012', '中信银行', '12', 'Bank_Name', '12', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50013', '中国光大银行', '13', 'Bank_Name', '13', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50014', '光大银行', '14', 'Bank_Name', '14', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50015', '华夏银行', '15', 'Bank_Name', '15', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50016', '民生银行', '16', 'Bank_Name', '16', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50017', '中国民生银行', '17', 'Bank_Name', '17', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50018', '广东发展银行', '18', 'Bank_Name', '18', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50019', '深圳发展银行', '19', 'Bank_Name', '19', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50020', '招商银行', '20', 'Bank_Name', '20', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50021', '兴业银行', '21', 'Bank_Name', '21', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50022', '上海浦东发展银行', '22', 'Bank_Name', '22', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50023', '恒丰银行', '23', 'Bank_Name', '23', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50024', '厦门市商业银行', '24', 'Bank_Name', '24', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50025', '济南市商业银行', '25', 'Bank_Name', '25', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50026', '淄博市商业银行', '26', 'Bank_Name', '26', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50027', '烟台市商业银行', '27', 'Bank_Name', '27', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50028', '潍坊商业银行', '28', 'Bank_Name', '28', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50029', '临沂市商业银行', '29', 'Bank_Name', '29', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50030', '日照市商业银行', '30', 'Bank_Name', '30', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50031', '渤海银行', '31', 'Bank_Name', '31', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50032', '上海银行', '32', 'Bank_Name', '32', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50033', '上海市农村信用合作社联合社', '33', 'Bank_Name', '33', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50034', '北京银行', '34', 'Bank_Name', '34', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50035', '福州市商业银行', '35', 'Bank_Name', '35', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50036', '长春市商业银行', '36', 'Bank_Name', '36', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50037', '镇江市商业银行', '37', 'Bank_Name', '37', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50038', '宁波市商业银行', '38', 'Bank_Name', '38', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50039', '深圳商业银行', '39', 'Bank_Name', '39', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50040', '深圳市商业银行', '40', 'Bank_Name', '40', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50041', '焦作市商业银行', '41', 'Bank_Name', '41', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50042', '温州商业银行', '42', 'Bank_Name', '42', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50043', '广州市商业银行', '43', 'Bank_Name', '43', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50044', '武汉市商业银行', '44', 'Bank_Name', '44', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50045', '沈阳市商业银行', '45', 'Bank_Name', '45', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50046', '洛阳市商业银行', '46', 'Bank_Name', '46', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50047', '辽阳市商业银行', '47', 'Bank_Name', '47', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50048', '大连商业银行', '48', 'Bank_Name', '48', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50049', '大连市商业银行', '49', 'Bank_Name', '49', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50050', '苏州市商业银行', '50', 'Bank_Name', '50', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50051', '石家庄市商业银行', '51', 'Bank_Name', '51', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50052', '杭州商业银行', '52', 'Bank_Name', '52', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50053', '杭州市商业银行', '53', 'Bank_Name', '53', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50054', '南京市商业银行', '54', 'Bank_Name', '54', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50055', '东莞市商业银行', '55', 'Bank_Name', '55', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50056', '金华市商业银行', '56', 'Bank_Name', '56', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50057', '乌鲁木齐市商业银行', '57', 'Bank_Name', '57', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50058', '绍兴市商业银行', '58', 'Bank_Name', '58', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50059', '绍兴商业银行', '59', 'Bank_Name', '59', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50060', '成都商业银行', '60', 'Bank_Name', '60', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50061', '成都市商业银行', '61', 'Bank_Name', '61', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50062', '抚顺市商业银行', '62', 'Bank_Name', '62', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50063', '宜昌市商业银行', '63', 'Bank_Name', '63', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50064', '天津市商业银行', '64', 'Bank_Name', '64', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50065', '郑州商业银行', '65', 'Bank_Name', '65', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50066', '银川市商业银行', '66', 'Bank_Name', '66', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50067', '珠海市商业银行', '67', 'Bank_Name', '67', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50068', '徽商银行', '68', 'Bank_Name', '68', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50069', '徽商银行合肥分行', '69', 'Bank_Name', '69', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50070', '徽商银行芜湖分行', '70', 'Bank_Name', '70', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50071', '徽商银行马鞍山分行', '71', 'Bank_Name', '71', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50072', '徽商银行淮北分行', '72', 'Bank_Name', '72', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50073', '徽商银行安庆分行', '73', 'Bank_Name', '73', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50074', '重庆市商业银行', '74', 'Bank_Name', '74', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50075', '哈尔滨市商业银行', '75', 'Bank_Name', '75', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50076', '贵阳市商业银行', '76', 'Bank_Name', '76', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50077', '西安市商业银行', '77', 'Bank_Name', '77', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50078', '无锡市商业银行', '78', 'Bank_Name', '78', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50079', '丹东商行', '79', 'Bank_Name', '79', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50080', '兰州市商业银行', '80', 'Bank_Name', '80', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50081', '青岛商行', '81', 'Bank_Name', '81', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50082', '吉林市商业银行', '82', 'Bank_Name', '82', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50083', '南通市商业银行', '83', 'Bank_Name', '83', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50084', '南通商业银行', '84', 'Bank_Name', '84', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50085', '扬州市商业银行', '85', 'Bank_Name', '85', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50086', '九江市商业银行', '86', 'Bank_Name', '86', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50087', '鞍山市商业银行', '87', 'Bank_Name', '87', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50088', '西宁市商业银行', '88', 'Bank_Name', '88', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50089', '台州市商业银行', '89', 'Bank_Name', '89', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50090', '长沙市商业银行', '90', 'Bank_Name', '90', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50091', '泉州市商业银行', '91', 'Bank_Name', '91', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50092', '营口市商业银行', '92', 'Bank_Name', '92', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50093', '昆明商业银行', '93', 'Bank_Name', '93', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50094', '阜新市商业银行', '94', 'Bank_Name', '94', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50095', '常州商业银行', '95', 'Bank_Name', '95', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50096', '淮安市商业银行', '96', 'Bank_Name', '96', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50097', '嘉兴市商业银行', '97', 'Bank_Name', '97', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50098', '廊坊市商业银行', '98', 'Bank_Name', '98', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50099', '泰隆城市信用社', '99', 'Bank_Name', '99', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50100', '呼市商业银行', '100', 'Bank_Name', '100', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50101', '湖州市商业银行', '101', 'Bank_Name', '101', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50102', '南宁市商业银行', '102', 'Bank_Name', '102', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50103', '包头市商业银行', '103', 'Bank_Name', '103', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50104', '连云港市商业银行', '104', 'Bank_Name', '104', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50105', '威海市商业银行', '105', 'Bank_Name', '105', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50106', '攀枝花市商业银行', '106', 'Bank_Name', '106', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50107', '绵阳市商业银行', '107', 'Bank_Name', '107', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50108', '泸州市商业银行', '108', 'Bank_Name', '108', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50109', '大同市商业银行', '109', 'Bank_Name', '109', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50110', '三门峡市城市信用社', '110', 'Bank_Name', '110', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50111', '湛江市商业银行', '111', 'Bank_Name', '111', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50112', '桂林市商业银行', '112', 'Bank_Name', '112', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50113', '大庆市商业银行', '113', 'Bank_Name', '113', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50114', '靖江市长江城市信用社', '114', 'Bank_Name', '114', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50115', '徐州市商业银行', '115', 'Bank_Name', '115', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50116', '柳州市商业银行', '116', 'Bank_Name', '116', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50117', '中外合资.南充市商业银行', '117', 'Bank_Name', '117', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50118', '莱芜市商业银行', '118', 'Bank_Name', '118', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50119', '德阳市商业银行', '119', 'Bank_Name', '119', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50120', '曲靖市商业银行', '120', 'Bank_Name', '120', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50121', '昆山农村信用合作社联合社', '121', 'Bank_Name', '121', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50122', '常熟市农村商业银行', '122', 'Bank_Name', '122', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50123', '常熟农村商业银行', '123', 'Bank_Name', '123', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50124', '深圳农信社', '124', 'Bank_Name', '124', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50125', '深圳市农村信用合作社联合社', '125', 'Bank_Name', '125', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50126', '广州农村信用合作社联合社', '126', 'Bank_Name', '126', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50127', '顺德农信社', '127', 'Bank_Name', '127', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50128', '昆明市农村信用联社', '128', 'Bank_Name', '128', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50129', '湖北农信社', '129', 'Bank_Name', '129', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50130', '徐州市郊农村信用合作联社', '130', 'Bank_Name', '130', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50131', '江阴市农村商业银行', '131', 'Bank_Name', '131', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50132', '江阴农村商业银行', '132', 'Bank_Name', '132', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50133', '重庆市农村信用社联合社', '133', 'Bank_Name', '133', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50134', '山东农村信用联合社', '134', 'Bank_Name', '134', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50135', '东莞农村信用合作社', '135', 'Bank_Name', '135', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50136', '张家港市农村商业银行', '136', 'Bank_Name', '136', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50137', '福建省农村信用社联合社', '137', 'Bank_Name', '137', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50138', '厦门市农村信用合作社', '138', 'Bank_Name', '138', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50139', '北京农联社', '139', 'Bank_Name', '139', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50140', '天津市农村信用社', '140', 'Bank_Name', '140', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50141', '鄞州农村合作银行', '141', 'Bank_Name', '141', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50142', '宁波鄞州农村合作银行', '142', 'Bank_Name', '142', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50143', '佛山市三水区农村信用合作社', '143', 'Bank_Name', '143', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50144', '成都农信社', '144', 'Bank_Name', '144', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50145', '沧州农信社', '145', 'Bank_Name', '145', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50146', '江苏农信', '146', 'Bank_Name', '146', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50147', '江苏农信社', '147', 'Bank_Name', '147', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50148', '江门市新会农信社', '148', 'Bank_Name', '148', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50149', '高要市农村信用联社', '149', 'Bank_Name', '149', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50150', '高要市农村信用合作社联合社', '150', 'Bank_Name', '150', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50151', '佛山市禅城区农村信用联社', '151', 'Bank_Name', '151', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50152', '吴江农村商业银行', '152', 'Bank_Name', '152', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50153', '浙江省农村信用社联合社', '153', 'Bank_Name', '153', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50154', '江苏东吴农村商业银行', '154', 'Bank_Name', '154', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50155', '珠海农村信用合作社联社', '155', 'Bank_Name', '155', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50156', '中山市农村信用合作社', '156', 'Bank_Name', '156', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50157', '太仓农村商业银行', '157', 'Bank_Name', '157', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50158', '尧都区农村信用合作社联社', '158', 'Bank_Name', '158', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50159', '武进农村商业银行', '159', 'Bank_Name', '159', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50160', '贵州省农村信用社联合社', '160', 'Bank_Name', '160', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50161', '江苏锡州农村商业银行', '161', 'Bank_Name', '161', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50162', '湖南省农村信用社联合社', '162', 'Bank_Name', '162', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50163', '江西省农村信用社联合社', '163', 'Bank_Name', '163', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50164', '陕西省农村信用社联合社', '164', 'Bank_Name', '164', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50165', '东亚银行有限公司', '165', 'Bank_Name', '165', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50166', '花旗银行有限公司', '166', 'Bank_Name', '166', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50167', '大新银行有限公司', '167', 'Bank_Name', '167', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50168', '恒生银行有限公司', '168', 'Bank_Name', '168', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50169', '永亨银行', '169', 'Bank_Name', '169', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50170', '上海商业银行', '170', 'Bank_Name', '170', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50171', '永隆银行有限公司', '171', 'Bank_Name', '171', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50172', '香港上海汇丰银行有限公司', '172', 'Bank_Name', '172', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50173', '中信嘉华银行有限公司', '173', 'Bank_Name', '173', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50174', '廖创兴银行有限公司', '174', 'Bank_Name', '174', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50175', '大丰银行有限公司', '175', 'Bank_Name', '175', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50176', '澳门永亨银行股份有限公司', '176', 'Bank_Name', '176', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50177', '澳门国际银行', '177', 'Bank_Name', '177', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50178', '大西洋银行股份有限公司', '178', 'Bank_Name', '178', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50179', '南洋商业银行', '179', 'Bank_Name', '179', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50501', '借记卡', '1', 'Card_Type', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50502', '准贷记卡', '2', 'Card_Type', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50503', '贷记卡', '3', 'Card_Type', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50504', '信用卡', '4', 'Card_Type', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('50505', '储蓄卡', '5', 'Card_Type', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53001', '计算机/互联网/通信/电子', '1', 'Job_Type', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53002', '会计/金融/银行/保险', '2', 'Job_Type', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53003', '贸易/消费/制造/营运', '3', 'Job_Type', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53004', '制药/医疗', '4', 'Job_Type', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53005', '广告/媒体', '5', 'Job_Type', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53006', '印刷/包装/造纸', '6', 'Job_Type', '6', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53007', '专业服务/教育/培训', '7', 'Job_Type', '7', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53008', '服务业', '8', 'Job_Type', '8', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53009', '物流/运输 ', '9', 'Job_Type', '9', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53010', '能源/原材料', '10', 'Job_Type', '10', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('53011', '政府/非赢利机构/其他', '11', 'Job_Type', '11', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60001', '是', '1', 'logical', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60002', '否', '0', 'logical', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60101', '冻结', '1', 'lock_state', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60102', '未冻结', '0', 'lock_state', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60201', '', '1', 'state', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60202', '无效', '0', 'state', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60301', '异步失败', '0', 'Ajax_Result', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60302', '异步成功', '1', 'Ajax_Result', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60303', '异步出错', '9', 'Ajax_Result', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60304', '白金卡', '1', 'Card_Subtype', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60305', '金卡', '2', 'Card_Subtype', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60306', '普卡', '3', 'Card_Subtype', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60313', '未激活', '1', 'User_State', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60314', '有效会员', '2', 'User_State', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60315', '已注销', '3', 'User_State', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60320', '未验证', '0', 'Card_State', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60321', '已绑定', '1', 'Card_State', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60322', '暂停', '2', 'Card_State', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60323', '解除绑定', '3', 'Card_State', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60324', '验证失败', '4', 'Card_State', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60328', '未审核', '0', 'Present_Pan_State', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('60329', '审核中', '1', 'Present_Pan_State', '2', '', '2012-03-01 00:00:00', '0', '2012-05-10 16:48:58', '1', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('60330', '审核通过', '2', 'Present_Pan_State', '3', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('60331', '审核未通过', '3', 'Present_Pan_State', '4', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('60375', '电子券密码模板', '1', 'File_Template_Tiny_Type', '1', '', '2012-03-01 00:00:00', '0', '2012-04-23 15:18:46', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60376', '商品生成页面模板', '50', 'File_Template_Tiny_Type', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60377', '电子券生成页面模板', '51', 'File_Template_Tiny_Type', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60378', '活动生成页面模板', '52', 'File_Template_Tiny_Type', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60379', '商户生成页面模板', '53', 'File_Template_Tiny_Type', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60410', '客户', '1', 'Promoter', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60411', '商户', '2', 'Promoter', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60412', '平台', '3', 'Promoter', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60500', '否', '0', 'TelChange', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60501', '移动->联通', '1', 'TelChange', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60502', '移动->电信', '2', 'TelChange', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60503', '联通->移动', '3', 'TelChange', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60504', '联通->电信', '4', 'TelChange', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60505', '电信->移动', '5', 'TelChange', '6', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60506', '电信->联通', '6', 'TelChange', '7', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60507', '收单机构1', '60507', 'ACQUIRER', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60508', '收单机构2', '60508', 'ACQUIRER', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60509', '收单机构3', '60509', 'ACQUIRER', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60510', '活跃', '1', 'posstate', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60511', '不活跃', '0', 'posstate', '0', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60512', '中国商户', '1', 'merchantLevel', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60513', '区域商户', '2', 'merchantLevel', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60514', '省（直辖市）商户', '3', 'merchantLevel', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60515', '城市（直辖市区）商户', '4', 'merchantLevel', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60516', '门店商户', '5', 'merchantLevel', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60517', '实体店', '1', 'Merchant_Type', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60518', '网店', '2', 'Merchant_Type', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('60519', '非经营性门店', '3', 'Merchant_Type', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61201', '五万以下', '1', 'Income', '1', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61202', '5-10万人民币', '2', 'Income', '2', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61203', '10-15万人民币', '3', 'Income', '3', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61204', '15-30万人民币', '4', 'Income', '4', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61205', '30万人民币以上', '5', 'Income', '5', null, '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61234', '注册', '1', 'Sms_Template_Tiny_Type', '1', '', '2012-03-29 13:50:35', '1', '2012-03-29 14:06:55', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61235', '密码找回', '2', 'Sms_Template_Tiny_Type', '2', '', '2012-03-29 13:52:31', '1', '2012-03-29 14:07:02', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61236', '支付', '3', 'Sms_Template_Tiny_Type', '3', '', '2012-03-29 13:59:10', '1', '2012-03-29 14:07:11', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61237', '电子券密码模板', '4', 'Sms_Template_Tiny_Type', '4', '', '2012-03-29 14:01:25', '1', '2012-04-23 15:19:28', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61239', '注册', '1', 'Mail_Template_Tiny_Type', '1', '', '2012-03-29 14:06:17', '1', '2012-03-29 14:06:17', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61240', '密码找回', '2', 'Mail_Template_Tiny_Type', '2', '', '2012-03-29 14:06:34', '1', '2012-03-29 14:06:34', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61241', '支付', '3', 'Mail_Template_Tiny_Type', '3', '', '2012-03-29 14:07:41', '1', '2012-03-29 14:07:41', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61279', '短信激活时间', '15', 'SYSTEM_PARAM', null, '', '2012-04-24 13:05:52', '1', '2012-04-24 13:05:52', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61280', '邮件激活时间', '2', 'SYSTEM_PARAM', null, '', '2012-04-24 13:06:42', '1', '2012-04-24 13:07:12', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61309', '短信注册', '501000', 'SMS_RESP', '23', null, '2012-09-12 10:29:51', '1', '2012-09-12 10:29:55', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('61510', 'CPS商户', '4', 'Merchant_Type', '4', null, '2012-07-17 14:13:40', '0', '2012-07-17 14:13:40', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610417', '网站', '1', 'Log_Channel', '1', '网站渠道', '2012-09-04 10:26:50', '1', '2012-09-04 10:26:50', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610418', '短信', '2', 'Log_Channel', '2', '短信渠道', '2012-09-04 10:27:08', '1', '2012-09-04 10:27:08', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610419', '其他', '3', 'Log_Channel', '3', '其他渠道', '2012-09-04 10:27:29', '1', '2012-09-04 10:27:29', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610429', '二维码订单服务内容', '5', 'Sms_Template_Tiny_Type', '5', '', '2012-09-24 14:02:59', '27', '2012-09-24 14:02:59', '27', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610430', '二维码订单内容', '6', 'Sms_Template_Tiny_Type', '6', '', '2012-09-24 14:03:22', '27', '2012-09-24 14:03:22', '27', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610500', '未生效', '1', 'tCodeState', '1', '', '2012-09-24 15:53:42', '0', '2012-09-24 15:53:44', '0', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('610501', '已生效', '2', 'tCodeState', '2', null, '2012-09-24 15:57:21', '0', '2012-09-24 15:57:32', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610502', '已使用', '3', 'tCodeState', '3', null, '2012-09-24 15:57:18', '0', '2012-09-24 15:57:30', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610504', '已失效', '4', 'tCodeState', '4', null, '2012-09-24 15:57:16', '0', '2012-09-24 15:57:28', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610505', '已删除', '5', 'tCodeState', '5', null, '2012-09-24 15:57:13', '0', '2012-09-24 15:57:25', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610506', '二维码订单流水号', '1047903874', 'Flow_No', '1', '', '2012-09-24 16:58:30', '27', '2012-09-24 16:58:30', '27', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610901', '纯积分支付', '1', 'pay_type', '1', null, '2012-09-26 15:49:39', '0', '2012-09-26 15:49:53', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('610902', '积分现金混合支付', '2', 'pay_type', '2', null, '2012-09-26 15:49:37', '0', '2012-09-26 15:49:51', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611033', '中国奖励Gopanda后台', 'ChinaRewardsGopanda', 'ZYBQ', '1', '', '2014-05-20 18:39:47', '47', '2014-05-21 10:29:27', '48', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611034', '抽奖送积分', '7', 'Sms_Template_Tiny_Type', '7', '', '2014-07-09 18:14:54', '1', '2014-07-09 18:15:14', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611035', '抽奖送现金红包', '8', 'Sms_Template_Tiny_Type', '8', '', '2014-09-01 17:40:32', '42', '2014-09-01 17:40:32', '42', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611036', '已婚', '1', 'Marriage', null, '', '2015-06-11 09:29:38', '1', '2015-06-11 09:29:38', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611037', '未婚', '2', 'Marriage', null, '', '2015-06-11 09:30:33', '1', '2015-06-11 09:30:33', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611038', '未知', '3', 'Marriage', null, '', '2015-06-11 09:30:55', '1', '2015-06-11 09:30:55', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611039', '已育', '1', 'give', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611040', '未育', '2', 'give', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611041', '未知', '3', 'give', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611042', '男', '1', 'SEX', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611043', '女', '0', 'SEX', '2', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611045', '有房', '1', 'house', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611046', '有车', '1', 'car', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611047', '有手机号', '1', 'tel', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611048', '有邮件', '1', 'email', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611049', '非欺诈用户', '1', 'flag', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611050', '无限卡', '1', 'card', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611051', '钻石卡', '2', 'card', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611052', '白金卡', '3', 'card', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611053', '金卡', '4', 'card', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611054', '普卡', '5', 'card', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611055', '其他', '6', 'card', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611056', '航空联名卡', '1', 'cardType', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611057', '女性卡', '2', 'cardType', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611058', '汽车卡', '3', 'cardType', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611059', '其他 ', '4', 'cardType', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611060', '2万元以下 ', '0-20000', 'annual', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:05:42', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611061', '2万元~5万元 ', '20000-50000', 'annual', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:06:00', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611062', '5万元~20万元 ', '50000-200000', 'annual', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:06:32', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611063', '20万元以上 ', '200000-#', 'annual', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:06:49', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611064', '2万元以下', '0-20000', 'averageY', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:08:43', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611065', '2万元~5万元', '20000-50000', 'averageY', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:08:59', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611066', '5万元~20万元', '50000-200000', 'averageY', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:09:18', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611067', '20万元以上', '200000-#', 'averageY', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:09:31', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611068', '2万元以下', '0-20000', 'averageM', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:07:18', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611069', '2万元~4万元', '20000-40000', 'averageM', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:07:38', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611070', '4万元~10万元', '40000-100000', 'averageM', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:08:02', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611071', '10万元以上', '100000-#', 'averageM', '1', '', '2012-03-01 00:00:00', '0', '2015-07-06 18:08:18', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611072', '有', '1', 'country', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611073', '刷卡返现', '1', 'interest', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611074', '折扣优惠', '2', 'interest', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611075', '对活动有兴趣', '1', 'activity', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611076', '对活动无反馈', '2', 'activity', '1', '', '2012-03-01 00:00:00', '0', '2012-03-01 00:00:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611083', '三峡银行', '05426900', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611084', '恒丰银行', '03114560', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611085', '民泰银行', '05253450', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611086', '威海银行', '64814650', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611087', '贵州农信', '14367000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611088', '温州银行', '05063330', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611089', '贵州银行', '14367000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611090', '青海农信', '14498500', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611091', '邢台银行', '05541310', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611092', '南京银行', '04240001', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611093', '湖南农信', '14385500', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611094', '桂林银行', '04916170', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611095', '大连银行', '04202220', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611096', '青海银行', '64588510', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611097', '德阳银行', '04986580', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611098', '衡水银行', '40114800', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611099', '昆仑银行', '05478820', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611100', '内蒙农信', '14511900', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611101', '广西农信', '14436100', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611102', '东莞银行', '04256020', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611103', '九江银行', '04544240', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611104', '北京银行', '64031000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611105', '成都银行', '64296510', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611106', '烟台银行', '03134560', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611107', '浙江农信', '14293300', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611108', '哈尔滨银行', '04422610', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611109', '山东农信', '14144500', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611110', '新疆农信', '14448800', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611111', '顺德农商', '14085883', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611112', '常熟农商', '14030001', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611113', '无锡农商', '04453020', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611114', '盛京银行', '04172210', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611115', '兰州银行', '04478210', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611116', '内蒙古银行', '14511900', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611117', '四川农信', '14526500', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611118', '富滇银行', '64667310', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611119', '渣打银行', '03220000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611120', '重庆农商', '14136530', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611121', '上饶银行', '65264330', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611122', '莱商银行', '04974634', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611123', '星展银行', '25080344', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611124', '沧州银行', '04761430', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611125', '甘肃银行', '14538200', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611126', '广州银行', '64135810', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611127', '绍兴银行', '04283370', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611128', '成都农商', '14226510', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611129', '齐鲁银行', '64094510', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611130', '中银通', '25180344', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611131', '河北银行', '64221210', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611132', '湖北银行', '14105200', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611133', '潍坊银行', '03134580', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611134', '北京农商', '14181000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611135', '甘肃农信', '14538200', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611136', '陕西农信', '14427900', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611137', '郑州银行', '04354910', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611138', '抚顺银行', '04302240', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611139', '民生银行', '03050000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611140', '东亚银行', '03200000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611141', '龙江银行', '05332740', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611142', '吉林银行', '04512420', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611143', '江阴农商', '14123020', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611144', '东莞银行', '04256020', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611145', '宁波银行', '64083320', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611146', '广州农商', '14055810', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611147', '兴业银行', '03090000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611148', '天津银行', '04341101', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611149', '徽商银行', '64403600', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611150', '杭州银行', '64233310', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611151', '天津农商', '65191100', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611152', '锦州银行', '04392270', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611153', '乌鲁木齐银行', '04270001', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611154', '日照银行', '64554770', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611155', '临商银行', '64314730', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611156', '云南农商', '65097300', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611157', '邮储银行', '01000000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611158', '福建农信', '14173900', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611159', '马鞍山农', '04403650', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611160', '赣州银行', '64634280', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611161', '宁夏银行', '04360010', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611162', '苏州银行', '04213050', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611163', '台州银行', '04593450', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611164', '江苏银行', '05083000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611165', '安徽农信', '14473600', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611166', '石嘴山银行', '05438720', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611167', '长沙银行', '04615510', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611168', '尧都农商', '14341770', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611169', '浦发银行', '03100000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611170', '渤海银行', '03170000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611171', '重庆银行', '64416900', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611172', '浙商银行', '03160000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611173', '齐商银行', '64384530', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611174', '珠海华润', '04375850', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611175', '华夏银行', '63040000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611176', '丹东银行', '04462260', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611177', '南昌银行', '04484210', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611178', '江苏农信', '14243000', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611179', '德州银行', '65154680', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611180', '包商银行', '04791920', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611181', '上海农商', '65012900', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611182', '稠州商行', '05303380', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611183', '承德银行', '65131410', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611184', '花旗银行', '25030344', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611185', '泰隆银行', '64733450', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611186', '贵阳银行', '64437010', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611187', '青岛银行', '04504520', 'bank', '1', null, '2015-06-26 15:52:00', '0', '2015-06-26 15:52:00', '0', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611188', '类别一', '0', 'messagepush', null, '', '2015-07-09 15:11:37', '1', '2015-07-09 15:42:12', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611189', '类别二', '1', 'messagepush', null, '', '2015-07-09 15:11:56', '1', '2015-07-09 15:42:19', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzd` VALUES ('611190', '存款积分奖励', '1105', 'Integral_Type_Mapping', '1', '', '2016-12-16 11:02:16', '0', '2016-12-16 11:02:20', '0', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('611191', '理财积分奖励', '1107', 'Integral_Type_Mapping', '2', '', '2016-12-16 11:02:16', '0', '2016-12-16 11:02:20', '0', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('611192', '贷款积分奖励', '1111', 'Integral_Type_Mapping', '3', '', '2016-12-16 11:02:16', '0', '2016-12-16 11:02:20', '0', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('611193', '中间业务积分奖励', '1113', 'Integral_Type_Mapping', '4', '', '2016-12-16 11:02:16', '0', '2016-12-16 11:02:20', '0', '1', '', '');
INSERT INTO `b_xtxg_sjzd` VALUES ('611194', '开户积分奖励', '1117', 'Integral_Type_Mapping', '5', '', '2016-12-16 11:02:16', '0', '2016-12-16 11:02:20', '0', '1', '', '');

-- ----------------------------
-- Table structure for `b_xtxg_sjzdfz`
-- ----------------------------
DROP TABLE IF EXISTS `b_xtxg_sjzdfz`;
CREATE TABLE `b_xtxg_sjzdfz` (
  `FZBH` varchar(32) NOT NULL COMMENT '分组编号',
  `FZMC` varchar(128) DEFAULT NULL COMMENT '分组名称',
  `BZ` varchar(200) DEFAULT NULL COMMENT '备注',
  `CJSJ` datetime NOT NULL COMMENT '创建时间',
  `CJR` bigint(20) DEFAULT NULL COMMENT '创建人',
  `GXSJ` datetime NOT NULL COMMENT '修改时间',
  `GXR` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ZT` bigint(20) DEFAULT '1' COMMENT '0:逻辑删除;1:正常',
  `KZZD1` varchar(32) DEFAULT NULL COMMENT '扩展字段1',
  `KZZD2` varchar(32) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`FZBH`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of b_xtxg_sjzdfz
-- ----------------------------
INSERT INTO `b_xtxg_sjzdfz` VALUES ('ACQUIRER', '收单机构类型', null, '2012-12-12 12:12:12', '531850', '2012-12-12 12:12:12', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Activication_Type', '激活状态', null, '2012-03-17 13:24:54', null, '2012-03-17 13:24:55', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('activity', '对活动有兴趣', null, '2015-06-11 10:11:17', null, '2015-06-11 10:11:19', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Activity_State', '活动状态', null, '2012-03-17 13:25:10', null, '2012-03-17 13:25:11', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Activity_Type', '活动类型', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Ajax_Result', 'ajax查询', null, '2012-03-17 13:24:43', null, '2012-03-17 13:24:47', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Announce_State', '公告状态', null, '2012-03-17 13:24:48', null, '2012-03-17 13:24:49', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('annual', '税后年薪', null, '2015-06-11 10:09:16', null, '2015-06-11 10:09:18', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('averageM', '月均消费', null, '2015-06-11 10:09:51', null, '2015-06-11 10:09:53', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('averageY', '年均消费', null, '2015-06-11 10:09:33', null, '2015-06-11 10:09:35', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('balanceType', '商户结算周期', null, '2012-12-12 12:12:12', '531850', '2012-12-12 12:12:12', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('bank', '指定银行目标受众', null, '2015-06-11 10:11:44', null, '2015-06-11 10:11:46', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Bank_Name', '银行名称', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Bill_Page', '广告显示页面', null, '2012-06-30 15:31:56', null, '2012-06-30 15:32:11', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Bill_Post', '广告位置', null, '2012-06-30 15:32:40', null, '2012-06-30 15:32:43', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('car', '是否有车', null, '2015-06-11 10:07:13', null, '2015-06-11 10:07:15', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('card', '卡种', null, '2015-06-11 10:08:35', null, '2015-06-11 10:08:37', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('cardType', '持有卡类型', null, '2015-06-11 10:08:57', null, '2015-06-11 10:08:59', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Card_State', '卡状态', null, '2012-03-17 13:24:56', null, '2012-03-17 13:24:57', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Card_Subtype', '卡子类型', null, '2012-03-17 13:24:46', null, '2012-03-17 13:24:47', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Card_Type', '银行卡类型', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Career', '学历', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Car_Brand', '汽车品牌', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Car_Color', '颜色', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Car_Level', '汽车类型', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Comment_State', '评价状态', null, '2012-03-20 11:40:13', null, '2012-03-20 11:40:17', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('COMPLAINTS_PROCESS_RESULT', '投诉处理结果', null, '2012-11-11 00:00:00', null, '2012-03-10 00:00:00', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('country', '出境经历', null, '2015-06-11 10:10:32', null, '2015-06-11 10:10:34', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('CouponUseState', '电子券使用状态', null, '2012-03-22 14:24:03', null, '2012-03-22 14:24:08', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('coupon_generator_merchant_state', '密码生成方式', null, '2012-03-29 00:00:00', '1', '2012-03-29 00:00:00', '1', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Coupon_State', '电子券状态', null, '2012-03-17 13:25:08', null, '2012-03-17 13:25:09', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Cut_Use', '解绑原因', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('email', '是否有邮箱', null, '2015-06-11 10:07:53', null, '2015-06-11 10:07:55', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('FHZT', '发货状态', null, '2012-03-20 11:34:01', null, '2012-03-20 11:34:06', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('File_Template_Tiny_Type', '文件模板子类型', null, '2012-03-17 13:25:16', null, '2012-03-17 13:25:17', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('flag', '非欺诈用户', null, '2015-06-11 10:08:16', null, '2015-06-11 10:08:18', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Flow_No', '流水号类型', null, '2012-09-24 16:44:37', null, '2012-09-24 16:44:41', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('give', '生育状况', null, '2015-06-11 09:32:46', null, '2015-06-11 09:32:49', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Goods_State', '商品状态', null, '2012-03-17 13:25:06', null, '2012-03-17 13:25:07', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('house', '是否有房', null, '2015-06-11 10:06:55', null, '2015-06-11 10:06:57', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('HYFL', '行业分类', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Income', '年收入', null, '2012-12-12 12:12:12', null, '2012-12-12 12:12:12', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Indent_Form_State', '订单状态', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('INNER_TRANSACTION_RESULT', '内部交易处理结果', null, '2012-03-10 12:12:12', null, '2012-12-12 00:00:00', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('INNER_TRANSACTION_TYPE', '内部交易类型', null, '2012-03-10 00:00:00', '531850', '2012-03-12 00:00:00', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Integral_Type_Mapping', '银行积分调整类型映射', null, '2016-12-16 11:01:13', null, '2016-12-16 11:01:15', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('interest', '感兴趣兴趣消费类型', null, '2015-06-11 10:10:56', null, '2015-06-11 10:10:57', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Interest_User', '兴趣爱好', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('INTERNAL_MESSAGE_RECEIVE_TYPE', '站内信接收类型', null, '2012-11-11 11:11:11', null, '2012-11-11 11:11:11', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('INTERNAL_MESSAGE_SEND_TYPE', '站内信发送类型', null, '2012-11-11 11:11:11', null, '2012-11-11 11:11:11', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Internal_Message_State', '站内信状态', null, '2012-03-17 13:25:02', null, '2012-03-17 13:25:03', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Invoice_Type', '发票类型', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('JGLX', '机构类型', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Job_Type', '行业类别', null, '2012-03-10 16:16:23', '531850', '2012-03-10 16:16:27', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('JXFXS', '结算方式', null, '2012-02-02 02:02:02', '531850', '2012-12-12 12:12:12', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Live_State', '居住状态', null, '2012-03-17 13:24:52', null, '2012-03-17 13:24:53', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('lock_state', '锁定状态', null, '2012-03-10 00:00:00', '531850', '2012-03-10 00:00:00', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('logical', '逻辑是否', null, '2012-03-10 12:12:12', '531850', '2012-03-10 00:00:00', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Logist_State', '物流状态', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Log_Channel', '日志渠道', '', '2012-09-03 17:56:11', null, '2012-09-03 17:56:14', null, '1', '', '');
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Log_Type', '日志类型', '', '2012-09-03 17:55:11', null, '2012-09-03 17:55:20', null, '1', '', '');
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Mail_Template_Tiny_Type', '邮件模板子类型', null, '2012-03-10 12:12:12', '531850', '2012-03-10 12:12:12', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Marriage', '婚姻状况', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('MBWT', '密保问题', null, '2012-04-24 17:07:38', '531850', '2012-04-24 17:07:57', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('merchantLevel', '商户级别', null, '2012-12-12 12:12:12', '531850', '2012-12-12 12:12:12', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Merchant_Administrate_State', '商户管理员状态', null, '2012-03-17 13:25:14', null, '2012-03-17 13:25:15', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Merchant_State', '商户状态', null, '2012-03-17 13:25:04', null, '2012-03-17 13:25:05', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Merchant_Type', '商户类别', null, '2012-12-12 12:12:12', '531850', '2012-12-12 12:12:12', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('messagepush', '消息所属类别-消息管理', null, '2015-07-09 15:07:12', null, '2015-07-09 15:07:15', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('messageState', '站内信状态', null, '2013-01-08 14:05:52', '531850', '2013-01-08 14:06:17', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Message_sender', '站内信发信账号', null, '2013-01-08 15:44:34', '531850', '2013-01-08 15:44:39', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('pay_type', '支付类型', null, '2012-09-26 15:45:47', null, '2012-09-26 15:45:52', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('posstate', 'POS状态', null, '2012-12-12 12:12:12', '531850', '2012-12-12 12:12:12', '5318550', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Present_Pan_State', '客服人员送给客户积分', null, '2012-03-17 13:25:00', null, '2012-03-17 13:25:01', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Promoter', '发起方', null, '2012-03-20 14:35:37', null, '2012-03-20 14:35:41', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('REFUND_TYPE', '退款类型', null, '2012-11-11 11:11:11', null, '2012-03-10 00:00:00', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Return_Money_Reason', '退款原因', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Return_Reason', '退货原因', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('reward_type', '给奖方式', null, '2012-09-26 15:45:47', null, '2012-09-26 15:45:52', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('SEX', '性别', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('SFJC', '省份简称', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('SFTP', '是否TOP10', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('SMS_RESP', '功能', null, '2012-09-12 10:27:29', '531850', '2012-09-12 10:27:43', '531850', '1', 's', null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Sms_Template_Tiny_Type', '短信模板子类型', null, '2012-03-17 13:25:12', null, '2012-03-17 13:25:13', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('specialAnnounceState', '特殊公告状态', null, '2012-09-26 15:45:47', null, '2012-09-26 15:45:52', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('SPXX', '商品信息', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('state', '有效状态', null, '2012-03-10 00:00:00', '531850', '2012-03-10 00:00:00', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('SYSTEM_PARAM', '系统变量', '', '2012-04-24 12:25:17', '531850', '2012-04-24 12:25:23', '531850', '1', '', '');
INSERT INTO `b_xtxg_sjzdfz` VALUES ('taobaoKeyword', '淘宝查询关键字', null, '2012-05-05 12:00:00', '531850', '2012-05-05 12:00:00', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('tCodeState', '二维码状态', null, '2012-09-24 15:50:34', null, '2012-09-24 15:50:37', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('tel', '是否有手机', null, '2015-06-11 10:07:31', null, '2015-06-11 10:07:33', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('TelChange', '携号入网', null, '2012-03-20 15:24:02', null, '2012-03-20 15:24:05', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Tem_Activity_State', '开业庆活动状态', null, '2012-09-19 15:00:33', null, '2012-09-19 15:00:37', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Tem_Activity_Type', '开业庆活动类型', null, '2012-09-19 14:50:36', null, '2012-09-19 14:50:43', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('User_State', '用户状态', null, '2012-03-17 13:24:50', null, '2012-03-17 13:24:51', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('Wish_State', '心愿状态', null, '2012-03-17 13:24:58', null, '2012-03-17 13:24:59', null, '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('XYZT', '心愿状态', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('ZJLX', '证件类型', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('ZYBQ', '资源标签', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);
INSERT INTO `b_xtxg_sjzdfz` VALUES ('ZZBQ', '组织标签', null, '2012-03-10 02:15:29', '531850', '2012-03-10 02:15:52', '531850', '1', null, null);

-- ----------------------------
-- Table structure for `login_log`
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `sid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `user_id` char(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` char(50) DEFAULT NULL COMMENT '用户名',
  `ip` char(50) DEFAULT NULL COMMENT 'IP',
  `mac` char(50) DEFAULT NULL COMMENT 'mac',
  `login_date` datetime DEFAULT NULL COMMENT '登录时间',
  `logout_date` datetime DEFAULT NULL COMMENT '登出时间',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=gbk COMMENT='用户登录流水表';

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('1', '65624910', 'Max', '123', null, '2017-05-11 23:22:16', null);
INSERT INTO `login_log` VALUES ('2', '65624910', 'Max', '456', null, '2017-05-11 23:54:15', null);
INSERT INTO `login_log` VALUES ('3', '65624910', 'Max', '777', null, '2017-05-12 00:13:47', null);
INSERT INTO `login_log` VALUES ('4', '65624910', 'Max', '888', null, '2017-05-12 00:13:56', null);
INSERT INTO `login_log` VALUES ('5', '65624910', 'Max', '999', null, '2017-05-12 00:14:01', null);
INSERT INTO `login_log` VALUES ('6', '65624910', 'Max', null, null, '2017-05-12 10:58:08', null);
INSERT INTO `login_log` VALUES ('7', '65624910', 'Max', null, null, '2017-05-14 22:30:57', null);
INSERT INTO `login_log` VALUES ('8', '65624910', 'Max', null, null, '2017-05-15 11:44:14', null);
INSERT INTO `login_log` VALUES ('9', '65624910', 'Max', null, null, '2017-05-15 13:20:51', null);
INSERT INTO `login_log` VALUES ('10', '65624910', 'Max', null, null, '2017-05-15 13:24:03', null);
INSERT INTO `login_log` VALUES ('11', '65624910', 'Max', null, null, '2017-05-15 13:25:48', null);
INSERT INTO `login_log` VALUES ('12', '65624910', 'Max', null, null, '2017-05-15 13:31:20', null);
INSERT INTO `login_log` VALUES ('13', '65624910', 'Max', null, null, '2017-05-15 14:08:49', null);
INSERT INTO `login_log` VALUES ('14', '65624910', 'Max', null, null, '2017-05-15 14:14:37', null);
INSERT INTO `login_log` VALUES ('15', '65624910', 'Max', null, null, '2017-05-15 15:19:29', null);
INSERT INTO `login_log` VALUES ('16', '65624910', 'Max', null, null, '2017-05-15 16:01:33', null);
INSERT INTO `login_log` VALUES ('17', '65624910', 'Max', null, null, '2017-05-15 16:57:45', null);
INSERT INTO `login_log` VALUES ('18', '65624910', 'Max', null, null, '2017-05-15 17:11:55', null);
INSERT INTO `login_log` VALUES ('19', '65624910', 'Max', null, null, '2017-05-16 10:09:59', null);
INSERT INTO `login_log` VALUES ('20', '65624910', 'Max', null, null, '2017-05-16 15:16:16', null);
INSERT INTO `login_log` VALUES ('21', '65624910', 'Max', null, null, '2017-05-16 17:23:07', null);

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` char(50) NOT NULL DEFAULT '' COMMENT '订单ID',
  `order_date` datetime DEFAULT NULL COMMENT '下单日期',
  `user_id` char(50) DEFAULT NULL COMMENT '用户ID',
  `service_id` char(50) DEFAULT NULL COMMENT '服务ID',
  `order_amount` decimal(18,2) DEFAULT NULL COMMENT '订单金额，2位小数',
  `order_status` char(1) DEFAULT NULL COMMENT '订单状态，1=等待 2=进程中 3=完成 4=拒绝',
  `is_paid` char(1) DEFAULT NULL COMMENT '是否扣款，是/否',
  `is_return` char(1) DEFAULT NULL COMMENT '返还扣点,是/否',
  `return_complete_date` datetime DEFAULT NULL COMMENT '返还到账时间',
  `return_amount` decimal(18,2) DEFAULT NULL COMMENT '实际返还金额',
  `order_status_updatetime` datetime DEFAULT NULL COMMENT '订单状态更新时间',
  `order_status_update_source` char(200) DEFAULT NULL COMMENT '订单状态更新渠道',
  `imei` char(200) DEFAULT NULL COMMENT 'IMEI,15位',
  `sn` char(200) DEFAULT NULL COMMENT 'SN',
  `model` char(200) DEFAULT NULL COMMENT '机号型号',
  `order_result` char(200) DEFAULT NULL COMMENT '订单结果',
  `order_remark` char(200) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户订单表';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('ip170515013237843182', '2017-05-15 13:32:41', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185H', null, null, null, '66666');
INSERT INTO `orders` VALUES ('ip170515013423103418', '2017-05-15 13:34:23', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185I', null, null, null, '88888888');
INSERT INTO `orders` VALUES ('ip170515032912710294', '2017-05-15 15:29:12', '65624910', '#1002#', '5.01', '2', '?', '?', null, null, null, null, '35437606170185k', null, null, null, '');
INSERT INTO `orders` VALUES ('ip170515124044220510', '2017-05-15 12:40:44', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185a', null, null, null, null);
INSERT INTO `orders` VALUES ('ip170515124053717870', '2017-05-15 12:40:53', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185b', null, null, null, null);
INSERT INTO `orders` VALUES ('ip170515124055812774', '2017-05-15 12:40:55', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185c', null, null, null, null);
INSERT INTO `orders` VALUES ('ip170515124055952342', '2017-05-15 12:40:55', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185d', null, null, null, null);
INSERT INTO `orders` VALUES ('ip170515124056079401', '2017-05-15 12:40:56', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185e', null, null, null, null);
INSERT INTO `orders` VALUES ('ip170515124056235134', '2017-05-15 12:40:56', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185f', null, null, null, null);
INSERT INTO `orders` VALUES ('ip170515124056421259', '2017-05-15 12:40:56', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '35437606170185g', null, null, null, null);
INSERT INTO `orders` VALUES ('ip170515124056580311', '2017-05-15 12:40:56', '65624910', '#1002#', '5.01', '2', '是', '否', null, null, null, null, '354376061701856', null, null, null, null);

-- ----------------------------
-- Table structure for `order_status_updaterecord`
-- ----------------------------
DROP TABLE IF EXISTS `order_status_updaterecord`;
CREATE TABLE `order_status_updaterecord` (
  `order_id` char(200) DEFAULT NULL COMMENT '订单ID',
  `order_old_status` char(1) DEFAULT NULL COMMENT '订单原状态',
  `order_new_status` char(1) DEFAULT NULL COMMENT '订单新状态',
  `order_status_updatetime` datetime DEFAULT NULL COMMENT '订单状态更新时间',
  `order_update_by_user` char(200) DEFAULT NULL COMMENT '订单更新用户'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单状态更新流水';

-- ----------------------------
-- Records of order_status_updaterecord
-- ----------------------------

-- ----------------------------
-- Table structure for `ord_status`
-- ----------------------------
DROP TABLE IF EXISTS `ord_status`;
CREATE TABLE `ord_status` (
  `order_status_code` char(1) NOT NULL DEFAULT '' COMMENT '订单状态代码',
  `order_status` char(50) DEFAULT NULL COMMENT '订单状态说明，1=等待 2=进程中 3=完成 4=拒绝',
  PRIMARY KEY (`order_status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单状态基础数据表';

-- ----------------------------
-- Records of ord_status
-- ----------------------------

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `recharge_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '充值流水号,系统自动生产',
  `user_recharge_date` datetime DEFAULT NULL COMMENT '用户充值时间',
  `recharge_value` decimal(18,2) DEFAULT NULL COMMENT '充值金额',
  `user_id` char(50) DEFAULT NULL COMMENT '用户ID',
  `user_name` char(50) DEFAULT NULL COMMENT '用户名',
  `cellphone` char(20) DEFAULT NULL COMMENT '手机',
  `recharge_source` char(50) DEFAULT NULL COMMENT '充值渠道,alipay,weixin,cash,bank',
  `recharge_status` char(1) DEFAULT NULL COMMENT '充值状态，0=未到账，1=到账',
  `recharge_classify_code` char(1) DEFAULT NULL COMMENT '充值类别,1=充值 2=退点 3=其他充值',
  `recharge_complete_date` datetime DEFAULT NULL COMMENT '充值到账日期',
  `recharge_return_by_user` char(50) DEFAULT NULL COMMENT '充值返还操作用户名',
  `recharge_remark` char(200) DEFAULT NULL COMMENT '充值备注',
  PRIMARY KEY (`recharge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户充值交易记录表';

-- ----------------------------
-- Records of payment
-- ----------------------------

-- ----------------------------
-- Table structure for `pay_status`
-- ----------------------------
DROP TABLE IF EXISTS `pay_status`;
CREATE TABLE `pay_status` (
  `recharge_classify_code` char(1) NOT NULL DEFAULT '' COMMENT '充值分类代码',
  `recharge_classify` char(50) DEFAULT NULL COMMENT '充值分类,1=充值 2=退点 3=其他充值',
  PRIMARY KEY (`recharge_classify_code`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='充值分类代码基础数据表';

-- ----------------------------
-- Records of pay_status
-- ----------------------------

-- ----------------------------
-- Table structure for `price_policy`
-- ----------------------------
DROP TABLE IF EXISTS `price_policy`;
CREATE TABLE `price_policy` (
  `user_level` char(1) NOT NULL DEFAULT '' COMMENT '用户等级',
  `service_id` char(50) NOT NULL DEFAULT '' COMMENT '服务ID',
  `service_price` decimal(18,2) DEFAULT NULL COMMENT '服务价格',
  `service_updatetime` datetime DEFAULT NULL COMMENT '服务更新日期',
  PRIMARY KEY (`user_level`,`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户等级与服务价格规则定义表';

-- ----------------------------
-- Records of price_policy
-- ----------------------------

-- ----------------------------
-- Table structure for `service`
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `service_id` char(50) NOT NULL DEFAULT '' COMMENT '服务ID，#0000#',
  `service_classify_id` char(50) DEFAULT NULL COMMENT '服务分类ID',
  `service_name` char(200) DEFAULT NULL COMMENT '服务名称',
  `service_cost` decimal(18,2) DEFAULT NULL COMMENT '服务成本价，金额2位小数',
  `service_content` text COMMENT '服务内容',
  `service_remark` text COMMENT '服务备注',
  `service_price_trend` char(1) DEFAULT NULL COMMENT '服务价格趋势，0=下降，1=上升',
  `service_demand_trend` char(1) DEFAULT NULL COMMENT '服务需求趋势，0=下降，1=上升',
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='服务内容基础表';

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES ('#1001#', '1', 'Carrier Checker 完全策略信息有锁无锁 查运营商 快', '5.00', '老外工作时间大致是我们这边下午1点到晚上11-12点，这段时间可以快出，基本1小时内，最多三小时，1-3小时是指老外上班时间', '1~3小时', '1', '0');
INSERT INTO `service` VALUES ('#1002#', '1', 'Carrier Checker 完全策略信息有锁无锁 查运营商 慢', '5.01', 'Model : IPHONE 6,MM,64GB,GRAY\r\nIMEI : XXXXXXXXXXXXXXX\r\nSerial : F73PT1HXXXX\r\nWireless MAC Address : D81D72EXXXX\r\nFind My iPhone : Off  IOS Version : 9.3.5\r\nWarranty Status : Out Of Warranty (No Coverage)\r\nWarranty Days : 0 remaining\r\nFirstUnbrickDate : 07/24/15\r\nUnbricked : false\r\nUnlocked : true\r\nRegistration Date : 07/23/15  Purchase Date : 06/22/15\r\nPurchase Country : United States  Sold By : BEST BUY\r\nInitialActivationPolicyDetails : US GSM/VZW N61/N56 Service Policy\r\nAppliedActivationDetails : US GSM/VZW N61/N56 Service Policy\r\nNextTetherPolicyDetails : US GSM/VZW N61/N56 Service Policy\r\nUnlockDate : 04/18/16 Sim-Lock Status : Locked', '2~3小时', '0', '1');

-- ----------------------------
-- Table structure for `service_classify`
-- ----------------------------
DROP TABLE IF EXISTS `service_classify`;
CREATE TABLE `service_classify` (
  `service_classify_id` char(50) NOT NULL DEFAULT '' COMMENT '服务分类ID',
  `service_classify_name` char(200) DEFAULT NULL COMMENT '服务分类名称',
  PRIMARY KEY (`service_classify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='服务分类基础表';

-- ----------------------------
-- Records of service_classify
-- ----------------------------
INSERT INTO `service_classify` VALUES ('1', 'INFO Checks 查询服务');
INSERT INTO `service_classify` VALUES ('2', 'AT&T USA 美版AT&T');
INSERT INTO `service_classify` VALUES ('3', 'JAPAN SERVICES日版');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` char(50) NOT NULL DEFAULT '' COMMENT '用户ID,系统分配ID,8位数，8或6开头',
  `user_name` char(50) DEFAULT NULL COMMENT '用户名,除”-“ ”_“以外特殊符号都不行，全小写',
  `reg_date` datetime DEFAULT NULL COMMENT '注册日期',
  `full_name` char(50) DEFAULT NULL COMMENT '姓名，10个中文字符以内',
  `sex` char(1) DEFAULT NULL COMMENT '性别，男，女下拉选择',
  `province` char(20) DEFAULT NULL COMMENT '省份，31省下拉列表',
  `address` char(200) DEFAULT NULL COMMENT '地址',
  `mail` char(50) DEFAULT NULL COMMENT '邮箱地址，必须包含@',
  `cellphone` char(20) DEFAULT NULL COMMENT '手机号码，长度=11位',
  `login_pwd` char(200) DEFAULT NULL COMMENT '登录密码，至少8位，包含至少1位大写字母和1位数字',
  `rem_pwd` char(1) DEFAULT NULL COMMENT '是否免密码登录，0=需要密码，1=记住密码',
  `contract_readed` char(1) DEFAULT NULL COMMENT '是否阅读合同条款，必须勾选，1=勾选',
  `currency` char(10) DEFAULT NULL COMMENT '币种，默认=RMB,可选”美元“',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='会员注册表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('64159122', 'Max', null, null, null, null, null, 'Max@126.com', '13918067916', '12345678A', null, null, null);
INSERT INTO `user` VALUES ('64161167', 'Max', null, null, null, null, null, 'Max@126.com', '13918067916', '12345678A', null, null, null);
INSERT INTO `user` VALUES ('65624910', 'Max', null, 'Max', null, null, null, 'Max@126.com', '13918067916', '12345678A', null, null, null);

-- ----------------------------
-- Table structure for `user_level`
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `user_level_code` char(1) NOT NULL DEFAULT '' COMMENT '用户等级代码',
  `user_level` char(50) DEFAULT NULL COMMENT '用户等级说明',
  PRIMARY KEY (`user_level_code`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户等级基础数据表';

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES ('1', '初');
INSERT INTO `user_level` VALUES ('2', '中');
INSERT INTO `user_level` VALUES ('3', '高');
