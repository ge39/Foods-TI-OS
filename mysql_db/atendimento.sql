/*
Navicat MySQL Data Transfer

Source Server         : Server
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : servico_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-05-01 22:47:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `atendimento`
-- ----------------------------
DROP TABLE IF EXISTS `atendimento`;
CREATE TABLE `atendimento` (
  `id_atendimento` int(10) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_atendimento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of atendimento
-- ----------------------------
INSERT INTO `atendimento` VALUES ('1', 'Externo');
INSERT INTO `atendimento` VALUES ('2', 'Interno');
