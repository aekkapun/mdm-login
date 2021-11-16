/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : mdm_login

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2021-11-16 15:14:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` text COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `positionDesc` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `orgFullNameDes` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสจังหวัด',
  `offLocDesc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อ-สกุล',
  `offLocCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสบัตรประจำตัวประชาชน',
  `id_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ตำแหน่ง',
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1411900116884', 'hGyTxPIq8m1Xp1kRSeIOEQ0SjE_DOc8M', '$2y$13$JDQ6EJ9rBj5tKMbuoWmm0./aQ0/4zSjHSGG86f.cQlK6jpYu0vrmW', 'eyJhbGciOiJBMTI4S1ciLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0.cCC3HMdGCI333Qh_f1MqmftRBXKLsXz86sVXw3HHAaq6VK0wV794IA.we4HPjB1GntTXZn7dlAtrQ.Fx6405zSpKiaYu3NORW3LVOrFQ2tpnkM4v21VvtAAaYazfI3xM4kIGucN44SCFIk8iTa4XGbDWJzIcpkilDp_JA3Zky_a5wGYWnIU07NAzNf35EJIJwJ4Hc-8ZAExI_o.rMj-vtRKf_DTsZo2skV9bg', null, '10', '10', 'นักวิชาการคอมพิวเตอร์ปฏิบัติการ', 'ศูนย์เทคโนโลยีสารสนเทศ กลุ่มบริหารข้อมูลและระบบสารสนเทศ งานพัฒนาระบบสารสนเทศบริการ', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 5', '00100', '1411900116884', 'นาย', 'เอกพันธุ์', 'ศรีวงษ์', '1636634841', '1636687680');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `desc` varchar(120) DEFAULT NULL,
  `value` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'A001', 'กำหนดเปิด-ปิดการเชื่อมต่อ Service MDM', 'N');
INSERT INTO `config` VALUES ('2', 'A002', 'กำหนด URLในการเชื่อมโยง Service MDM-Login', 'https://tpms.dlt.go.th/mdm-auth/web/index.php?r=auth/login');
