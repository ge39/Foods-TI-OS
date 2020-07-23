/*
Navicat MySQL Data Transfer

Source Server         : Server
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : servico_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-05-01 22:50:57
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

-- ----------------------------
-- Table structure for `chamado_status`
-- ----------------------------
DROP TABLE IF EXISTS `chamado_status`;
CREATE TABLE `chamado_status` (
  `id_chamado` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_chamado` varchar(50) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_chamado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chamado_status
-- ----------------------------
INSERT INTO `chamado_status` VALUES ('1', 'Atendido', '1');
INSERT INTO `chamado_status` VALUES ('2', 'Em Atendimento', '1');
INSERT INTO `chamado_status` VALUES ('3', 'Pendente', '1');
INSERT INTO `chamado_status` VALUES ('4', 'Novo', '1');
INSERT INTO `chamado_status` VALUES ('5', 'Fechado', '1');
INSERT INTO `chamado_status` VALUES ('6', 'Aguard-Peça', '1');
INSERT INTO `chamado_status` VALUES ('7', 'Reaberto', '1');

-- ----------------------------
-- Table structure for `endereco`
-- ----------------------------
DROP TABLE IF EXISTS `endereco`;
CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razao` varchar(150) DEFAULT NULL,
  `apelido` varchar(50) NOT NULL,
  `endereco` varchar(120) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `regiao` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`,`apelido`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of endereco
-- ----------------------------
INSERT INTO `endereco` VALUES ('1', 'MERCADÃO DE CARNES NOVILHÃO LTDA', 'AC ', 'R. ABILIO CESAR, 212', 'JARDIM SORAIA', 'SAO PAULO', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('3', 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'CF', ' RUA CONSELHEIRO FURTADO,1162', 'LIBERDADE', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('4', 'CASA DE CARNES NOVA PARISIENE LTDA - EPP', 'NL', 'AVENIDA PROF. CELESTINO BOURROUL,1037', 'LIMAO', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('5', 'CASA DE CARNES QUALIBEEF DA P.INGLESA LTDA EPP', 'QA', 'AVENIDA GENERAL ATALIBA LEONEL,3587', 'PARADA INGLESA', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('6', 'COMERCIAL DE ALIM.IPANEMA-FOODS-EIRELI', 'AT', 'RUA IPANEMA ,260', 'SAO PAULO', 'BRAS', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('7', 'CASA DE CARNES NOVILHÃO DOS AUTONOMISTAS LTDA', 'AU', 'AVENIDA DOS AUTONOMISTAS,5089', 'VILA YARA', 'OSASCO', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('8', 'CASA DE CARNES NOVILHÃO DE ITAPEVI LTDA', 'BB', 'ESTRADA VELHA DE ITAPEVI,4326', 'VILA MILITAR', 'BARUERI', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('9', 'COMERCIAL DE ALIM.IPANEMA FOODS EIRELI', 'BO', 'RUA CLIMACO BARBOSA,21', 'CAMBUCI', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('11', 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'BS', 'PRACA DA SE,146', 'CENTRO', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('12', 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'CA', 'RUA DO GLICERIO,8', 'LIBERDADE', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('14', 'MERCADÃO DE CARNES NOVILHÃO LTDA-EPP', 'CL', 'RUA PROFESSORA NINA STOCCO,943', 'JD. CATANDUVA', 'SAO PAULO', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('15', 'COMERCIAL DE ALIM.IPANEMA FOODS EIRELI', 'CN', 'AV.ACADEMIA DE SAO PAULO,245', 'JD CAMARGO NOVO', 'ITAIM PAULISTA', 'SP', 'LESTE', '', '', null);
INSERT INTO `endereco` VALUES ('17', 'MERCADAO DE CARNES NOVILHAO LTDA-EPP', 'CR', 'ESTRADA DE ITAPECERICA,3770', 'CAPAO REDONDO', 'SAO PAULO', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('18', 'CASA DE CARNES NOVA PARISIENE - JD LTDA - EPP', 'DJ', 'EST DOM JOAO NERY,3472', 'JARDIM BARTIRA', 'SAO PAULO', 'SP', 'LESTE', '', '', null);
INSERT INTO `endereco` VALUES ('21', 'COMERCIAL DE ALIM.IPANEMA -FOODS-EIRELI', 'FA', 'AVENIDA ITABERABA,5240', 'ITABERABA', 'SAO PAULO', 'SP', 'NORTE', '', '', null);
INSERT INTO `endereco` VALUES ('22', 'COMER.DE ALIMEN.IPANEMA FOODS-EIRELI', 'FC', 'RUA DA CANTAREIRA,291 ', 'CENTRO HISTORICO DE SAO PAULO', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('23', 'COMERCIAL DE ALIM. IPANEMA FOODS-EIRELI', 'FM', 'PRACA 14 BIS,106', 'BELA VISTA', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('24', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS-EIRELI', 'FO', 'AV. PRESIDENTE WILSON,1681', 'MOOCA', 'SAO PAULO', 'SP', 'LESTE', '', '', null);
INSERT INTO `endereco` VALUES ('25', 'CASA DE C. SUPER BOI HELENA MARIA LTDA', 'HM', 'AV.PRESIDENTE COSTA E SILVA,288', 'JD. HELENA MARIA', 'OSASCO', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('26', 'CASA DE CARNES NOVA PARISIENE - JD LTDA - EPP', 'IS', 'AV. INAJAR DE SOUZA,1150', 'LIMAO ', 'SAO PAULO', 'SP', 'NORTE', '', '', null);
INSERT INTO `endereco` VALUES ('27', 'MERCADÃO DE CARNES NOVILHÃO LTDA - EPP', 'JB', 'AV. ITAQUI,53', 'JARDIM BEVAL', 'BARUERI', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('28', 'MERCADAO DE CARNES NOVILHAO LTDA-EPP', 'JS', 'AV. MUNICIPAL,455', 'JD.SILVEIRA', 'BARUERI', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('30', 'CASA DE CARNES PARISIENE DA LIBERDADE LTDA', 'LI', ' AV. LIBERDADE,66', 'CENTRO', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('31', 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'LV', 'AV.LINS DE VASCONCELOS, 1330', 'CAMBUCI', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('32', 'CASA DE CARNES NOVA PARISIENE -JD LTDA-EPP', 'MO', 'RUA TUIM VILA UBERABINHA,595', 'MOEMA', 'SAO PAULO', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('33', 'MERCADÃO DE CARNES NOVILHÃO LTDA EPP', 'NA', 'AV DOS AUTONOMISTAS,7202', 'COMONDANTE SAMPAIO', 'OSASCO', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('34', 'MERCADAO DE CARNES NOVILHAO LTDA - EPP ', 'NB', 'R FREI HENRIQUE SOARES DE COIMBRA,3', 'PARQUE IMPERIAL', 'BARUERI', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('35', 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'NC', 'AV.RANGEL PESTANA,1974 ', 'BRAS', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('36', 'CASA DE CARNES NOVILHÃO DE OSASCO LTDA', 'NO', 'AV.ANTONIO CARLOS COSTA,529', 'JARDIM CIPAVA', 'OSASCO', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('37', 'MERCADÃO DE CARNES NOVILHÃO LTDA-EPP', 'NS', 'AV JOAO DE ANDRADE,1380 ', 'J.D SANTO ANTONIO', 'OSASCO', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('38', 'MERCADÃO DE CARNES NOVILHÃO LTDA-EPP', 'NT', 'R. DOUTOR JOVIANO PACHECO DE AGUIRRE,179', 'SAO PAULO-SP', 'JD. VILA ANTONIO', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('39', 'MERCADÃO DE CARNES NOVILHÃO LTDA-EPP', 'NU', 'AV. JOAO PAULO II,1573', 'JD. TEREZA', 'EMBU DAS ARTES', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('40', 'PARISIENSE CARNES LTDA - EPP', 'PA', 'RUA PADRE JOAO MANOEL,574', 'CERQUEIRA CESAR', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('41', 'COMERCIAL  DE ALIM.IPANEMA-FOODS-EIRELI', 'PB', 'RUA JOAQUIM NABUCO,581 ', 'BRAS', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('42', 'MERCAD?O DE CARNES NOVIL?O LTDA-EPP', 'PC', 'RUA CACHOEIRA,1669', 'CATUMBI', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('43', 'MERCADÃO DE CARNES NOVILÃO LTDA-EPP', 'PI', 'AV.CARLOS LACERDA,1427', 'JD. ROSANA', 'SAO PAULO', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('44', 'CASA DE CARNES SUPER PARISIENE LTDA', 'PO', 'AV.JOAO VENTURA DOS SANTOS,2003 ', 'JD BARONESA', 'OSASCO', 'SP', 'OESTE', '', '', null);
INSERT INTO `endereco` VALUES ('45', 'CASA DE CARNES NOVA PARISIENE JD LTDA', 'RB', 'AVENIDA RIO BRANCO,200 ', 'CENTRO', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('46', 'COMERCIAL DE ALIM.IPANEMA FOODS EIRELI', 'RC', 'AV RAGUEB CHOHFI,2803', 'PQ BOA ESPERANCA', 'SAO PAULO', 'SP', 'LESTE', '', '', null);
INSERT INTO `endereco` VALUES ('48', 'COMERCIAL DE ALIM.IPANEMA FOODS - EIRELLI', 'SD', 'RUA SABBADO D`ANGELO,2041', 'ITAQUERA', 'SAO PAULO', 'SP', 'LESTE', '', '', null);
INSERT INTO `endereco` VALUES ('49', 'CASA DE CARNES NOVA PARISIENE-JD LTDA E.P.P', 'SI', 'AV. RAGUEB CHOHFI,4656', 'J.D IGUATEMI', 'SAO MATEUS', 'SP', 'LESTE', '', '', null);
INSERT INTO `endereco` VALUES ('50', 'MERCADÃO DE CARNES NOVILHÃO LTDA EPP', 'SP', 'AV. SAO PAULO,350', 'CIDADE  INTERCAP', 'TABOAO DA SERRA', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('51', 'CASA DE CARNES NOVILHÃO DO PARQUE PINHEIROS LTDA EPP', 'TA', 'AV. LAURITA ORTEGA MARI,Parque Pinheiros,1993', 'TABOAO DA SERRA', 'SAO PAULO', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('52', 'COMER.  DE ALIMENTOS IPANEMA FOODS EIRELI', 'TL', 'RUA HUMAITA,239', 'BELA VISTA', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('53', 'MERCADAO DE CARNES NOVILHAO LTDA - EPP', 'TS', 'EST BENEDITO CESARIO DE OLIVEIRA,525', 'JARDIM RECORD', 'TABOAO DA SERRA', 'SP', 'SUL', '', '', null);
INSERT INTO `endereco` VALUES ('54', 'COMERCIAL DE ALIM. IPANEMA FODS EIRELI', 'XT', 'RUA CORONEL XAVIER DE TOLEDO,66', 'REPUBLICA', 'SAO PAULO', 'SP', 'CENTRO', '', '', null);
INSERT INTO `endereco` VALUES ('55', 'CASA DE CARNES NOVILHÃO DE SOROCABA LTDA', 'SO', 'AV.PAULO EMANUEL DE ALMEIDA,253', 'IPIRANGA', 'SOROCABA', 'SP', 'INTERIOR', null, null, null);

-- ----------------------------
-- Table structure for `estoque`
-- ----------------------------
DROP TABLE IF EXISTS `estoque`;
CREATE TABLE `estoque` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `qtde_entrada` int(10) DEFAULT NULL,
  `qtde_saida` int(10) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estoque
-- ----------------------------
INSERT INTO `estoque` VALUES ('2', 'Monitor', 'Monitor lcd widescreen 19\'\'', '5', null, '750.00', '1');
INSERT INTO `estoque` VALUES ('3', 'Nobreak Usado', 'Nobreak Recondicionado', '1', null, '300.00', '1');
INSERT INTO `estoque` VALUES ('4', 'Leitor ', 'Leitor de codigo de barra', '1', null, '1.00', '1');
INSERT INTO `estoque` VALUES ('5', 'Teclado', 'Teclado usb', '1', null, '1.00', '1');
INSERT INTO `estoque` VALUES ('6', 'Mouse', 'Mouse usb', '1', null, '1.00', '1');
INSERT INTO `estoque` VALUES ('7', 'Computador', 'Computador de escritrio', '1', null, '1.00', '1');
INSERT INTO `estoque` VALUES ('8', 'Ubiquiti', 'antena wifi', '1', null, '1.00', '1');
INSERT INTO `estoque` VALUES ('13', 'Sat', 'Sat Dimep', '0', '0', '665.00', '1');
INSERT INTO `estoque` VALUES ('14', 'Nobreak Novo', 'Nobreak Novo com garantia', '0', '0', '600.00', '1');
INSERT INTO `estoque` VALUES ('15', 'Telefone com fio', 'Telefone basico com fio', '0', '0', '70.00', '1');
INSERT INTO `estoque` VALUES ('16', 'Telefone sem fio', 'Telefone sem fio', '0', '0', '150.00', '1');
INSERT INTO `estoque` VALUES ('17', 'Tanca', 'Mini computador PDV', '0', '0', '600.00', '1');
INSERT INTO `estoque` VALUES ('18', 'Microtik Usado', 'Servidor para controle de acesso, firewall e VPN', '0', '0', '300.00', '1');
INSERT INTO `estoque` VALUES ('19', 'Microtic Novo', 'Servidor para controle de acesso, firewall e VPN', '0', '0', '600.00', '1');
INSERT INTO `estoque` VALUES ('20', 'Switch 8 portas', 'Switch com 8 portas Dlink', '0', '0', '150.00', '1');
INSERT INTO `estoque` VALUES ('21', 'Impressora térmica', 'impressora impressao de cupon pdv', '0', '0', '600.00', '1');
INSERT INTO `estoque` VALUES ('22', 'Impressora laser', 'impressora laser A4', '0', '0', '400.00', '1');
INSERT INTO `estoque` VALUES ('23', 'Gaveta', 'Gaveta para uso do pdv', '0', '0', '290.00', '1');

-- ----------------------------
-- Table structure for `funcao`
-- ----------------------------
DROP TABLE IF EXISTS `funcao`;
CREATE TABLE `funcao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funcao
-- ----------------------------
INSERT INTO `funcao` VALUES ('1', 'Técnico de Informatico', '1');
INSERT INTO `funcao` VALUES ('2', 'Tecnico em Telefonia', '1');
INSERT INTO `funcao` VALUES ('3', 'Técnico em Rede', '1');
INSERT INTO `funcao` VALUES ('4', 'Analista de Sistema', '1');
INSERT INTO `funcao` VALUES ('5', null, null);

-- ----------------------------
-- Table structure for `loja`
-- ----------------------------
DROP TABLE IF EXISTS `loja`;
CREATE TABLE `loja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loja` varchar(2) DEFAULT NULL,
  `telefone` varchar(150) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `grupo` varchar(20) DEFAULT NULL,
  `regiao` varchar(20) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loja
-- ----------------------------
INSERT INTO `loja` VALUES ('1', 'AC', '5872-5617/5872-6121', 'MERCADÃO DE CARNES NOVILHÃO LTDA', 'RUA ABILIO CESAR, 212 TR JD JANGADEIRO', '05881-020', '08170468/0011-08', null, 'S', null);
INSERT INTO `loja` VALUES ('2', 'AU', '3608-3058/3695-0882', 'CASA DE CARNES NOVILHAO DOS AUTONOMISTAS', 'AV. AUTONOMISTAS, 5089 - JD GRANADA - OSASCO', '06194-050', '11990899/0001-53', null, 'O', null);
INSERT INTO `loja` VALUES ('3', 'BB', '4162-3352/4194-2425', 'VILMA APARECIDA MESSIAS', 'ESTRADA VELHA DE ITAPEVI BARUERI, 4334 = JDIM STA MONICA J SILVEIRA', '06444-000', 'NÃO TEM', null, 'O', null);
INSERT INTO `loja` VALUES ('4', 'BO', '3208-8976/3275-4188/3341-4904', 'CENTER CARNES BONZAY LTDA', 'RUA CLIMACO BARBOSA, 21 - CAMBUCI', '01523-000', '69344620/0001-44', null, 'C', null);
INSERT INTO `loja` VALUES ('5', 'BS', '3101-1092/3106-6540', 'CELI CAROLINA ALEXANDRONI SANTOS', 'PRAÇA DA SE, 146 CENTRO', '01001-000', '9776808-19', null, 'C', null);
INSERT INTO `loja` VALUES ('6', 'CA', '3275-3400/3276-7567', 'CASA DE CARNES CATALÃO LTDA', 'RUA GLICERIO, B LJ 2 - LIBERDADE', '01514-000', '68045806/0001-30', null, 'C', null);
INSERT INTO `loja` VALUES ('7', 'CF', '3207-1910/3209-3806', 'JOSE PIRES MONTEIRO', 'RUA CONSELHEIRO FURTADO, 1162 - LIBERDADE', '01511-001', '772106628-04', null, 'C', null);
INSERT INTO `loja` VALUES ('8', 'CL', '5841-6398/5841-7548/5841-7926', 'CASA DE CARNES NOVA CHARMOSA DO CAMPO LIMPO LTDA', 'RUA NINA STOCCO PROF. , 943 JD CAMPO LIMPO', '05767-001', '01356152/0001-94', null, 'S', null);
INSERT INTO `loja` VALUES ('9', 'CN', '2025-3993', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS EIRELES', 'AV. ACADEMIA DE SÇO PAULO, 774 - JD CAMARGO', '08121-400', '17343551/0011-22', null, 'L', null);
INSERT INTO `loja` VALUES ('10', 'CR', '5512-7652/5513-4425/5513-6529', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'ESTRADA ITAPECERICA, 3770  PQ FERNANDA', '05835-004', '06170468/0001-36', null, 'S', null);
INSERT INTO `loja` VALUES ('11', 'DJ', '20254264 - 2561-8445 ', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS EIRELES', 'ESTRADA D.JOAO NERY, 3472', null, '05769482/0001-07', null, 'L', null);
INSERT INTO `loja` VALUES ('12', 'EC', '5083-1574/5083-1649/5084-6399/5084-6627/5084-6631/5084-6647', 'MARIA LUCIA DA SILVA', 'RUA FREI CANECA, 558 14°ANDAR 1413 SALA - CERQUEIRA CESAR - CONSOLAÇÃO', '01307-000', 'RG 14431048-17', null, 'C', null);
INSERT INTO `loja` VALUES ('14', 'FA', '3851-4229/3985-7539', 'DARCE RAMALHO DOS SANTOS', 'AV. ITABERABA, 5240 - NOSSA SENHORA DO O', '02739-000', '87889948-05', null, 'N', null);
INSERT INTO `loja` VALUES ('15', 'FC', '3228-5066/3229-8301', 'JOSE PIRES MONTEIRO', 'RUA DA CANTAREIRA, 287 - MERCADO', '01024-000', '772106628-04', null, 'C', null);
INSERT INTO `loja` VALUES ('16', 'FM', '3159-3824', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS EIRELES', 'PRAÇA QUATORZE BIS, 106 - BELA VISTA', '01312-010', '17343551/0001-50', null, 'C', null);
INSERT INTO `loja` VALUES ('17', 'FO', '2063-6099/2081-4769', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS EIRELES', 'AV. PRES WILSON, 1681 - MOOCA', '03107-001', '17343551/0001-50', null, 'L', null);
INSERT INTO `loja` VALUES ('18', 'HM', '3603-4881/3656-6171', 'CASA DE CARNES SUPER BOI HELENA MARIA LTDA', 'AV. REMEDIOS, 696 - VILA DOS REMEDIOS', '05107-001', '06143380/0001-08', null, 'O', null);
INSERT INTO `loja` VALUES ('19', 'IS', '3931-0340', 'CASA DE CARNES NOVA PARISIENE JD LTYDA', 'AV. IPNAJAR DE SOUZA, 110 TR - JD DAS GRAÇAS', '02716-000', '05769483/0008-83', null, 'N', null);
INSERT INTO `loja` VALUES ('20', 'JB', '4198-0826/4198-2719', 'AILTON BARBOSA OLIVEIRA', 'AV. ITAQUI(BAIRRO DOS ALTOS) - JARDIM BELVAL', '06420-210', '049.932.626-12', null, 'O', null);
INSERT INTO `loja` VALUES ('21', 'JS', '4194-4783/4194-5532/4194-5538', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'AV. MUNIPAL, 455BTR - JD SILVEIRA', '06433-000', '08140468/0006-40', null, 'O', null);
INSERT INTO `loja` VALUES ('22', 'LI', '3241-3496', 'FRANCISCO BARROS DE CAMPOS JUNIOR', 'AV. LIBERDADE, 66 LIBERDADE', '01502-000', 'RG 29388995-1', null, 'C', null);
INSERT INTO `loja` VALUES ('23', 'LV', '3271-1355', 'CASA DE CARNES JABURU LTDA', 'AV. LINS DE VASCONCELOS,130-JD CAMBUCI', '0158-0001', '67345595/0001-98', 'Ipanema', 'C', '1');
INSERT INTO `loja` VALUES ('24', 'MO', '5041-5720/5096-1248', 'TROPICAL COMERCIO DE CARNES LTYDA', 'RUA TUIM, 595 - INDIANOPOLIS', '04514-102', '10504712/0001-00', null, 'S', null);
INSERT INTO `loja` VALUES ('25', 'NB', '4193-6493/4193-6498', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'RUA FR HENRIQUE SOARES DE COIMBRA,3 PQ IMPERIAL BARUERI', '06462-190', '09380794/0001-36', null, 'O', null);
INSERT INTO `loja` VALUES ('26', 'NC', '2291-7323/2692-4670', 'ROGERIO CAMARA NIGRO', 'AV. RANGEL PESTANA, 1974 - CENTRO', '03002-000', '148414058-36', null, 'C', null);
INSERT INTO `loja` VALUES ('27', 'NL', '3965-3270/3966-9202', 'JALES COMERCIO DE CARNES LTDA', 'AV. PROF. CELESTINO BOURROUL, 1037 LIMAO', '02710-000', '04421417/0001-89', null, 'N', null);
INSERT INTO `loja` VALUES ('28', 'NN', '3681-0407/3683-0343/3683-8854', 'AILTON BARBOSA OLIVEIRA', 'AV. ANTONIO CARLOS COSTA, 529 - BELA VISTA', '06053-010', 'RG 49632626-12', null, 'O', null);
INSERT INTO `loja` VALUES ('29', 'NS', '3592-3792/3592-3843/3592-4355', 'MERCADAO DE CARNES NOVILHAO LTDA', 'AV. JOAO DE ANDRADE, 1380 - JD STA ANTONIO', '06132-004', '08170468/0004-89', null, 'O', null);
INSERT INTO `loja` VALUES ('30', 'NT', '5841-7779/5841-7827', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'RUA JOVIANO P. DE AGUIRRE DR, 179 - CAMPO LIMPO', '05788-290', '08170468/0006-40', null, 'S', null);
INSERT INTO `loja` VALUES ('31', 'NU', '4244-7173/4244-7184', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'AV. JOAO PAULO II, 1573 - JDIM SÃO LUIZ', '06810-507', '08170468/0001-36', null, 'S', null);
INSERT INTO `loja` VALUES ('33', 'PA', '3081-9602/3081-9684/3891-1016', 'PARISIENSE CARNES E CIA LTDA', 'RUA PE JOÃO MANOL, 574 - CERQUEIRA CESAR', '01411-000', '02998270/0001-89', null, 'C', null);
INSERT INTO `loja` VALUES ('34', 'PB', '2291-4623/2292-4500/2692-2823', 'JOSE PIRES MONTEIRO', 'RUA JOAQUIM NABUCO, 81 - BRAS', '03050-020', 'RG 772106628-04', null, 'C', null);
INSERT INTO `loja` VALUES ('35', 'PC', '2081-1273/2291-4570', '', null, null, null, null, 'C', null);
INSERT INTO `loja` VALUES ('36', 'PO', '3599-8759/3603-3190', 'CASA DE CARNES SUPERPARISIENE LTDA', 'AV. JOÃO VENTURA DOS SANTOS, 2003 - JD BARONESA', '06263-100', '09.380.794/0001-30', null, 'O', null);
INSERT INTO `loja` VALUES ('37', 'RB', '3337-7600', 'CENTRAL DE CARNES RIO BRANCO LTDA', 'AV. RIO BRANCO, 200 AC JOSE MANCIO CENTRO', '01206-000', '01341349/0001-50', null, 'C', null);
INSERT INTO `loja` VALUES ('38', 'RC', '2518-2556', 'COMERCIAL DE ALIMENTOS IPANEMA FOOD', 'ESTRADA IGUATEMI, 4980', '�08490-500', null, null, 'L', null);
INSERT INTO `loja` VALUES ('39', 'SI', '2731-7672/2731-7673/5842-8805/5842-8819/5845-1445', 'CASA DE CARNES BOI CEVADO LTDA', 'AV. RAGUEB CHOHFI, 4656 JD AUGUSTO', '03830-320', '07311490/0001-96', null, 'L', null);
INSERT INTO `loja` VALUES ('40', 'TA', '4701-2413/4771-1039/4771-6074', 'CENTER CARNE BOI NOVO PARQUE PINHEIRO', 'AV. LAURITA ORTEGA MARI, 1993 - VILA DAS OLIVEIRAS - TABOAO DA SERRA', '06766-361', '09586046/0001-09', null, 'S', null);
INSERT INTO `loja` VALUES ('41', 'TL', '3141-3242/3266-4514', 'CASA DE CARNES TRES LEÕES', 'RUA HUMAITA, 239 - BELA VISTA', '01231-010', '61618245/0001-71', null, 'C', null);
INSERT INTO `loja` VALUES ('42', 'TS', '4138-2282', 'MERCADÃO DE CARNES N0VA PAINEIRA LTDA E', 'ESTRA BENEDITO CESÁRIO OLIVEIRA, 525 - ARRAIL PAULISTA TABOAO DA SERRA', '06767-280', '12272541/0001-58', null, 'S', null);
INSERT INTO `loja` VALUES ('43', 'XT', '3237-0333', 'CENTER CARNES BONZAY LTDA', 'RUA CEL XAVIER DE TOLEDO, 66-SE', '01048-000', '05169483/0004-58', null, 'C', null);
INSERT INTO `loja` VALUES ('44', 'SO', '(15)3329-4246 /329-4534/3035-4837', 'MERCADÃO DE CARNES NOVILHÃO LTDA', 'RUA PAULO EMANUEL DE ALMEIDA,253-PQ. DOS EUCALIPTOS, SOROCABA -SP', '18.053-505', '33.471.099/001-69', null, 'I', null);
INSERT INTO `loja` VALUES ('45', 'CC', '(11) 2296-0231', 'CASA DE CARNES NOVA PARISIENE - JD LTDA - EPP', 'AV CONSELHEIRO CARRAO, 2147 - VILA CARRÃO - São Paulo', '03403-002', null, 'Parisiene', 'L', '1');
INSERT INTO `loja` VALUES ('46', 'NA', '3695-7438', 'MERCADÃO DE CARNES NOVILHÃO LTDA EPP', 'AV DOS AUTONOMISTAS 7202', '06194-060', null, 'Novilhao', 'O', '1');
INSERT INTO `loja` VALUES ('47', 'SD', '2521-5196', 'COMERCIAL DE ALIM.IPANEMA FOODS - EIRELLI', 'RUA SABBADO D`ANGELO 2041', '08215-655', null, 'Novo Boi', 'L', '1');
INSERT INTO `loja` VALUES ('48', 'SP', '4558 - 3700', 'MERCADÃO DE CARNES NOVILHÃO LTDA EPP', 'AV SÃO PAULO, 350 - CID. INTERCAP - TABOÃO DA SERRA - SP', '05757-170', null, 'Novilhao', 'S', '1');
INSERT INTO `loja` VALUES ('49', 'VM', '(11)2476-9190', 'COMERCIAL DE ALIM.IPANEMA-FOODS-EIRELI', 'AVENIDA LINS DE VASCONCELOS 3002', '04112-002', null, 'Parisiene', 'L', '1');
INSERT INTO `loja` VALUES ('50', 'PV', '(11)3311-6514', 'COMER.DE ALIMEN.IPANEMA FOODS-EIRELI', 'RUA PEDRO VICENTE, 324 - ARMENIA - SÃO PAULO-SP', '04112-002', null, 'Parisiene', 'C', '1');
INSERT INTO `loja` VALUES ('51', 'PI', '09.380.794/000130', 'MERCADO DE CARNES NOVILHAO', 'Av. carlos Lacerda 1427', '01206-000', null, 'Novilhao', 'S', '1');

-- ----------------------------
-- Table structure for `mensagem`
-- ----------------------------
DROP TABLE IF EXISTS `mensagem`;
CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dispositivo` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mensagem
-- ----------------------------
INSERT INTO `mensagem` VALUES ('1', 'Pdv', 'PDV desligou ', '1');
INSERT INTO `mensagem` VALUES ('2', 'Nobreak', 'Nobreak nao liga mais', '1');
INSERT INTO `mensagem` VALUES ('3', 'Nobreak', 'Nobreak apitando', '1');
INSERT INTO `mensagem` VALUES ('4', 'Internet', 'Loja sem internet', '1');
INSERT INTO `mensagem` VALUES ('5', 'Acesso ao Sistema', 'Sem acesso ao Logus', '1');
INSERT INTO `mensagem` VALUES ('6', 'Impressora Laser', 'Impressora não imprime do Logus', '1');
INSERT INTO `mensagem` VALUES ('7', 'Impressora Térmica', 'Impressora nao imprime do mataburro', '1');
INSERT INTO `mensagem` VALUES ('8', 'Impressora Laser', 'Impressora não imprime', '1');
INSERT INTO `mensagem` VALUES ('9', 'Energia', 'Acabou energia na loja', '1');
INSERT INTO `mensagem` VALUES ('10', 'Telefonia', 'Defeito no Telefone', '1');
INSERT INTO `mensagem` VALUES ('11', 'Balança', 'Balança com defeito', '1');
INSERT INTO `mensagem` VALUES ('15', 'Balança', 'Balança chegou da Manutenção', '1');

-- ----------------------------
-- Table structure for `ordem`
-- ----------------------------
DROP TABLE IF EXISTS `ordem`;
CREATE TABLE `ordem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_loja` int(11) DEFAULT NULL,
  `id_tecnico` int(11) DEFAULT NULL,
  `criado` varchar(50) DEFAULT NULL,
  `atendimento` int(5) DEFAULT NULL,
  `id_mensagem` int(11) DEFAULT NULL,
  `id_estoque` varchar(100) DEFAULT NULL,
  `id_status_chamado` int(11) DEFAULT NULL,
  `id_prioridade` int(11) DEFAULT NULL,
  `reclamado` varchar(150) DEFAULT NULL,
  `solicitante` varchar(50) DEFAULT NULL,
  `data_abertura_chamado` date DEFAULT NULL,
  `ultima_atualizacao` date DEFAULT NULL,
  `data_fecha_chamado` date DEFAULT NULL,
  `avaliacao_tecnico` varchar(150) DEFAULT NULL,
  `solucao` varchar(255) DEFAULT NULL,
  `pendencia` varchar(150) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-loja` (`id_loja`),
  KEY `fk-tecnico` (`id_tecnico`),
  KEY `fk-estoque` (`id_estoque`),
  KEY `fk_mensagem` (`id_mensagem`),
  KEY `fk-prioridade` (`id_prioridade`),
  KEY `fk-status-chamado` (`id_status_chamado`),
  KEY `atendimento` (`atendimento`),
  CONSTRAINT `fk-loja` FOREIGN KEY (`id_loja`) REFERENCES `loja` (`id`),
  CONSTRAINT `fk-status-chamado` FOREIGN KEY (`id_status_chamado`) REFERENCES `chamado_status` (`id_chamado`),
  CONSTRAINT `fk-tecnico` FOREIGN KEY (`id_tecnico`) REFERENCES `tecnico` (`id`),
  CONSTRAINT `fk_atendimento` FOREIGN KEY (`atendimento`) REFERENCES `atendimento` (`id_atendimento`),
  CONSTRAINT `fk_mensagem` FOREIGN KEY (`id_mensagem`) REFERENCES `mensagem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordem
-- ----------------------------
INSERT INTO `ordem` VALUES ('46', '3', '11', 'Jeremias', '1', null, null, '5', '3', 'PDV 103 e 104 estão trabalhando na rede, sat com falha', 'Geicilene', '2020-03-02', '2020-03-03', '2020-03-04', 'Rede', 'Cabo desconectado no keytone', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('49', '20', '3', 'Benedito', '1', null, null, '5', '2', 'nobreak do pdv 104, 2 leitores de código de barras', 'alessandra', '2020-03-03', '2020-03-04', '2020-03-04', 'Efetuado a troca do nobreak e 2 leitores de código de barras ', 'Efetuado a troca do nobreak e 2 leitores de código de barras ', 'sem pendencia', '3');
INSERT INTO `ordem` VALUES ('50', '37', '3', 'Benedito', '1', null, null, '5', '1', 'Teclado do caixa 101 com problema', 'Marria', '2020-03-03', '0000-00-00', '2020-03-03', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', '1');
INSERT INTO `ordem` VALUES ('51', '4', '3', 'Benedito', '1', null, null, '5', '1', 'telefone inoperante', 'Marria', '2020-03-03', '0000-00-00', '2020-03-03', 'Efetuado a troca do telefone', 'Efetuado a troca do telefone', 'Efetuado a troca do telefone', '1');
INSERT INTO `ordem` VALUES ('52', '3', '3', 'Jaks', '1', null, null, '7', '3', 'Levar sat para PDV 103 NSº00904587-29', 'Geicilene', '2020-03-04', '2020-04-22', '0000-00-00', 'Foi configurado um novo sat para o pdv 103', 'Foi configurado um novo sat para o pdv 103', 'Foi configurado um novo sat para o pdv 103', '7');
INSERT INTO `ordem` VALUES ('53', '31', '3', 'Benedito', '2', null, null, '5', '1', 'solicita teclado', 'Jois', '2020-03-04', '2020-03-05', '2020-03-05', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', '3');
INSERT INTO `ordem` VALUES ('54', '45', '3', 'Benedito', '1', null, null, '5', '1', 'nobreak para o caixa 102', 'Marria', '2020-03-05', '2020-03-05', '2020-03-06', 'Efetuado a troca do nobreak', 'Efetuado a troca do nobreak', 'Efetuado a troca do leitor', '3');
INSERT INTO `ordem` VALUES ('55', '37', '3', 'Benedito', '1', null, null, '5', '1', 'Leitor de codigo de barras para o caixa 101', 'Marria', '2020-03-05', '2020-03-05', '2020-03-05', 'Efetuado a troca do leitor', 'Efetuado a troca do leitor', 'Efetuado a troca do leitor', '3');
INSERT INTO `ordem` VALUES ('56', '4', '3', 'Benedito', '1', null, null, '5', '1', 'telefone com problemas', 'Marria', '2020-03-05', '0000-00-00', '2020-03-05', 'Efetuado a troca do telefone', 'Efetuado a troca do telefone', 'Efetuado a troca do telefone', '1');
INSERT INTO `ordem` VALUES ('57', '36', '2', 'Jaks', '1', null, null, '5', '2', 'Trocar MIKROTIK', 'Dora', '2020-03-05', '2020-03-05', '2020-03-05', 'O MK da loja estava com defeito', 'MK foi trocado', 'nenhuma', '2');
INSERT INTO `ordem` VALUES ('58', '20', '11', 'Jeremias', '2', null, null, '5', '2', 'Após queda de energia no escrito, o computador está reiniciando.', 'Alessandra', '2020-03-05', '2020-03-06', '2020-03-06', 'Computador não reiniciou', 'Computador ok', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('59', '19', '3', 'Benedito', '1', null, null, '5', '1', 'relógio sem comunicação', 'Marria', '2020-03-06', '0000-00-00', '2020-03-06', 'Cabo de rede desconectado no switch', 'Conectei o cabo', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('60', '19', '2', 'Jaks', '1', null, null, '5', '2', 'Relógio de ponto não conecta ', 'Ayumi', '2020-03-06', '0000-00-00', '2020-03-06', 'CHAMADO DUPLICADO', 'CHAMADO DUPLICADO', 'CHAMADO DUPLICADO', '1');
INSERT INTO `ordem` VALUES ('61', '4', '2', 'Jaks', '1', null, null, '5', '3', 'PDV 101 SEM CONEXÃO ', 'Maria', '2020-03-06', '0000-00-00', '2020-03-06', 'Sem conexão no caixa', 'Mudei o cabo de rede', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('62', '29', '3', 'Jeremias', '1', null, null, '5', '2', 'Tamires solicita a troca de 2 nobreaks, não seguram cargas', 'Tamires', '2020-03-07', '2020-03-17', '2020-03-21', 'LOJA OK ', 'LIguei na loja e a tamires disse que os pdvs não desligaram mais.', 'nenhuma', '3');
INSERT INTO `ordem` VALUES ('63', '6', '3', 'Jeremias', '1', null, null, '5', '3', 'Configurar rede do relogio', 'Petrins', '2020-03-08', '2020-03-08', '2020-03-08', 'Efetuado configura;áo do relogio com sucesso', 'Efetuado configura;áo do relogio com sucesso', 'sem pendencia', '3');
INSERT INTO `ordem` VALUES ('64', '6', '11', 'Jeremias', '1', null, null, '5', '2', 'Configurar ifractal', 'RH', '2020-03-08', '2020-03-10', '2020-03-10', 'Sistema do ifractal foi instalado e configurado', 'Sistema do ifractal foi instalado e configurado', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('65', '46', '3', 'Jaks', '2', null, null, '5', '3', 'O computador do escritório não liga', 'Gabriela', '2020-03-09', '2020-03-10', '2020-03-10', 'NOBREAK E COMPUTADOR QUEIMARAM', 'TROCAR NOBREAK E COMPUTADOR', 'LEVAR OUTRO COMPUTADOR', '3');
INSERT INTO `ordem` VALUES ('66', '46', '3', 'Jaks', '1', null, null, '5', '3', 'Levar outro computador para o escritório', 'Gabriela', '2020-03-09', '2020-03-10', '2020-03-10', 'Foi trocado a cpu e mantido os dados do HD', 'Foi trocado a cpu e mantido os dados do HD', 'nenhuma', '3');
INSERT INTO `ordem` VALUES ('67', '47', '2', 'Jaks', '1', null, null, '5', '1', 'Levar outro pinpad e outra tanca para testar,ao passar cartão o pinpad desliga.', 'Samia', '2020-03-09', '2020-03-13', '2020-03-13', 'pinpad desligando ao passar cartão', 'troquei o pinpad', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('68', '15', '2', 'Jeremias', '1', null, null, '5', '2', 'Relógio está perdendo comunicação com a rede', 'RH - Aiyumi', '2020-03-10', '0000-00-00', '2020-03-10', 'Cabo rede desconectado', 'reiniciei o relógio e conectei o cabo  de rede.', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('69', '48', '2', 'Jeremias', '1', null, null, '5', '2', 'Relogio imprime cupom pela metade', 'Cintia', '2020-03-10', '2020-03-12', '2020-03-18', 'A impressora do relógio só imprime a metade esquerda do comprovante', 'Rolete quebrado foi passado para o RH ', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('70', '22', '2', 'Jeremias', '1', null, null, '5', '2', 'Relogio de ponto está perdendo comunicação com a rede', 'RH - Ayumi', '2020-03-10', '0000-00-00', '2020-03-10', 'Cabo rede desconectado', 'reiniciei o relógio e conectei o cabo  de rede.', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('71', '7', '12', 'Benedito', '2', null, null, '5', '1', 'Mouse ', 'Maria', '2020-03-11', '0000-00-00', '2020-03-13', 'Efetuado a troca do mouse', 'Efetuado a troca do mouse', 'Efetuado a troca do mouse', '1');
INSERT INTO `ordem` VALUES ('72', '18', '2', 'Jeremias', '1', null, null, '5', '2', 'Pdv 102 está travando', 'Dora', '2020-03-11', '2020-03-11', '2020-03-11', 'PDV reiniciando', 'Troquei a tanca', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('73', '17', '12', 'Jeremias', '1', null, null, '5', '1', 'Retirar relógio na Mega Relógio, relógio era da VM - trazer pro foods', 'Ayumi', '2020-03-11', '2020-03-12', '2020-03-13', 'retirar relógio', 'retirei relógio', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('74', '39', '2', 'Jeremias', '1', null, null, '5', '1', 'Trocar teclado PDV 103', 'Dayane', '2020-03-11', '2020-03-12', '2020-03-12', 'Teclado não funciona', 'Troca de teclado', 'Nenhuma', '3');
INSERT INTO `ordem` VALUES ('75', '38', '11', 'Jeremias', '1', null, null, '5', '3', 'RC a internet está muito lenta, estão usando o wifi, trocassem a senha!', 'Danyele', '2020-03-11', '2020-03-19', '2020-03-19', 'identificado varios celulares conectados na rede', 'foi bloqueado todos celulares da rede balança e avisado a Danyele', 'nenhuma', '3');
INSERT INTO `ordem` VALUES ('76', '18', '2', 'Jeremias', '1', null, null, '5', '1', 'Balança 4 nao se comunica', 'Dora', '2020-03-11', '2020-03-11', '2020-03-11', 'A balança estava fora da rede', 'configurada o wifi da balança', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('77', '37', '3', 'Benedito', '1', null, null, '5', '1', 'leitor do escritório', 'sivia', '2020-03-12', '2020-03-19', '0000-00-00', 'Efetuado a troca do leitor', 'Efetuado a troca do leitor', 'Efetuado a troca do leitor', '5');
INSERT INTO `ordem` VALUES ('78', '21', '3', 'Jeremias', '1', null, null, '5', '2', 'Substituir todas as maquinas TEF e POS  -  trazer pro foods', 'procedimento T.I.', '2020-03-12', '2020-03-19', '0000-00-00', 'efetuado a troca de todos pinpad e efetuado testes de venda', 'efetuado a troca de todos pinpad e efetuado testes de venda', 'efetuado a troca de todos pinpad e efetuado testes de venda', '5');
INSERT INTO `ordem` VALUES ('79', '3', '3', 'Jeremias', '1', null, null, '5', '2', 'substituir todas as maquinas Tef e Pos -  trazer pro foods', 'procedimento T.I.', '2020-03-12', '2020-03-19', '0000-00-00', 'pinpad trocados', 'pinpad trocados', 'pinpad trocados', '5');
INSERT INTO `ordem` VALUES ('80', '25', '11', 'Jeremias', '1', null, null, '5', '3', 'Bloquear todos os usuarios da rede balança', 'Gerente Fernando', '2020-03-12', '0000-00-00', '2020-03-12', 'solicitação atendida', 'todos os usuarios da rede balança foram bloqueados', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('81', '15', '2', 'Jeremias', '1', null, null, '5', '2', 'Verificar comunicação do relógio', 'Aiumy - RH', '2020-03-12', '2020-03-13', '2020-03-13', 'Relógio sem comunicação', 'Retirei o cabo de rede e coloquei', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('82', '47', '2', 'Jeremias', '1', null, null, '5', '1', 'providenciar  cartões  para a fiscal e gerente para loja SD,', 'Gerente SD', '2020-03-12', '2020-03-19', '2020-03-19', ' cartões muito danificados', 'entregue cartoes para os funcionarios', 'Nenhuma', '3');
INSERT INTO `ordem` VALUES ('83', '38', '2', 'Jaks', '1', null, null, '5', '1', 'Trocar ip do relógio de ponto', 'Jeremias', '2020-03-12', '0000-00-00', '2020-03-12', 'trocar ip', 'troquei ip do relógio', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('84', '27', '3', 'Benedito', '1', null, null, '5', '3', 'pdv 101 não liga ew pdv 102 sem sat', 'Marria', '2020-03-13', '2020-03-13', '2020-03-13', 'efetuado troca do pdv 101 e troca do mouse, e organização de fio', 'efetuado troca do pdv 101 e troca do mouse, efetuado organização de fi', 'efetuado troca do pdv 101 e troca do mouse, e organização de fio', '3');
INSERT INTO `ordem` VALUES ('85', '37', '3', 'Benedito', '1', null, null, '5', '1', 'teclado do escritório molhado', 'sivia', '2020-03-13', '2020-03-13', '2020-03-19', 'teclado do escritório molhado', 'trocado o teclado', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('86', '29', '3', 'Benedito', '1', null, null, '5', '1', 'Trocar pinpad', 'ARIADNE', '2020-03-13', '2020-03-13', '2020-03-14', 'cancelado', 'cancelado', 'cancelado', '4');
INSERT INTO `ordem` VALUES ('87', '18', '12', 'Jeremias', '1', null, null, '5', '1', 'Pedido de 1 teclado', 'Dora', '2020-03-13', '0000-00-00', '2020-03-16', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', '1');
INSERT INTO `ordem` VALUES ('88', '25', '12', 'Jaks', '1', null, null, '5', '3', '2 balanças não conectam', 'andreia', '2020-03-13', '2020-03-13', '2020-03-16', 'efetuado configuração da balança, um balanca ok a outra enviada para assistencia ', 'efetuado configuração da balança, um balanca ok a outra enviada para assistencia ', 'efetuado configuração da balança, um balanca ok a outra enviada para assistencia ', '4');
INSERT INTO `ordem` VALUES ('89', '35', '2', 'Jaks', '1', null, null, '5', '2', 'computador do escritório não conecta', 'SILVANA', '2020-03-13', '0000-00-00', '2020-03-13', 'loja sem switch', 'coloquei outro switch', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('90', '25', '12', 'Jeremias', '1', null, null, '5', '2', 'Computador do  escritorio não dá sinal de video', 'Andréia', '2020-03-13', '0000-00-00', '2020-03-16', 'eliminado mau contato do micro testes ok', 'eliminado mau contato do micro testes ok', 'eliminado mau contato do micro testes ok', '1');
INSERT INTO `ordem` VALUES ('91', '8', '2', 'Jaks', '1', null, null, '5', '3', 'PC DO ESCRITÓRIO NÃO LIGA', 'LARISSA', '2020-03-14', '0000-00-00', '2020-03-14', 'computador não', 'reset na placa', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('92', '27', '11', 'Jeremias', '1', null, null, '5', '3', 'Configurar  um  sat  para pdv 101 - NS-000877559-12', 'Ari', '2020-03-15', '2020-03-18', '2020-03-20', 'loja montada, pendente caixas', 'loja montada, pendente caixas', 'loja montada, pendente caixas', '4');
INSERT INTO `ordem` VALUES ('93', '23', '2', 'Jaks', '1', '1', null, '5', '3', 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'VANDINHO', '2020-03-16', '2020-03-17', '2020-03-17', 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'nenhuma', '3');
INSERT INTO `ordem` VALUES ('94', '24', '2', 'Jaks', '1', null, null, '5', '3', 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'VANDINHO', '2020-03-16', '2020-03-19', '2020-03-19', 'etiquetas configuradas', 'etiquetas configuradas', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('95', '49', '2', 'Jaks', '1', null, null, '5', '3', 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'VANDINHO', '2020-03-16', '2020-03-18', '2020-03-18', 'Etiqueta configurada com nutricionais', 'Etiqueta configurada com nutricionais', 'nenhuma', '3');
INSERT INTO `ordem` VALUES ('96', '33', '2', 'Jaks', '1', null, null, '5', '3', 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'VANDINHO', '2020-03-16', '2020-03-27', '2020-03-27', 'Etiqueta configurada com nutricionais', 'etiquetas configuradas com nutricionais', 'nenhuma', '3');
INSERT INTO `ordem` VALUES ('97', '14', '2', 'Jeremias', '1', null, null, '5', '2', 'Configurar a balança 1232', 'Mary', '2020-03-16', '2020-03-17', '2020-03-18', 'Balança sem comunicação', 'Configurei a rede', 'Nenhuma', '3');
INSERT INTO `ordem` VALUES ('98', '10', '2', 'Jeremias', '1', null, null, '5', '1', 'Levar um teclado, levar um swith para liberar porta do mikrotic', 'Loja CR', '2020-03-16', '2020-03-18', '2020-03-18', 'Swicth e teclado não ligam', 'Troquei o swictch e teclado', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('99', '15', '3', 'Benedito', '1', null, null, '5', '1', 'relógio de ponto fora da rede', 'Maria', '2020-03-17', '2020-03-17', '2020-03-19', 'refeito cabo, testes ok', 'refeito cabo, testes ok', 'refeito cabo, testes ok', '4');
INSERT INTO `ordem` VALUES ('100', '50', '3', 'Jeremias', '1', null, null, '5', '1', 'Montagem da nova loja PV', 'T.I.', '2020-03-17', '2020-03-17', '2020-03-20', 'loja montada, pendente caixas', 'loja montada, pendente caixas', 'loja montada, pendente caixas', '4');
INSERT INTO `ordem` VALUES ('101', '30', '2', 'Jeremias', '1', null, null, '5', '2', 'Levar 2 leitores e verificar tanca  pdv 101,entradas usb queimando leitor', 'Thais', '2020-03-17', '2020-03-18', '2020-03-18', 'Trocar tanca do caixa 1 e 2 leitores', 'Trocar 1 tanca e 2 leitores', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('102', '46', '2', 'Jeremias', '1', null, null, '5', '2', 'Impressora argox nao se comunica com o computador', 'Gabriely', '2020-03-17', '0000-00-00', '2020-03-18', 'Argox não imprime', 'Instalei driver', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('104', '24', '2', 'Jeremias', '1', null, null, '5', '2', 'Impressora do pdv 101 nao liga no nobreak', 'Loja MO', '2020-03-17', '0000-00-00', '2020-03-19', 'Impressora ligada na régua', 'Liguei impressora na régua ', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('105', '38', '11', 'Jeremias', '1', null, null, '4', '1', 'configurar ifractal da loja', 'RH - Ayumi', '2020-03-17', '2020-03-26', null, 'precisa liberar a porta 9001 relogio e opcão servidor ', '', '', '4');
INSERT INTO `ordem` VALUES ('106', '4', '2', 'Benedito', '1', null, null, '5', '1', 'relógio não emite comprovante.', 'Maria', '2020-03-18', '2020-03-18', '2020-03-18', 'avisar ao RH ', 'RH CHAMAR UM TÉCNICO DA MEGA RELÓGIO', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('107', '20', '2', 'Jeremias', '1', null, null, '5', '2', 'Levar um teclado para computador escritorio', 'Kenaoliveira', '2020-03-18', '2020-03-19', '2020-03-30', 'suspeita de cabo usb em curto', 'o teclado nao tinha defeito', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('108', '4', '3', 'Benedito', '1', null, null, '5', '1', 'relógio BO, não impirme', 'Maria', '2020-03-19', '0000-00-00', '2020-03-19', 'Feito limpeza nos contatos sem sucesso, direcionado ao RH para fazer reparo', 'Feito limpeza nos contatos sem sucesso, direcionado ao RH para fazer reparo', 'Feito limpeza nos contatos sem sucesso, direcionado ao RH para fazer reparo', '1');
INSERT INTO `ordem` VALUES ('109', '5', '3', 'Jeremias', '1', null, null, '5', '1', 'Solicita 01 leitor', 'loja BS', '2020-03-20', '2020-03-20', '2020-03-23', 'EFETUADO TROCA DE UM LEITOR DE CÓDIGO DE BARRAS', 'EFETUADO TROCA DE UM LEITOR DE CÓDIGO DE BARRAS', 'N', '4');
INSERT INTO `ordem` VALUES ('110', '41', '3', 'Jeremias', '1', null, null, '5', '1', 'Ensinar a Marina a colocar o ribbon na Argox', 'Marina', '2020-03-20', '2020-03-21', '2020-03-21', 'Curso ministrado', 'Curso ministrado', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('111', '47', '2', 'Jaks', '1', null, null, '5', '3', 'Computador do escritório não liga', 'Claudio', '2020-03-20', '0000-00-00', '2020-03-20', 'fonte atx queimada', 'troquei fonte', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('112', '9', '2', 'Jaks', '1', null, null, '5', '3', ' 01 leitor', 'André', '2020-03-20', '2020-03-24', '2020-03-24', ' 01 leitor', ' 01 leitor', ' 01 leitor', '');
INSERT INTO `ordem` VALUES ('113', '18', '3', 'Jeremias', '1', null, null, '5', '2', 'verificar balança nao sobe na rede', 'loja HM', '2020-03-20', '0000-00-00', '2020-03-21', 'efetuado configuração da balança que veio da outra loja', 'efetuado configuração da balança que veio da outra loja', 'n', '1');
INSERT INTO `ordem` VALUES ('114', '25', '3', 'Benedito', '1', null, null, '5', '3', 'loja com balanças queimada, configurar uma balança que chegou de outra loja', 'fernando', '2020-03-21', '2020-03-21', '2020-03-21', 'efetuado configuração de balanças', 'efetuado configuração de balanças', 'n', '7');
INSERT INTO `ordem` VALUES ('115', '27', '3', 'Benedito', '1', null, null, '5', '3', 'Efetuado testes de venda com SAT nos dois caixas sem sucesso, SAT retirado da loja e deixado na loja do Jeremias', 'Maria', '2020-03-21', '2020-03-23', '2020-03-25', 'Efetuado testes de venda com SAT nos dois caixas sem sucesso, SAT retirado da loja e deixado na loja do Jeremias', 'Efetuado testes de venda com SAT nos dois caixas sem sucesso, SAT retirado da loja e deixado na loja do Jeremias', 'sat', '7');
INSERT INTO `ordem` VALUES ('121', '9', '2', 'Jeremias', '1', null, null, '5', '3', 'O Pdv 102 queimou o TEf e um leitor,', 'Nagela', '2020-03-21', '2020-03-24', '2020-03-24', 'O pinpad queimou', 'A Nagela irá ligar na getnet ', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('122', '46', '2', 'Jaks', '1', null, null, '5', '3', 'Computador do escritório travando ', 'Ga', '2020-03-23', '0000-00-00', '2020-03-23', 'HD PAROU', 'TROQUEI O HD', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('123', '4', '3', 'Benedito', '1', null, null, '5', '1', 'ativar windows e configurar relógio de ponto', 'Maria', '2020-03-24', '0000-00-00', '2020-03-24', 'configurado relógio, ativado windows e instalado o switch no rack', 'configurado relógio, ativado windows e instalado o switch no rack\r\n', 'n', '1');
INSERT INTO `ordem` VALUES ('124', '27', '2', 'Jeremias', '1', null, null, '5', '3', 'Pdv 102, está sem conexao, feito teste e conexao oscila', 'Marielene', '2020-03-25', '0000-00-00', '2020-03-25', 'Sat não vende', 'Retirei o sat', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('125', '21', '2', 'Jeremias', '1', null, null, '5', '3', 'Troca de teclado do pdv 104 e uma empresa laser', 'Loja JS', '2020-03-25', '2020-03-25', '2020-03-25', 'Teclado e impressora não funcionam', 'Troquei ambos', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('126', '33', '3', 'Benedito', '1', null, null, '5', '1', 'Organizar fios do escritório do local onde ficava o servidor sys', 'Gustavo', '2020-03-26', '0000-00-00', '2020-03-27', 'FEITO ORGANIZAÇÃO DE FIOS', 'FEITO ORGANIZAÇÃO DE FIOS', 'N', '1');
INSERT INTO `ordem` VALUES ('127', '1', '3', 'Benedito', '1', null, null, '5', '1', 'Instalar micro do escritório.', 'jusara', '2020-03-26', '0000-00-00', '2020-03-27', 'instalado micro do escritorio', 'instalado micro do escritorio', 'treinamento para fiscal', '1');
INSERT INTO `ordem` VALUES ('128', '4', '3', 'Benedito', '1', null, null, '5', '1', 'RECONFIGURAR ANTENA WI-FI E BLOQUEAR USUÁRIO FORA DA LOJA.', 'JUNIOR', '2020-03-26', '0000-00-00', '2020-03-30', 'antena reconfigurada, feito mudança de layout, testes ok', 'antena reconfigurada, feito mudança de layout, testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('129', '47', '2', 'Jaks', '1', null, null, '5', '3', 'PDV 101 NÃO PASSA TEF ( TROCAR A TANCA )', 'Samia', '2020-03-26', '2020-03-27', '2020-03-27', 'PIN PAd desligando ao passar cartão', 'Troquei a tanca', 'Nenhuma', '7');
INSERT INTO `ordem` VALUES ('130', '30', '3', 'Jeremias', '1', null, null, '5', '2', 'Verificar sat  do pdv 103, luz SERV apagada e nao dá rede', 'Thais', '2020-03-26', '0000-00-00', '2020-03-27', 'troca de cabo do sat testes ok', 'troca de cabo do sat testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('131', '42', '3', 'Jeremias', '1', null, null, '5', '3', 'Verifcar sat pdv 103 sem rede', 'Loja TS', '2020-03-26', '2020-03-27', '2020-03-27', 'eliminado mau contato do ponto de rede, testes ok', 'eliminado mau contato do ponto de rede, testes ok', 'n', '7');
INSERT INTO `ordem` VALUES ('132', '26', '11', 'Jeremias', '1', null, null, '5', '2', 'Verificar portas externas bloqueadas', 'Sr. Monteiro', '2020-03-26', '0000-00-00', '2020-03-30', 'Dvr bloqueado', 'reiniciado dvr - ok', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('133', '25', '1', 'Jeremias', '1', null, null, '5', '2', 'Configurar balança que saiu da loja HM', 'gerente: Fernando', '2020-03-26', '2020-03-27', '2020-03-27', 'configurar rede', 'configuração remoto', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('134', '6', '1', 'Jeremias', '1', null, null, '5', '2', 'Verificar código 22482 não vai pra balança', 'Loja CA', '2020-03-26', '0000-00-00', '2020-03-27', 'incluir o produto', 'incluir o produto', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('135', '26', '1', 'Jeremias', '1', null, null, '5', '2', 'Verificar código 22482 não vai pra balança', 'Angela', '2020-03-26', '0000-00-00', '2020-03-27', 'esqueceu de enviar  ( incluir )', 'incluir produtos', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('136', '17', '11', 'Jeremias', '1', null, null, '5', '1', 'configurar impressora no logus', 'Geralda', '2020-03-27', '0000-00-00', '2020-03-30', 'configurado uma nova impressora', 'configurado uma nova impressora', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('137', '43', '2', 'Jeremias', '1', null, null, '5', '2', 'Pdv nao está ligando', 'Gerente Pedro', '2020-03-27', '0000-00-00', '2020-03-27', 'troca da tanca', 'troca da tanca', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('138', '1', '2', 'Jeremias', '1', null, null, '5', '1', 'Verificar impressora laser, nao imprime', 'Loja Ac', '2020-03-27', '2020-03-28', '2020-03-28', 'impressora não estava imprimindo', 'trocou o cabo de porta usb', 'Nenhuma', '4');
INSERT INTO `ordem` VALUES ('139', '18', '2', 'Jeremias', '1', null, null, '5', '1', 'A senha de logon do windows foi alterada, configurar mataburro', 'Dora', '2020-03-27', '2020-03-28', '2020-03-28', 'senha de logon', 'resetei a senha', 'nenhuma', '4');
INSERT INTO `ordem` VALUES ('140', '36', '2', 'Jaks', '1', null, null, '5', '1', '01 Leitor de código de Barras', 'Dora', '2020-03-28', '0000-00-00', '2020-03-31', '01 leitor', '01 leitor', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('141', '46', '2', 'Jeremias', '1', null, null, '5', '3', 'Sistema MGV6 nao acessa o banco de dados da balança', 'Gabrielly', '2020-03-28', '0000-00-00', '2020-03-31', 'Trocar micro', 'Troquei micro ', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('142', '44', '3', 'Jeremias', '1', null, null, '5', '3', 'Configurar o Ubiquiti - adopt com erro', 'Mario -TI', '2020-03-28', '0000-00-00', '2020-04-06', 'efetuado efetuado reset do ubiquiti com ajuda do augusto e viviane, testes ok', 'efetuado efetuado reset do ubiquiti com ajuda do augusto e viviane, testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('143', '40', '3', 'Benedito', '1', null, null, '5', '1', 'mau contato na tomada do caixa 101, necessário refazer a tomada', 'camila', '2020-03-29', '0000-00-00', '2020-03-30', 'eliminado mau contato do switch testes ok', 'eliminado mau contato do switch testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('144', '36', '3', 'Benedito', '1', null, null, '5', '1', 'no-break do pdv 103 inoperante', 'eli', '2020-03-29', '0000-00-00', '2020-03-29', 'problemas na tomada', 'problemas na tomada', 'n', '1');
INSERT INTO `ordem` VALUES ('145', '26', '3', 'Benedito', '1', null, null, '5', '1', 'micro não liga, eliminado mau contato das memorias testes ok', 'guma', '2020-03-30', '0000-00-00', '2020-03-30', 'micro não liga, eliminado mau contato das memorias testes ok', 'micro não liga, eliminado mau contato das memorias testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('146', '18', '2', 'Jeremias', '1', null, null, '5', '2', 'Verificar relogio com papel enroscado', 'Dora', '2020-03-30', '0000-00-00', '2020-03-31', 'Rolete nao gira', 'Moto do rolete', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('147', '36', '2', 'Jeremias', '1', null, null, '5', '3', 'Pdv 103, nobreak, monitor e tanca queimados', 'Dora', '2020-03-30', '0000-00-00', '2020-03-31', 'PDV na ligam', 'Troquei  1 tanca e 1 fonte', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('148', '46', '11', 'Jeremias', '1', null, null, '5', '2', 'Reinstalar ifractal', 'gabrielly', '2020-03-31', '0000-00-00', '2020-03-31', 'maquina trocada ', 'reinstalado o ifractal', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('149', '25', '3', 'Benedito', '1', null, null, '5', '1', 'configuração de balança de retorno da assistência, balanças direcionada a assistência ', 'fernando', '2020-03-31', '0000-00-00', '2020-03-31', 'configuração de balança de retorno da assistência, balanças direcionada a assistência ', 'configuração de balança de retorno da assistência, balanças direcionada a assistência ', 'n', '1');
INSERT INTO `ordem` VALUES ('150', '30', '3', 'Jeremias', '1', null, null, '5', '3', 'Cancelar a internet - 5841-7779 - cnpj 08170468000136', 'Setor Tecnologia', '2020-03-31', '0000-00-00', '2020-04-06', ' linha telefonica da loja NT concelada protocolo: 20206118620369', '\r\nlinha telefonica da loja NT concelada protocolo: 20206118620369\r\n', 'N', '1');
INSERT INTO `ordem` VALUES ('151', '24', '2', 'Jaks', '1', null, null, '5', '1', 'Troquei fonte ', 'Alessandra', '2020-03-31', '0000-00-00', '2020-03-31', 'Fonte atx queimou', 'Troquei a fonte ', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('152', '26', '2', 'Benedito', '1', null, null, '5', '3', 'trocar pdv com usb quebrada', 'Maria', '2020-04-01', '2020-04-01', '2020-04-01', 'trocar cpu', 'troquei a tanca', 'nenhuma', '7');
INSERT INTO `ordem` VALUES ('153', '27', '2', 'Jaks', '1', null, null, '5', '2', 'Levar o sat do caixa 02', 'Marilene', '2020-04-01', '0000-00-00', '2020-04-02', 'trocar sat', 'troquei sat do caixa 2', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('154', '41', '3', 'Jaks', '1', null, null, '5', '1', 'impressora argox o ribbon enrolou na engrenagem', 'Marina', '2020-04-02', '0000-00-00', '2020-04-04', 'configurado argox testes ok', 'configurado argox testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('155', '30', '3', 'Jaks', '1', null, null, '5', '1', 'Argox imprimindo em branco', 'Thais', '2020-04-02', '0000-00-00', '2020-04-03', 'configurado agox testes ok', 'configurado agox testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('156', '30', '2', 'Jaks', '1', null, null, '5', '1', 'Argox imprimindo em branco', 'Thais', '2020-04-02', '0000-00-00', '2020-04-02', 'Teste', 'Duplicado', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('157', '26', '2', 'Jaks', '1', null, null, '5', '1', '01 teclado caixa 2', 'CRISTIANA', '2020-04-02', '0000-00-00', '2020-04-03', 'não precisou mais', 'cancelado o pedido', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('158', '27', '2', 'Jaks', '1', null, null, '5', '1', 'TROCAR HD DO CAIXA 02 NÃO ESTÁ RECONHECENDO O SAT.', 'MARILENE', '2020-04-02', '0000-00-00', '2020-04-03', 'trocar hd caixa2', 'foi trocado o hd do caixa 2', 'sat não vende', '1');
INSERT INTO `ordem` VALUES ('159', '39', '2', 'Jaks', '1', null, null, '5', '3', 'pdv 3 sem conexão', 'Ronaldo', '2020-04-03', '0000-00-00', '2020-04-03', 'cabo de rede quebrado', 'troquei o cabo de rede', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('160', '6', '3', 'Benedito', '1', null, null, '5', '1', 'mudança de escritório para frente de caixa, primeira etapa ', 'Marri', '2020-04-04', '0000-00-00', '2020-04-04', 'feito medidas para instalação de equipamentos', 'feito medidas para instalação de equipamentos', 'n', '1');
INSERT INTO `ordem` VALUES ('161', '27', '3', 'Jaks', '1', null, null, '5', '3', 'Trocar a tanca do pdv 2, usbs não funcionam ', 'Marilene', '2020-04-05', '0000-00-00', '2020-04-06', 'Efetuado a troca da tanca do caixa 102, testes de vendas ok', 'Efetuado a troca da tanca do caixa 102, testes de vendas ok', 'N', '1');
INSERT INTO `ordem` VALUES ('162', '16', '3', 'Benedito', '1', null, null, '5', '1', '2 leitores', 'claudia', '2020-04-06', '0000-00-00', '2020-04-06', 'Efetuado a troca de dois leitores, testes ok', 'Efetuado a troca de dois leitores, testes ok', 'N', '1');
INSERT INTO `ordem` VALUES ('163', '36', '3', 'Benedito', '1', null, null, '5', '1', 'relógio de ponto fora', 'dora', '2020-04-06', '0000-00-00', '2020-04-06', 'Relógio ligado com ajuda do gerente ELI ', 'Relógio ligado com ajuda do gerente ELI ', 'n', '1');
INSERT INTO `ordem` VALUES ('164', '51', '3', 'Benedito', '1', null, null, '5', '1', 'configurar impressora no logus da Jaciara.', 'edvania', '2020-04-06', '0000-00-00', '2020-04-06', 'decidiu aguardar a impressora nova', 'decidiu aguardar a impressora nova', 'N', '1');
INSERT INTO `ordem` VALUES ('165', '6', '2', 'Benedito', '1', null, null, '5', '1', 'relógio de ponto fora, tentativa de desligar e ligar sem sucesso', 'Maria', '2020-04-06', '0000-00-00', '2020-04-06', 'Cabo rede rompido', 'Troca de RJ 45', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('166', '18', '2', 'Jaks', '1', null, null, '5', '3', 'Levar um Nobreak PDV 102', 'Marias Das Dores', '2020-04-06', '0000-00-00', '2020-04-06', 'voltou a energia', 'voltou a energia', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('167', '51', '3', 'Jaks', '1', null, null, '5', '3', 'tela azul do windows ', 'Jaciara', '2020-04-06', '0000-00-00', '2020-04-08', 'Efetuado a troca do micro do comercial', 'Efetuado a troca do micro do comercial', 'n', '1');
INSERT INTO `ordem` VALUES ('168', '38', '2', 'Benedito', '1', null, null, '5', '3', 'monitor', 'Dany', '2020-04-07', '2020-04-07', '2020-04-07', 'Monitor Queimado', 'troquei o monitor', 'nenhuma', '7');
INSERT INTO `ordem` VALUES ('169', '49', '3', 'Jaks', '1', null, null, '5', '3', 'Colocar um micro no escritório para venda telemarketing', 'Vandinho', '2020-04-07', '0000-00-00', '2020-04-08', 'Alinhado com a loja que tão logo chegue o funcionário novo nos avise para que seja feito a instalação do micro', 'Alinhado com a loja que tão logo chegue o funcionário novo nos avise para que seja feito a instalação do micro', 'n', '1');
INSERT INTO `ordem` VALUES ('170', '39', '2', 'Benedito', '1', null, null, '5', '1', 'Cabo RJ11 do modem perdendo conexão, necessário a troca; verificar também se a tomada rj11 no modem da vivo está com mau contato, caso sim necessário ', 'Gabriela', '2020-04-08', '0000-00-00', '2020-04-21', 'Cabo rede rompido', 'Troquei o cabo', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('171', '6', '3', 'Benedito', '1', null, null, '5', '1', 'Instalado tomada de rede para o caixa 102, instalado micro do escritório no caixa 102.', 'Petrina', '2020-04-08', '0000-00-00', '2020-04-08', 'Instalado tomada de rede para o caixa 102, instalado micro do escritório no caixa 102.', 'Instalado tomada de rede para o caixa 102, instalado micro do escritório no caixa 102.', 'n', '1');
INSERT INTO `ordem` VALUES ('172', '45', '2', 'Benedito', '1', null, null, '5', '1', 'relógio de ponto', 'paula', '2020-04-09', '0000-00-00', '2020-04-11', 'relógio sem rede', 'coloquei o cabo', 'nenhuma', '1');
INSERT INTO `ordem` VALUES ('173', '8', '2', 'Jaks', '1', null, null, '5', '3', 'PDV 01 DESLIGANDO', 'Gilson', '2020-04-09', '2020-04-11', '2020-04-11', 'tanca desligando', 'troquei a tanca', 'nenhuma', '7');
INSERT INTO `ordem` VALUES ('174', '8', '2', 'Jaks', '1', null, null, '5', '2', 'CABO DE REDE DO CAIXA 102 MAU CONTATO PRECISA TROCAR O RJ45', 'CINARA', '2020-04-11', '0000-00-00', '2020-04-14', 'Trocar Rj45', 'Troquei o rj45', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('175', '21', '3', 'Benedito', '1', null, null, '5', '2', ' pdv 102 desligando, levar 2 leitores', 'ariadne', '2020-04-11', '2020-04-12', '2020-04-13', 'Eliminado mau contato do pdv 102 e troca de 2 leitores, testes ok', 'Eliminado mau contato do pdv 102 e troca de 2 leitores, testes ok', 'n', '4');
INSERT INTO `ordem` VALUES ('176', '36', '3', 'Benedito', '1', null, null, '5', '2', 'pdv 102 desligando.', 'Dora', '2020-04-12', '0000-00-00', '2020-04-13', 'Feito acompanhamento do pdv e mesmo não apresentou instabilidade', 'Feito acompanhamento do pdv e mesmo não apresentou instabilidade', 'n', '1');
INSERT INTO `ordem` VALUES ('177', '45', '3', 'Benedito', '1', null, null, '5', '2', 'necessário reparo da tomada de rede do relógio de ponto com mau contato ( o cabo do relógio passa pela parede e entre para dentro do escritório)', 'Alison', '2020-04-13', '0000-00-00', '2020-04-14', 'feito novo ponto de rede, canaleta,  testes ok', 'feito novo ponto de rede, canaleta,  testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('178', '9', '2', 'Jaks', '1', null, null, '5', '2', 'Rélogio de ponto sem conexão', 'Nagela', '2020-04-14', '0000-00-00', '2020-04-14', 'Relógio sem conexão', 'Conectei o cabo de rede', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('179', '8', '2', 'Jaks', '1', null, null, '5', '2', 'Cabo de rede do caixa 2 mau contato.', 'Cinara', '2020-04-14', '0000-00-00', '2020-04-16', 'PDV 2 sem rede', 'Refiz o cabo', 'Nenhuma', '1');
INSERT INTO `ordem` VALUES ('180', '24', '3', 'Benedito', '1', null, null, '5', '1', 'Micro da gerencia sem apoio no suporte', 'andressa', '2020-04-15', '0000-00-00', '2020-04-16', 'feito instalação do micro da gerencia e organizado fios, limpeza do relógio de ponto testes ok', 'feito instalação do micro da gerencia e organizado fios, limpeza do relógio de ponto testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('181', '6', '3', 'Benedito', '1', null, null, '5', '1', 'Impressora nao liga', 'petrina', '2020-04-15', '0000-00-00', '2020-04-15', 'identificado problema na impressora, direcionado ao Fabio', 'identificado problema na impressora, direcionado ao Fabio', 'n', '1');
INSERT INTO `ordem` VALUES ('182', '12', '3', 'Benedito', '1', null, null, '5', '1', 'Instalar micro novo noescritorio central', 'celiane', '2020-04-15', '0000-00-00', '2020-04-15', 'Efetuado instalaçao do micro do escritorio central, testes ok, instalado impressoras', 'Efetuado instalaçao do micro do escritorio central, testes ok, instalado impressoras', 'n', '1');
INSERT INTO `ordem` VALUES ('183', '22', '3', 'Benedito', '1', null, null, '5', '1', 'configurado balança testes ok', 'amanda', '2020-04-15', '0000-00-00', '2020-04-15', 'efetuado configuraçao da balança testes ok', 'efetuado configuraçao da balança testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('184', '6', '3', 'Benedito', '1', null, null, '5', '1', 'retirar modem 4G e acompanhar instalação da fibra ótica', 'Petrina', '2020-04-16', '0000-00-00', '2020-04-22', 'Retirado modem 4G e feito ligação do modem de fibra ótica, testes ok', 'Retirado modem 4G e feito ligação do modem de fibra ótica, testes ok', 'N', '1');
INSERT INTO `ordem` VALUES ('185', '22', '3', 'Benedito', '1', null, null, '5', '3', 'desinstalar o balcão de caixa.', 'Aline', '2020-04-16', '2020-04-30', '2020-04-30', 'feito instalação do novo caixa, instalado antena wi-fi e impressora', 'feito instalação do novo caixa, instalado antena wi-fi e impressora', 'n', '7');
INSERT INTO `ordem` VALUES ('186', '35', '3', 'Benedito', '1', null, null, '5', '1', 'configuraçao debalancas', 'silvana', '2020-04-16', '0000-00-00', '2020-04-16', 'configuraçao debalancas', 'configuraçao debalancas', 'n', '1');
INSERT INTO `ordem` VALUES ('187', '25', '3', 'Jaks', '1', null, null, '5', '3', 'CONFIGURAR 2 BALANÇAS QUE CHEGOU DO CONSERTO ', 'Fernando', '2020-04-16', '2020-04-17', '2020-04-17', 'balança não conecta a rede, direcionado a assistência.', 'balança não conecta a rede, direcionado a assistência.', 'n', '1');
INSERT INTO `ordem` VALUES ('188', '36', '3', 'Jaks', '1', null, null, '5', '1', '01 Leitor ', 'DORA', '2020-04-16', '0000-00-00', '2020-04-20', 'Efetuado a troca do Leitor, testes ok', 'Efetuado a troca do Leitor, testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('189', '14', '3', 'Jaks', '1', null, null, '5', '2', 'Ubiquiti mau contato.', 'Paula', '2020-04-17', '0000-00-00', '2020-04-18', 'refeito cabo, testes ok', 'refeito cabo, testes ok', 'N', '1');
INSERT INTO `ordem` VALUES ('190', '48', '3', 'Jaks', '1', null, null, '5', '3', 'Levar 01 monitor para o caixa 01 *Urgente*', 'Kaique', '2020-04-17', '0000-00-00', '2020-04-18', 'Efetuado a troca do monitor testes ok', 'Efetuado a troca do monitor testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('191', '7', '3', 'Benedito', '1', null, null, '5', '3', 'impressora de caixa não liga', 'maria', '2020-04-18', '2020-04-30', '2020-04-30', 'Feito configuração das balanças, testes ok', 'Feito configuração das balanças, testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('192', '22', '3', 'Benedito', '1', null, null, '7', '3', 'ligar pdv 102', 'tiao', '2020-04-18', '2020-04-30', '0000-00-00', 'ligar pdv 102 na rede', 'Eliminado mau contato da rede testes ok', 'n', '1');
INSERT INTO `ordem` VALUES ('193', '1', '12', 'Benedito', '1', null, null, '4', '1', 'Concluir instalação micro do escritório da loja AC & treinamento para fiscal das 12hs as 20hs ', 'juçara', '2020-04-22', '0000-00-00', '0000-00-00', null, null, null, '1');
INSERT INTO `ordem` VALUES ('194', '30', '12', 'Jaks', '1', null, null, '4', '1', 'LEVAR 02 TECLADOS 01 MOUSE E 01 LEITOR.', 'TAIS', '2020-04-22', '0000-00-00', '0000-00-00', null, null, null, '1');
INSERT INTO `ordem` VALUES ('195', '24', '12', 'Jeremias', '1', null, null, '4', '2', 'Reinstalar Ifractal', 'Equipe T.I', '2020-04-22', '2020-04-30', null, '', '', '', '4');
INSERT INTO `ordem` VALUES ('196', '1', '12', 'Jeremias', '2', null, null, '4', '1', 'Teste de atendimento  interno', 'Equipe T.I', '2020-04-30', '2020-05-01', '0000-00-00', '', '', '', '4');
INSERT INTO `ordem` VALUES ('197', '1', '12', 'Jeremias', '1', null, null, '4', '1', 'Teste de atendimento externo e interno 2', 'Equipe T.I', '2020-04-30', '2020-05-01', '0000-00-00', 'Avaliacao', '43', '43', '4');

-- ----------------------------
-- Table structure for `ponto`
-- ----------------------------
DROP TABLE IF EXISTS `ponto`;
CREATE TABLE `ponto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horario_entrada` time DEFAULT NULL,
  `horario_saida` time DEFAULT NULL,
  `carga` int(2) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ponto
-- ----------------------------
INSERT INTO `ponto` VALUES ('1', '06:00:00', '15:00:00', '8', '1');
INSERT INTO `ponto` VALUES ('2', '07:00:00', '16:00:00', '8', '1');
INSERT INTO `ponto` VALUES ('3', '11:30:00', '20:30:00', '8', '1');
INSERT INTO `ponto` VALUES ('4', '12:00:00', '21:00:00', '8', null);

-- ----------------------------
-- Table structure for `prioridade`
-- ----------------------------
DROP TABLE IF EXISTS `prioridade`;
CREATE TABLE `prioridade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prioridade` varchar(10) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prioridade
-- ----------------------------
INSERT INTO `prioridade` VALUES ('1', 'Normal', '1');
INSERT INTO `prioridade` VALUES ('2', 'Media', '1');
INSERT INTO `prioridade` VALUES ('3', 'Alta', '1');

-- ----------------------------
-- Table structure for `setor`
-- ----------------------------
DROP TABLE IF EXISTS `setor`;
CREATE TABLE `setor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setor
-- ----------------------------
INSERT INTO `setor` VALUES ('1', 'Tecnologia da Informação', '1');
INSERT INTO `setor` VALUES ('2', 'Manutenção', '1');
INSERT INTO `setor` VALUES ('3', 'Almoxarifado', '1');

-- ----------------------------
-- Table structure for `tecnico`
-- ----------------------------
DROP TABLE IF EXISTS `tecnico`;
CREATE TABLE `tecnico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(10) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tecnico
-- ----------------------------
INSERT INTO `tecnico` VALUES ('1', '10126', 'Mario Tiano', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'mario.tiano@ipanemafoods.com.br', 'Rua Benedito Farias Marques filho, 1361', '1147473014', 'Mooca', 'Mogi das Cruzes', '2020-02-29', '1');
INSERT INTO `tecnico` VALUES ('2', '10161', 'Jaks', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'jaks.trindade@ipanemafoods.com.br', 'Avenida Presidente Wilson - 1681', '00000000', 'Mooca', 'Sao paulo', '2020-02-29', '1');
INSERT INTO `tecnico` VALUES ('3', '10164', 'Benedito', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'benedito.soares@ipanemafoods.com.br', 'Avenida Presidente Wilson - 1681', '00000000', 'Mooca', 'Sao Paulo', '2020-02-29', '1');
INSERT INTO `tecnico` VALUES ('11', '10158', 'Jeremias', 'f0ee73df9003ca43916e249abfbefc5a983b346f', 'jeremias.silva@ipanemafoods.com.br', 'Rua Benedito Farias Marques filho, 1361', null, 'Suzano', 'Sao Paulo', '2020-02-29', '1');
INSERT INTO `tecnico` VALUES ('12', '1010', 'Validando', null, 'validando@foods.com.br', 'Endereco', '1111111111', 'Bairro', 'Sao Paulo', '2020-03-02', '1');
INSERT INTO `tecnico` VALUES ('14', '10160', 'Maycon Benicio', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'manutencao@ipanemafoods.com.br', 'Av.Presidente Wilson, 1681', '11985117176', 'Moocas', 'Sao Paulo', '2020-03-02', '1');

-- ----------------------------
-- Table structure for `utilizado`
-- ----------------------------
DROP TABLE IF EXISTS `utilizado`;
CREATE TABLE `utilizado` (
  `id_util` int(11) NOT NULL AUTO_INCREMENT,
  `id_chamado` int(11) DEFAULT NULL,
  `cod_id_produto` int(11) DEFAULT NULL,
  `qtde` int(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_util`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utilizado
-- ----------------------------
INSERT INTO `utilizado` VALUES ('9', '28', '1', '1', '2');
INSERT INTO `utilizado` VALUES ('28', '15', '4', '2', '2');
INSERT INTO `utilizado` VALUES ('32', '24', '8', '3', '2');
INSERT INTO `utilizado` VALUES ('34', '24', '3', '1', '2');
INSERT INTO `utilizado` VALUES ('35', '29', '3', '1', '2');
INSERT INTO `utilizado` VALUES ('38', '49', '4', '2', '2');
INSERT INTO `utilizado` VALUES ('39', '49', '3', '1', '2');
INSERT INTO `utilizado` VALUES ('40', '53', '5', '1', '2');
INSERT INTO `utilizado` VALUES ('41', '57', '18', '1', '2');
INSERT INTO `utilizado` VALUES ('42', '62', '3', '2', '2');
INSERT INTO `utilizado` VALUES ('44', '65', '14', '1', '2');
INSERT INTO `utilizado` VALUES ('46', '72', '17', '1', '2');
INSERT INTO `utilizado` VALUES ('47', '74', '5', '1', '2');
INSERT INTO `utilizado` VALUES ('48', '77', '4', '1', '2');
INSERT INTO `utilizado` VALUES ('49', '84', '6', '1', '2');
INSERT INTO `utilizado` VALUES ('50', '89', '20', '1', '2');
INSERT INTO `utilizado` VALUES ('52', '52', '13', '1', '2');
INSERT INTO `utilizado` VALUES ('53', '98', '5', '1', '2');
INSERT INTO `utilizado` VALUES ('54', '92', '13', '1', '2');
INSERT INTO `utilizado` VALUES ('55', '100', '7', '1', '2');
INSERT INTO `utilizado` VALUES ('56', '100', '17', '2', '2');
INSERT INTO `utilizado` VALUES ('57', '100', '2', '3', '2');
INSERT INTO `utilizado` VALUES ('58', '100', '19', '1', '2');
INSERT INTO `utilizado` VALUES ('59', '100', '4', '2', '1');
INSERT INTO `utilizado` VALUES ('60', '100', '14', '2', '1');
INSERT INTO `utilizado` VALUES ('61', '100', '3', '1', '2');
INSERT INTO `utilizado` VALUES ('62', '100', '23', '1', '1');
INSERT INTO `utilizado` VALUES ('63', '100', '22', '1', '1');
INSERT INTO `utilizado` VALUES ('64', '100', '21', '2', '1');
INSERT INTO `utilizado` VALUES ('65', '100', '23', '1', '1');
INSERT INTO `utilizado` VALUES ('66', '100', '8', '1', '1');
INSERT INTO `utilizado` VALUES ('67', '100', '15', '1', '1');
INSERT INTO `utilizado` VALUES ('68', '101', '4', '2', '2');
INSERT INTO `utilizado` VALUES ('69', '101', '17', '1', '2');
INSERT INTO `utilizado` VALUES ('70', '98', '20', '1', '2');
INSERT INTO `utilizado` VALUES ('71', '109', '4', '1', '2');
INSERT INTO `utilizado` VALUES ('73', '112', '4', '1', '2');
INSERT INTO `utilizado` VALUES ('75', '125', '22', '1', '2');
INSERT INTO `utilizado` VALUES ('76', '125', '5', '1', '2');
INSERT INTO `utilizado` VALUES ('77', '129', '17', '1', '2');
INSERT INTO `utilizado` VALUES ('78', '152', '17', '1', '2');
INSERT INTO `utilizado` VALUES ('79', '168', '2', '1', '2');
INSERT INTO `utilizado` VALUES ('80', '173', '17', '1', '2');
