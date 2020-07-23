-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb22.awardspace.net
-- Generation Time: 17-Maio-2020 às 10:03
-- Versão do servidor: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3156816_servicodb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `id_atendimento` int(10) NOT NULL,
  `descricao` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`id_atendimento`, `descricao`) VALUES
(1, 'Externo'),
(2, 'Remoto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamado_status`
--

CREATE TABLE `chamado_status` (
  `id_chamado` int(11) NOT NULL,
  `descricao_chamado` varchar(50) DEFAULT NULL,
  `status` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `chamado_status`
--

INSERT INTO `chamado_status` (`id_chamado`, `descricao_chamado`, `status`) VALUES
(1, 'Atendido', '1'),
(2, 'Em Atendimento', '1'),
(3, 'Pendente', '1'),
(4, 'Novo', '1'),
(5, 'Fechado', '1'),
(6, 'Aguard-Peça', '1'),
(7, 'Reaberto', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `razao` varchar(150) DEFAULT NULL,
  `apelido` varchar(50) NOT NULL,
  `endereco` varchar(120) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `regiao` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id`, `razao`, `apelido`, `endereco`, `bairro`, `cidade`, `estado`, `regiao`, `lat`, `lng`, `status`) VALUES
(1, 'MERCADÃO DE CARNES NOVILHÃO LTDA', 'AC ', 'R. ABILIO CESAR, 212', 'JARDIM SORAIA', 'SAO PAULO', 'SP', 'SUL', '', '', NULL),
(3, 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'CF', ' RUA CONSELHEIRO FURTADO,1162', 'LIBERDADE', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(4, 'CASA DE CARNES NOVA PARISIENE LTDA - EPP', 'NL', 'AVENIDA PROF. CELESTINO BOURROUL,1037', 'LIMAO', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(5, 'CASA DE CARNES QUALIBEEF DA P.INGLESA LTDA EPP', 'QA', 'AVENIDA GENERAL ATALIBA LEONEL,3587', 'PARADA INGLESA', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(6, 'COMERCIAL DE ALIM.IPANEMA-FOODS-EIRELI', 'AT', 'RUA IPANEMA ,260', 'SAO PAULO', 'BRAS', 'SP', 'CENTRO', '', '', NULL),
(7, 'CASA DE CARNES NOVILHÃO DOS AUTONOMISTAS LTDA', 'AU', 'AVENIDA DOS AUTONOMISTAS,5089', 'VILA YARA', 'OSASCO', 'SP', 'OESTE', '', '', NULL),
(8, 'CASA DE CARNES NOVILHÃO DE ITAPEVI LTDA', 'BB', 'ESTRADA VELHA DE ITAPEVI,4326', 'VILA MILITAR', 'BARUERI', 'SP', 'OESTE', '', '', NULL),
(9, 'COMERCIAL DE ALIM.IPANEMA FOODS EIRELI', 'BO', 'RUA CLIMACO BARBOSA,21', 'CAMBUCI', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(11, 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'BS', 'PRACA DA SE,146', 'CENTRO', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(12, 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'CA', 'RUA DO GLICERIO,8', 'LIBERDADE', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(14, 'MERCADÃO DE CARNES NOVILHÃO LTDA-EPP', 'CL', 'RUA PROFESSORA NINA STOCCO,943', 'JD. CATANDUVA', 'SAO PAULO', 'SP', 'SUL', '', '', NULL),
(15, 'COMERCIAL DE ALIM.IPANEMA FOODS EIRELI', 'CN', 'AV.ACADEMIA DE SAO PAULO,245', 'JD CAMARGO NOVO', 'ITAIM PAULISTA', 'SP', 'LESTE', '', '', NULL),
(17, 'MERCADAO DE CARNES NOVILHAO LTDA-EPP', 'CR', 'ESTRADA DE ITAPECERICA,3770', 'CAPAO REDONDO', 'SAO PAULO', 'SP', 'SUL', '', '', NULL),
(18, 'CASA DE CARNES NOVA PARISIENE - JD LTDA - EPP', 'DJ', 'EST DOM JOAO NERY,3472', 'JARDIM BARTIRA', 'SAO PAULO', 'SP', 'LESTE', '', '', NULL),
(21, 'COMERCIAL DE ALIM.IPANEMA -FOODS-EIRELI', 'FA', 'AVENIDA ITABERABA,5240', 'ITABERABA', 'SAO PAULO', 'SP', 'NORTE', '', '', NULL),
(22, 'COMER.DE ALIMEN.IPANEMA FOODS-EIRELI', 'FC', 'RUA DA CANTAREIRA,291 ', 'CENTRO HISTORICO DE SAO PAULO', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(23, 'COMERCIAL DE ALIM. IPANEMA FOODS-EIRELI', 'FM', 'PRACA 14 BIS,106', 'BELA VISTA', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(24, 'COMERCIAL DE ALIMENTOS IPANEMA FOODS-EIRELI', 'FO', 'AV. PRESIDENTE WILSON,1681', 'MOOCA', 'SAO PAULO', 'SP', 'LESTE', '', '', NULL),
(25, 'CASA DE C. SUPER BOI HELENA MARIA LTDA', 'HM', 'AV.PRESIDENTE COSTA E SILVA,288', 'JD. HELENA MARIA', 'OSASCO', 'SP', 'OESTE', '', '', NULL),
(26, 'CASA DE CARNES NOVA PARISIENE - JD LTDA - EPP', 'IS', 'AV. INAJAR DE SOUZA,1150', 'LIMAO ', 'SAO PAULO', 'SP', 'NORTE', '', '', NULL),
(27, 'MERCADÃO DE CARNES NOVILHÃO LTDA - EPP', 'JB', 'AV. ITAQUI,53', 'JARDIM BEVAL', 'BARUERI', 'SP', 'OESTE', '', '', NULL),
(28, 'MERCADAO DE CARNES NOVILHAO LTDA-EPP', 'JS', 'AV. MUNICIPAL,455', 'JD.SILVEIRA', 'BARUERI', 'SP', 'OESTE', '', '', NULL),
(30, 'CASA DE CARNES PARISIENE DA LIBERDADE LTDA', 'LI', ' AV. LIBERDADE,66', 'CENTRO', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(31, 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'LV', 'AV.LINS DE VASCONCELOS, 1330', 'CAMBUCI', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(32, 'CASA DE CARNES NOVA PARISIENE -JD LTDA-EPP', 'MO', 'RUA TUIM VILA UBERABINHA,595', 'MOEMA', 'SAO PAULO', 'SP', 'SUL', '', '', NULL),
(33, 'MERCADÃO DE CARNES NOVILHÃO LTDA EPP', 'NA', 'AV DOS AUTONOMISTAS,7202', 'COMONDANTE SAMPAIO', 'OSASCO', 'SP', 'OESTE', '', '', NULL),
(34, 'MERCADAO DE CARNES NOVILHAO LTDA - EPP ', 'NB', 'R FREI HENRIQUE SOARES DE COIMBRA,3', 'PARQUE IMPERIAL', 'BARUERI', 'SP', 'OESTE', '', '', NULL),
(35, 'COMERCIAL DE ALIM.IPANEMA FOODS-EIRELI', 'NC', 'AV.RANGEL PESTANA,1974 ', 'BRAS', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(36, 'CASA DE CARNES NOVILHÃO DE OSASCO LTDA', 'NO', 'AV.ANTONIO CARLOS COSTA,529', 'JARDIM CIPAVA', 'OSASCO', 'SP', 'OESTE', '', '', NULL),
(37, 'MERCADÃO DE CARNES NOVILHÃO LTDA-EPP', 'NS', 'AV JOAO DE ANDRADE,1380 ', 'J.D SANTO ANTONIO', 'OSASCO', 'SP', 'OESTE', '', '', NULL),
(38, 'MERCADÃO DE CARNES NOVILHÃO LTDA-EPP', 'NT', 'R. DOUTOR JOVIANO PACHECO DE AGUIRRE,179', 'SAO PAULO-SP', 'JD. VILA ANTONIO', 'SP', 'SUL', '', '', NULL),
(39, 'MERCADÃO DE CARNES NOVILHÃO LTDA-EPP', 'NU', 'AV. JOAO PAULO II,1573', 'JD. TEREZA', 'EMBU DAS ARTES', 'SP', 'SUL', '', '', NULL),
(40, 'PARISIENSE CARNES LTDA - EPP', 'PA', 'RUA PADRE JOAO MANOEL,574', 'CERQUEIRA CESAR', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(41, 'COMERCIAL  DE ALIM.IPANEMA-FOODS-EIRELI', 'PB', 'RUA JOAQUIM NABUCO,581 ', 'BRAS', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(42, 'MERCAD?O DE CARNES NOVIL?O LTDA-EPP', 'PC', 'RUA CACHOEIRA,1669', 'CATUMBI', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(43, 'MERCADÃO DE CARNES NOVILÃO LTDA-EPP', 'PI', 'AV.CARLOS LACERDA,1427', 'JD. ROSANA', 'SAO PAULO', 'SP', 'SUL', '', '', NULL),
(44, 'CASA DE CARNES SUPER PARISIENE LTDA', 'PO', 'AV.JOAO VENTURA DOS SANTOS,2003 ', 'JD BARONESA', 'OSASCO', 'SP', 'OESTE', '', '', NULL),
(45, 'CASA DE CARNES NOVA PARISIENE JD LTDA', 'RB', 'AVENIDA RIO BRANCO,200 ', 'CENTRO', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(46, 'COMERCIAL DE ALIM.IPANEMA FOODS EIRELI', 'RC', 'AV RAGUEB CHOHFI,2803', 'PQ BOA ESPERANCA', 'SAO PAULO', 'SP', 'LESTE', '', '', NULL),
(48, 'COMERCIAL DE ALIM.IPANEMA FOODS - EIRELLI', 'SD', 'RUA SABBADO D`ANGELO,2041', 'ITAQUERA', 'SAO PAULO', 'SP', 'LESTE', '', '', NULL),
(49, 'CASA DE CARNES NOVA PARISIENE-JD LTDA E.P.P', 'SI', 'AV. RAGUEB CHOHFI,4656', 'J.D IGUATEMI', 'SAO MATEUS', 'SP', 'LESTE', '', '', NULL),
(50, 'MERCADÃO DE CARNES NOVILHÃO LTDA EPP', 'SP', 'AV. SAO PAULO,350', 'CIDADE  INTERCAP', 'TABOAO DA SERRA', 'SP', 'SUL', '', '', NULL),
(51, 'CASA DE CARNES NOVILHÃO DO PARQUE PINHEIROS LTDA EPP', 'TA', 'AV. LAURITA ORTEGA MARI,Parque Pinheiros,1993', 'TABOAO DA SERRA', 'SAO PAULO', 'SP', 'SUL', '', '', NULL),
(52, 'COMER.  DE ALIMENTOS IPANEMA FOODS EIRELI', 'TL', 'RUA HUMAITA,239', 'BELA VISTA', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(53, 'MERCADAO DE CARNES NOVILHAO LTDA - EPP', 'TS', 'EST BENEDITO CESARIO DE OLIVEIRA,525', 'JARDIM RECORD', 'TABOAO DA SERRA', 'SP', 'SUL', '', '', NULL),
(54, 'COMERCIAL DE ALIM. IPANEMA FODS EIRELI', 'XT', 'RUA CORONEL XAVIER DE TOLEDO,66', 'REPUBLICA', 'SAO PAULO', 'SP', 'CENTRO', '', '', NULL),
(55, 'CASA DE CARNES NOVILHÃO DE SOROCABA LTDA', 'SO', 'AV.PAULO EMANUEL DE ALMEIDA,253', 'IPIRANGA', 'SOROCABA', 'SP', 'INTERIOR', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id_produto` int(11) NOT NULL,
  `item` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `qtde_entrada` int(10) DEFAULT NULL,
  `qtde_saida` int(10) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id_produto`, `item`, `descricao`, `qtde_entrada`, `qtde_saida`, `valor`, `status`) VALUES
(2, 'Monitor', 'Monitor lcd widescreen 19\'\'', 5, NULL, 750.00, '1'),
(3, 'Nobreak Usado', 'Nobreak Recondicionado', 1, NULL, 300.00, '1'),
(4, 'Leitor ', 'Leitor de codigo de barra', 1, NULL, 1.00, '1'),
(5, 'Teclado', 'Teclado usb', 1, NULL, 1.00, '1'),
(6, 'Mouse', 'Mouse usb', 1, NULL, 1.00, '1'),
(7, 'Computador', 'Computador de escritrio', 1, NULL, 1.00, '1'),
(8, 'Ubiquiti', 'antena wifi', 1, NULL, 1.00, '1'),
(13, 'Sat', 'Sat Dimep', 0, 0, 665.00, '1'),
(14, 'Nobreak Novo', 'Nobreak Novo com garantia', 0, 0, 600.00, '1'),
(15, 'Telefone com fio', 'Telefone basico com fio', 0, 0, 70.00, '1'),
(16, 'Telefone sem fio', 'Telefone sem fio', 0, 0, 150.00, '1'),
(17, 'Tanca', 'Mini computador PDV', 0, 0, 600.00, '1'),
(18, 'Microtik Usado', 'Servidor para controle de acesso, firewall e VPN', 0, 0, 300.00, '1'),
(19, 'Microtic Novo', 'Servidor para controle de acesso, firewall e VPN', 0, 0, 600.00, '1'),
(20, 'Switch 8 portas', 'Switch com 8 portas Dlink', 0, 0, 150.00, '1'),
(21, 'Impressora térmica', 'impressora impressao de cupon pdv', 0, 0, 600.00, '1'),
(22, 'Impressora laser', 'impressora laser A4', 0, 0, 400.00, '1'),
(23, 'Gaveta', 'Gaveta para uso do pdv', 0, 0, 290.00, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao`
--

CREATE TABLE `funcao` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `status` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcao`
--

INSERT INTO `funcao` (`id`, `descricao`, `status`) VALUES
(1, 'Técnico de Informatico', '1'),
(2, 'Tecnico em Telefonia', '1'),
(3, 'Técnico em Rede', '1'),
(4, 'Analista de Sistema', '1'),
(5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `id` int(11) NOT NULL,
  `loja` varchar(2) DEFAULT NULL,
  `telefone` varchar(150) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `grupo` varchar(20) DEFAULT NULL,
  `regiao` varchar(20) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`id`, `loja`, `telefone`, `nome`, `endereco`, `cep`, `cnpj`, `grupo`, `regiao`, `status`) VALUES
(1, 'AC', '5872-5617/5872-6121', 'MERCADÃO DE CARNES NOVILHÃO LTDA', 'RUA ABILIO CESAR, 212 TR JD JANGADEIRO', '05881-020', '08170468/0011-08', NULL, 'S', NULL),
(2, 'AU', '3608-3058/3695-0882', 'CASA DE CARNES NOVILHAO DOS AUTONOMISTAS', 'AV. AUTONOMISTAS, 5089 - JD GRANADA - OSASCO', '06194-050', '11990899/0001-53', NULL, 'O', NULL),
(3, 'BB', '4162-3352/4194-2425', 'VILMA APARECIDA MESSIAS', 'ESTRADA VELHA DE ITAPEVI BARUERI, 4334 = JDIM STA MONICA J SILVEIRA', '06444-000', 'NÃO TEM', NULL, 'O', NULL),
(4, 'BO', '3208-8976/3275-4188/3341-4904', 'CENTER CARNES BONZAY LTDA', 'RUA CLIMACO BARBOSA, 21 - CAMBUCI', '01523-000', '69344620/0001-44', NULL, 'C', NULL),
(5, 'BS', '3101-1092/3106-6540', 'CELI CAROLINA ALEXANDRONI SANTOS', 'PRAÇA DA SE, 146 CENTRO', '01001-000', '9776808-19', NULL, 'C', NULL),
(6, 'CA', '3275-3400/3276-7567', 'CASA DE CARNES CATALÃO LTDA', 'RUA GLICERIO, B LJ 2 - LIBERDADE', '01514-000', '68045806/0001-30', NULL, 'C', NULL),
(7, 'CF', '3207-1910/3209-3806', 'JOSE PIRES MONTEIRO', 'RUA CONSELHEIRO FURTADO, 1162 - LIBERDADE', '01511-001', '772106628-04', NULL, 'C', NULL),
(8, 'CL', '5841-6398/5841-7548/5841-7926', 'CASA DE CARNES NOVA CHARMOSA DO CAMPO LIMPO LTDA', 'RUA NINA STOCCO PROF. , 943 JD CAMPO LIMPO', '05767-001', '01356152/0001-94', NULL, 'S', NULL),
(9, 'CN', '2025-3993', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS EIRELES', 'AV. ACADEMIA DE SÇO PAULO, 774 - JD CAMARGO', '08121-400', '17343551/0011-22', NULL, 'L', NULL),
(10, 'CR', '5512-7652/5513-4425/5513-6529', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'ESTRADA ITAPECERICA, 3770  PQ FERNANDA', '05835-004', '06170468/0001-36', NULL, 'S', NULL),
(11, 'DJ', '20254264 - 2561-8445 ', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS EIRELES', 'ESTRADA D.JOAO NERY, 3472', NULL, '05769482/0001-07', NULL, 'L', NULL),
(12, 'EC', '5083-1574/5083-1649/5084-6399/5084-6627/5084-6631/5084-6647', 'MARIA LUCIA DA SILVA', 'RUA FREI CANECA, 558 14°ANDAR 1413 SALA - CERQUEIRA CESAR - CONSOLAÇÃO', '01307-000', 'RG 14431048-17', NULL, 'C', NULL),
(14, 'FA', '3851-4229/3985-7539', 'DARCE RAMALHO DOS SANTOS', 'AV. ITABERABA, 5240 - NOSSA SENHORA DO O', '02739-000', '87889948-05', NULL, 'N', NULL),
(15, 'FC', '3228-5066/3229-8301', 'JOSE PIRES MONTEIRO', 'RUA DA CANTAREIRA, 287 - MERCADO', '01024-000', '772106628-04', NULL, 'C', NULL),
(16, 'FM', '3159-3824', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS EIRELES', 'PRAÇA QUATORZE BIS, 106 - BELA VISTA', '01312-010', '17343551/0001-50', NULL, 'C', NULL),
(17, 'FO', '2063-6099/2081-4769', 'COMERCIAL DE ALIMENTOS IPANEMA FOODS EIRELES', 'AV. PRES WILSON, 1681 - MOOCA', '03107-001', '17343551/0001-50', NULL, 'L', NULL),
(18, 'HM', '3603-4881/3656-6171', 'CASA DE CARNES SUPER BOI HELENA MARIA LTDA', 'AV. REMEDIOS, 696 - VILA DOS REMEDIOS', '05107-001', '06143380/0001-08', NULL, 'O', NULL),
(19, 'IS', '3931-0340', 'CASA DE CARNES NOVA PARISIENE JD LTYDA', 'AV. IPNAJAR DE SOUZA, 110 TR - JD DAS GRAÇAS', '02716-000', '05769483/0008-83', NULL, 'N', NULL),
(20, 'JB', '4198-0826/4198-2719', 'AILTON BARBOSA OLIVEIRA', 'AV. ITAQUI(BAIRRO DOS ALTOS) - JARDIM BELVAL', '06420-210', '049.932.626-12', NULL, 'O', NULL),
(21, 'JS', '4194-4783/4194-5532/4194-5538', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'AV. MUNIPAL, 455BTR - JD SILVEIRA', '06433-000', '08140468/0006-40', NULL, 'O', NULL),
(22, 'LI', '3241-3496', 'FRANCISCO BARROS DE CAMPOS JUNIOR', 'AV. LIBERDADE, 66 LIBERDADE', '01502-000', 'RG 29388995-1', NULL, 'C', NULL),
(23, 'LV', '3271-1355', 'CASA DE CARNES JABURU LTDA', 'AV. LINS DE VASCONCELOS,130-JD CAMBUCI', '0158-0001', '67345595/0001-98', 'Ipanema', 'C', '1'),
(24, 'MO', '5041-5720/5096-1248', 'TROPICAL COMERCIO DE CARNES LTYDA', 'RUA TUIM, 595 - INDIANOPOLIS', '04514-102', '10504712/0001-00', NULL, 'S', NULL),
(25, 'NB', '4193-6493/4193-6498', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'RUA FR HENRIQUE SOARES DE COIMBRA,3 PQ IMPERIAL BARUERI', '06462-190', '09380794/0001-36', NULL, 'O', NULL),
(26, 'NC', '2291-7323/2692-4670', 'ROGERIO CAMARA NIGRO', 'AV. RANGEL PESTANA, 1974 - CENTRO', '03002-000', '148414058-36', NULL, 'C', NULL),
(27, 'NL', '3965-3270/3966-9202', 'JALES COMERCIO DE CARNES LTDA', 'AV. PROF. CELESTINO BOURROUL, 1037 LIMAO', '02710-000', '04421417/0001-89', NULL, 'N', NULL),
(28, 'NN', '3681-0407/3683-0343/3683-8854', 'AILTON BARBOSA OLIVEIRA', 'AV. ANTONIO CARLOS COSTA, 529 - BELA VISTA', '06053-010', 'RG 49632626-12', NULL, 'O', NULL),
(29, 'NS', '3592-3792/3592-3843/3592-4355', 'MERCADAO DE CARNES NOVILHAO LTDA', 'AV. JOAO DE ANDRADE, 1380 - JD STA ANTONIO', '06132-004', '08170468/0004-89', NULL, 'O', NULL),
(30, 'NT', '5841-7779/5841-7827', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'RUA JOVIANO P. DE AGUIRRE DR, 179 - CAMPO LIMPO', '05788-290', '08170468/0006-40', NULL, 'S', NULL),
(31, 'NU', '4244-7173/4244-7184', 'MERCADÃO DE CARNES N0VILHÃO LTDA', 'AV. JOAO PAULO II, 1573 - JDIM SÃO LUIZ', '06810-507', '08170468/0001-36', NULL, 'S', NULL),
(33, 'PA', '3081-9602/3081-9684/3891-1016', 'PARISIENSE CARNES E CIA LTDA', 'RUA PE JOÃO MANOL, 574 - CERQUEIRA CESAR', '01411-000', '02998270/0001-89', NULL, 'C', NULL),
(34, 'PB', '2291-4623/2292-4500/2692-2823', 'JOSE PIRES MONTEIRO', 'RUA JOAQUIM NABUCO, 81 - BRAS', '03050-020', 'RG 772106628-04', NULL, 'C', NULL),
(35, 'PC', '2081-1273/2291-4570', '', NULL, NULL, NULL, NULL, 'C', NULL),
(36, 'PO', '3599-8759/3603-3190', 'CASA DE CARNES SUPERPARISIENE LTDA', 'AV. JOÃO VENTURA DOS SANTOS, 2003 - JD BARONESA', '06263-100', '09.380.794/0001-30', NULL, 'O', NULL),
(37, 'RB', '3337-7600', 'CENTRAL DE CARNES RIO BRANCO LTDA', 'AV. RIO BRANCO, 200 AC JOSE MANCIO CENTRO', '01206-000', '01341349/0001-50', NULL, 'C', NULL),
(38, 'RC', '2518-2556', 'COMERCIAL DE ALIMENTOS IPANEMA FOOD', 'ESTRADA IGUATEMI, 4980', '�08490-500', NULL, NULL, 'L', NULL),
(39, 'SI', '2731-7672/2731-7673/5842-8805/5842-8819/5845-1445', 'CASA DE CARNES BOI CEVADO LTDA', 'AV. RAGUEB CHOHFI, 4656 JD AUGUSTO', '03830-320', '07311490/0001-96', NULL, 'L', NULL),
(40, 'TA', '4701-2413/4771-1039/4771-6074', 'CENTER CARNE BOI NOVO PARQUE PINHEIRO', 'AV. LAURITA ORTEGA MARI, 1993 - VILA DAS OLIVEIRAS - TABOAO DA SERRA', '06766-361', '09586046/0001-09', NULL, 'S', NULL),
(41, 'TL', '3141-3242/3266-4514', 'CASA DE CARNES TRES LEÕES', 'RUA HUMAITA, 239 - BELA VISTA', '01231-010', '61618245/0001-71', NULL, 'C', NULL),
(42, 'TS', '4138-2282', 'MERCADÃO DE CARNES N0VA PAINEIRA LTDA E', 'ESTRA BENEDITO CESÁRIO OLIVEIRA, 525 - ARRAIL PAULISTA TABOAO DA SERRA', '06767-280', '12272541/0001-58', NULL, 'S', NULL),
(43, 'XT', '3237-0333', 'CENTER CARNES BONZAY LTDA', 'RUA CEL XAVIER DE TOLEDO, 66-SE', '01048-000', '05169483/0004-58', NULL, 'C', NULL),
(44, 'SO', '(15)3329-4246 /329-4534/3035-4837', 'MERCADÃO DE CARNES NOVILHÃO LTDA', 'RUA PAULO EMANUEL DE ALMEIDA,253-PQ. DOS EUCALIPTOS, SOROCABA -SP', '18.053-505', '33.471.099/001-69', NULL, 'I', NULL),
(45, 'CC', '(11) 2296-0231', 'CASA DE CARNES NOVA PARISIENE - JD LTDA - EPP', 'AV CONSELHEIRO CARRAO, 2147 - VILA CARRÃO - São Paulo', '03403-002', NULL, 'Parisiene', 'L', '1'),
(46, 'NA', '3695-7438', 'MERCADÃO DE CARNES NOVILHÃO LTDA EPP', 'AV DOS AUTONOMISTAS 7202', '06194-060', NULL, 'Novilhao', 'O', '1'),
(47, 'SD', '2521-5196', 'COMERCIAL DE ALIM.IPANEMA FOODS - EIRELLI', 'RUA SABBADO D`ANGELO 2041', '08215-655', NULL, 'Novo Boi', 'L', '1'),
(48, 'SP', '4558 - 3700', 'MERCADÃO DE CARNES NOVILHÃO LTDA EPP', 'AV SÃO PAULO, 350 - CID. INTERCAP - TABOÃO DA SERRA - SP', '05757-170', NULL, 'Novilhao', 'S', '1'),
(49, 'VM', '(11)2476-9190', 'COMERCIAL DE ALIM.IPANEMA-FOODS-EIRELI', 'AVENIDA LINS DE VASCONCELOS 3002', '04112-002', NULL, 'Parisiene', 'L', '1'),
(50, 'PV', '(11)3311-6514', 'COMER.DE ALIMEN.IPANEMA FOODS-EIRELI', 'RUA PEDRO VICENTE, 324 - ARMENIA - SÃO PAULO-SP', '04112-002', NULL, 'Parisiene', 'C', '1'),
(51, 'PI', '09.380.794/000130', 'MERCADO DE CARNES NOVILHAO', 'Av. carlos Lacerda 1427', '01206-000', NULL, 'Novilhao', 'S', '1'),
(52, 'JA', '0', 'MERCADÃO DE CARNES NOVILHÃO JARDIM DE ABRIL LTDA', 'AV ENG QUEIROS TELES, 1013', '05399-030', NULL, 'Novilhao', 'O', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagem`
--

CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL,
  `dispositivo` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mensagem`
--

INSERT INTO `mensagem` (`id`, `dispositivo`, `descricao`, `status`) VALUES
(1, 'Pdv', 'PDV desligou ', '1'),
(2, 'Nobreak', 'Nobreak nao liga mais', '1'),
(3, 'Nobreak', 'Nobreak apitando', '1'),
(4, 'Internet', 'Loja sem internet', '1'),
(5, 'Acesso ao Sistema', 'Sem acesso ao Logus', '1'),
(6, 'Impressora Laser', 'Impressora não imprime do Logus', '1'),
(7, 'Impressora Térmica', 'Impressora nao imprime do mataburro', '1'),
(8, 'Impressora Laser', 'Impressora não imprime', '1'),
(9, 'Energia', 'Acabou energia na loja', '1'),
(10, 'Telefonia', 'Defeito no Telefone', '1'),
(11, 'Balança', 'Balança com defeito', '1'),
(15, 'Balança', 'Balança chegou da Manutenção', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem`
--

CREATE TABLE `ordem` (
  `id` int(11) NOT NULL,
  `id_loja` int(11) DEFAULT NULL,
  `id_tecnico` int(11) DEFAULT NULL,
  `criado` varchar(50) DEFAULT NULL,
  `atendimento` int(5) NOT NULL COMMENT '1- interno/2-externo',
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
  `status` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ordem`
--

INSERT INTO `ordem` (`id`, `id_loja`, `id_tecnico`, `criado`, `atendimento`, `id_mensagem`, `id_estoque`, `id_status_chamado`, `id_prioridade`, `reclamado`, `solicitante`, `data_abertura_chamado`, `ultima_atualizacao`, `data_fecha_chamado`, `avaliacao_tecnico`, `solucao`, `pendencia`, `status`) VALUES
(46, 3, 11, 'Jeremias', 2, NULL, NULL, 5, 3, 'PDV 103 e 104 estão trabalhando na rede, sat com falha', 'Geicilene', '2020-03-02', '2020-03-03', '2020-03-04', 'Rede', 'Cabo desconectado no keytone', 'Nenhuma', '4'),
(49, 20, 3, 'Benedito', 1, NULL, NULL, 5, 2, 'nobreak do pdv 104, 2 leitores de código de barras', 'alessandra', '2020-03-03', '2020-03-04', '2020-03-04', 'Efetuado a troca do nobreak e 2 leitores de código de barras ', 'Efetuado a troca do nobreak e 2 leitores de código de barras ', 'sem pendencia', '3'),
(50, 37, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Teclado do caixa 101 com problema', 'Marria', '2020-03-03', '0000-00-00', '2020-03-03', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', '1'),
(51, 4, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'telefone inoperante', 'Marria', '2020-03-03', '0000-00-00', '2020-03-03', 'Efetuado a troca do telefone', 'Efetuado a troca do telefone', 'Efetuado a troca do telefone', '1'),
(52, 3, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'Levar sat para PDV 103 NSº00904587-29', 'Geicilene', '2020-03-04', '2020-04-22', '2020-04-24', 'Foi configurado um novo sat para o pdv 103', 'Foi configurado um novo sat para o pdv 103', 'Foi configurado um novo sat para o pdv 103', '7'),
(53, 31, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'solicita teclado', 'Jois', '2020-03-04', '2020-03-05', '2020-03-05', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', '3'),
(54, 45, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'nobreak para o caixa 102', 'Marria', '2020-03-05', '2020-03-05', '2020-03-06', 'Efetuado a troca do nobreak', 'Efetuado a troca do nobreak', 'Efetuado a troca do leitor', '3'),
(55, 37, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Leitor de codigo de barras para o caixa 101', 'Marria', '2020-03-05', '2020-03-05', '2020-03-05', 'Efetuado a troca do leitor', 'Efetuado a troca do leitor', 'Efetuado a troca do leitor', '3'),
(56, 4, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'telefone com problemas', 'Marria', '2020-03-05', '0000-00-00', '2020-03-05', 'Efetuado a troca do telefone', 'Efetuado a troca do telefone', 'Efetuado a troca do telefone', '1'),
(57, 36, 2, 'Jaks', 1, NULL, NULL, 5, 2, 'Trocar MIKROTIK', 'Dora', '2020-03-05', '2020-03-05', '2020-03-05', 'O MK da loja estava com defeito', 'MK foi trocado', 'nenhuma', '2'),
(58, 20, 11, 'Jeremias', 2, NULL, NULL, 5, 2, 'Após queda de energia no escrito, o computador está reiniciando.', 'Alessandra', '2020-03-05', '2020-03-06', '2020-03-06', 'Computador não reiniciou', 'Computador ok', 'Nenhuma', '4'),
(59, 19, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'relógio sem comunicação', 'Marria', '2020-03-06', '0000-00-00', '2020-03-06', 'Cabo de rede desconectado no switch', 'Conectei o cabo', 'Nenhuma', '1'),
(60, 19, 2, 'Jaks', 1, NULL, NULL, 5, 2, 'Relógio de ponto não conecta ', 'Ayumi', '2020-03-06', '0000-00-00', '2020-03-06', 'CHAMADO DUPLICADO', 'CHAMADO DUPLICADO', 'CHAMADO DUPLICADO', '1'),
(61, 4, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'PDV 101 SEM CONEXÃO ', 'Maria', '2020-03-06', '0000-00-00', '2020-03-06', 'Sem conexão no caixa', 'Mudei o cabo de rede', 'Nenhuma', '1'),
(62, 29, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'Tamires solicita a troca de 2 nobreaks, não seguram cargas', 'Tamires', '2020-03-07', '2020-03-17', '2020-03-21', 'LOJA OK ', 'LIguei na loja e a tamires disse que os pdvs não desligaram mais.', 'nenhuma', '3'),
(63, 6, 3, 'Jeremias', 1, NULL, NULL, 5, 3, 'Configurar rede do relogio', 'Petrins', '2020-03-08', '2020-03-08', '2020-03-08', 'Efetuado configura;áo do relogio com sucesso', 'Efetuado configura;áo do relogio com sucesso', 'sem pendencia', '3'),
(64, 6, 11, 'Jeremias', 2, NULL, NULL, 5, 2, 'Configurar ifractal', 'RH', '2020-03-08', '2020-03-10', '2020-03-10', 'Sistema do ifractal foi instalado e configurado', 'Sistema do ifractal foi instalado e configurado', 'nenhuma', '4'),
(65, 46, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'O computador do escritório não liga', 'Gabriela', '2020-03-09', '2020-03-10', '2020-03-10', 'NOBREAK E COMPUTADOR QUEIMARAM', 'TROCAR NOBREAK E COMPUTADOR', 'LEVAR OUTRO COMPUTADOR', '3'),
(66, 46, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'Levar outro computador para o escritório', 'Gabriela', '2020-03-09', '2020-03-10', '2020-03-10', 'Foi trocado a cpu e mantido os dados do HD', 'Foi trocado a cpu e mantido os dados do HD', 'nenhuma', '3'),
(67, 47, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Levar outro pinpad e outra tanca para testar,ao passar cartão o pinpad desliga.', 'Samia', '2020-03-09', '2020-03-13', '2020-03-13', 'pinpad desligando ao passar cartão', 'troquei o pinpad', 'nenhuma', '4'),
(68, 15, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Relógio está perdendo comunicação com a rede', 'RH - Aiyumi', '2020-03-10', '0000-00-00', '2020-03-10', 'Cabo rede desconectado', 'reiniciei o relógio e conectei o cabo  de rede.', 'nenhuma', '1'),
(69, 48, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Relogio imprime cupom pela metade', 'Cintia', '2020-03-10', '2020-03-12', '2020-03-18', 'A impressora do relógio só imprime a metade esquerda do comprovante', 'Rolete quebrado foi passado para o RH ', 'Nenhuma', '4'),
(70, 22, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Relogio de ponto está perdendo comunicação com a rede', 'RH - Ayumi', '2020-03-10', '0000-00-00', '2020-03-10', 'Cabo rede desconectado', 'reiniciei o relógio e conectei o cabo  de rede.', 'nenhuma', '1'),
(71, 7, 12, 'Benedito', 2, NULL, NULL, 5, 1, 'Mouse ', 'Maria', '2020-03-11', '0000-00-00', '2020-03-13', 'Efetuado a troca do mouse', 'Efetuado a troca do mouse', 'Efetuado a troca do mouse', '1'),
(72, 18, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Pdv 102 está travando', 'Dora', '2020-03-11', '2020-03-11', '2020-03-11', 'PDV reiniciando', 'Troquei a tanca', 'Nenhuma', '1'),
(73, 17, 12, 'Jeremias', 2, NULL, NULL, 5, 1, 'Retirar relógio na Mega Relógio, relógio era da VM - trazer pro foods', 'Ayumi', '2020-03-11', '2020-03-12', '2020-03-13', 'retirar relógio', 'retirei relógio', 'nenhuma', '4'),
(74, 39, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Trocar teclado PDV 103', 'Dayane', '2020-03-11', '2020-03-12', '2020-03-12', 'Teclado não funciona', 'Troca de teclado', 'Nenhuma', '3'),
(75, 38, 11, 'Jeremias', 2, NULL, NULL, 5, 3, 'RC a internet está muito lenta, estão usando o wifi, trocassem a senha!', 'Danyele', '2020-03-11', '2020-03-19', '2020-03-19', 'identificado varios celulares conectados na rede', 'foi bloqueado todos celulares da rede balança e avisado a Danyele', 'nenhuma', '3'),
(76, 18, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Balança 4 nao se comunica', 'Dora', '2020-03-11', '2020-03-11', '2020-03-11', 'A balança estava fora da rede', 'configurada o wifi da balança', 'nenhuma', '4'),
(77, 37, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'leitor do escritório', 'sivia', '2020-03-12', '2020-03-19', '0000-00-00', 'Efetuado a troca do leitor', 'Efetuado a troca do leitor', 'Efetuado a troca do leitor', '5'),
(78, 21, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'Substituir todas as maquinas TEF e POS  -  trazer pro foods', 'procedimento T.I.', '2020-03-12', '2020-03-19', '0000-00-00', 'efetuado a troca de todos pinpad e efetuado testes de venda', 'efetuado a troca de todos pinpad e efetuado testes de venda', 'efetuado a troca de todos pinpad e efetuado testes de venda', '5'),
(79, 3, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'substituir todas as maquinas Tef e Pos -  trazer pro foods', 'procedimento T.I.', '2020-03-12', '2020-03-19', '0000-00-00', 'pinpad trocados', 'pinpad trocados', 'pinpad trocados', '5'),
(80, 25, 11, 'Jeremias', 2, NULL, NULL, 5, 3, 'Bloquear todos os usuarios da rede balança', 'Gerente Fernando', '2020-03-12', '0000-00-00', '2020-03-12', 'solicitação atendida', 'todos os usuarios da rede balança foram bloqueados', 'nenhuma', '1'),
(81, 15, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Verificar comunicação do relógio', 'Aiumy - RH', '2020-03-12', '2020-03-13', '2020-03-13', 'Relógio sem comunicação', 'Retirei o cabo de rede e coloquei', 'Nenhuma', '4'),
(82, 47, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'providenciar  cartões  para a fiscal e gerente para loja SD,', 'Gerente SD', '2020-03-12', '2020-03-19', '2020-03-19', ' cartões muito danificados', 'entregue cartoes para os funcionarios', 'Nenhuma', '3'),
(83, 38, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Trocar ip do relógio de ponto', 'Jeremias', '2020-03-12', '0000-00-00', '2020-03-12', 'trocar ip', 'troquei ip do relógio', 'nenhuma', '1'),
(84, 27, 3, 'Benedito', 1, NULL, NULL, 5, 3, 'pdv 101 não liga ew pdv 102 sem sat', 'Marria', '2020-03-13', '2020-03-13', '2020-03-13', 'efetuado troca do pdv 101 e troca do mouse, e organização de fio', 'efetuado troca do pdv 101 e troca do mouse, efetuado organização de fi', 'efetuado troca do pdv 101 e troca do mouse, e organização de fio', '3'),
(85, 37, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'teclado do escritório molhado', 'sivia', '2020-03-13', '2020-03-13', '2020-03-19', 'teclado do escritório molhado', 'trocado o teclado', 'nenhuma', '4'),
(86, 29, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Trocar pinpad', 'ARIADNE', '2020-03-13', '2020-03-13', '2020-03-14', 'cancelado', 'cancelado', 'cancelado', '4'),
(87, 18, 12, 'Jeremias', 2, NULL, NULL, 5, 1, 'Pedido de 1 teclado', 'Dora', '2020-03-13', '0000-00-00', '2020-03-16', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', 'Efetuado a troca do teclado testes ok', '1'),
(88, 25, 12, 'Jaks', 2, NULL, NULL, 5, 3, '2 balanças não conectam', 'andreia', '2020-03-13', '2020-03-13', '2020-03-16', 'efetuado configuração da balança, um balanca ok a outra enviada para assistencia ', 'efetuado configuração da balança, um balanca ok a outra enviada para assistencia ', 'efetuado configuração da balança, um balanca ok a outra enviada para assistencia ', '4'),
(89, 35, 2, 'Jaks', 1, NULL, NULL, 5, 2, 'computador do escritório não conecta', 'SILVANA', '2020-03-13', '0000-00-00', '2020-03-13', 'loja sem switch', 'coloquei outro switch', 'nenhuma', '1'),
(90, 25, 12, 'Jeremias', 2, NULL, NULL, 5, 2, 'Computador do  escritorio não dá sinal de video', 'Andréia', '2020-03-13', '0000-00-00', '2020-03-16', 'eliminado mau contato do micro testes ok', 'eliminado mau contato do micro testes ok', 'eliminado mau contato do micro testes ok', '1'),
(91, 8, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'PC DO ESCRITÓRIO NÃO LIGA', 'LARISSA', '2020-03-14', '0000-00-00', '2020-03-14', 'computador não', 'reset na placa', 'nenhuma', '1'),
(92, 27, 11, 'Jeremias', 2, NULL, NULL, 5, 3, 'Configurar  um  sat  para pdv 101 - NS-000877559-12', 'Ari', '2020-03-15', '2020-03-18', '2020-03-20', 'loja montada, pendente caixas', 'loja montada, pendente caixas', 'loja montada, pendente caixas', '4'),
(93, 23, 2, 'Jaks', 1, 1, NULL, 5, 3, 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'VANDINHO', '2020-03-16', '2020-03-17', '2020-03-17', 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'nenhuma', '3'),
(94, 24, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'VANDINHO', '2020-03-16', '2020-03-19', '2020-03-19', 'etiquetas configuradas', 'etiquetas configuradas', 'nenhuma', '4'),
(95, 49, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'VANDINHO', '2020-03-16', '2020-03-18', '2020-03-18', 'Etiqueta configurada com nutricionais', 'Etiqueta configurada com nutricionais', 'nenhuma', '3'),
(96, 33, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'CONFIGURAR ETIQUETAS DE BALANÇAS', 'VANDINHO', '2020-03-16', '2020-03-27', '2020-03-27', 'Etiqueta configurada com nutricionais', 'etiquetas configuradas com nutricionais', 'nenhuma', '3'),
(97, 14, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Configurar a balança 1232', 'Mary', '2020-03-16', '2020-03-17', '2020-03-18', 'Balança sem comunicação', 'Configurei a rede', 'Nenhuma', '3'),
(98, 10, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Levar um teclado, levar um swith para liberar porta do mikrotic', 'Loja CR', '2020-03-16', '2020-03-18', '2020-03-18', 'Swicth e teclado não ligam', 'Troquei o swictch e teclado', 'Nenhuma', '4'),
(99, 15, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'relógio de ponto fora da rede', 'Maria', '2020-03-17', '2020-03-17', '2020-03-19', 'refeito cabo, testes ok', 'refeito cabo, testes ok', 'refeito cabo, testes ok', '4'),
(100, 50, 3, 'Jeremias', 1, NULL, NULL, 5, 1, 'Montagem da nova loja PV', 'T.I.', '2020-03-17', '2020-03-17', '2020-03-20', 'loja montada, pendente caixas', 'loja montada, pendente caixas', 'loja montada, pendente caixas', '4'),
(101, 30, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Levar 2 leitores e verificar tanca  pdv 101,entradas usb queimando leitor', 'Thais', '2020-03-17', '2020-03-18', '2020-03-18', 'Trocar tanca do caixa 1 e 2 leitores', 'Trocar 1 tanca e 2 leitores', 'Nenhuma', '4'),
(102, 46, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Impressora argox nao se comunica com o computador', 'Gabriely', '2020-03-17', '0000-00-00', '2020-03-18', 'Argox não imprime', 'Instalei driver', 'Nenhuma', '1'),
(104, 24, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Impressora do pdv 101 nao liga no nobreak', 'Loja MO', '2020-03-17', '0000-00-00', '2020-03-19', 'Impressora ligada na régua', 'Liguei impressora na régua ', 'Nenhuma', '1'),
(105, 38, 11, 'Jeremias', 2, NULL, NULL, 4, 1, 'configurar ifractal da loja', 'RH - Ayumi', '2020-03-17', '2020-04-22', NULL, 'Nao estou conseguindo liberar a porta 3000 do relogio no mk', '', '', '4'),
(106, 4, 2, 'Benedito', 1, NULL, NULL, 5, 1, 'relógio não emite comprovante.', 'Maria', '2020-03-18', '2020-03-18', '2020-03-18', 'avisar ao RH ', 'RH CHAMAR UM TÉCNICO DA MEGA RELÓGIO', 'Nenhuma', '4'),
(107, 20, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Levar um teclado para computador escritorio', 'Kenaoliveira', '2020-03-18', '2020-03-19', '2020-03-30', 'suspeita de cabo usb em curto', 'o teclado nao tinha defeito', 'nenhuma', '4'),
(108, 4, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'relógio BO, não impirme', 'Maria', '2020-03-19', '0000-00-00', '2020-03-19', 'Feito limpeza nos contatos sem sucesso, direcionado ao RH para fazer reparo', 'Feito limpeza nos contatos sem sucesso, direcionado ao RH para fazer reparo', 'Feito limpeza nos contatos sem sucesso, direcionado ao RH para fazer reparo', '1'),
(109, 5, 3, 'Jeremias', 1, NULL, NULL, 5, 1, 'Solicita 01 leitor', 'loja BS', '2020-03-20', '2020-03-20', '2020-03-23', 'EFETUADO TROCA DE UM LEITOR DE CÓDIGO DE BARRAS', 'EFETUADO TROCA DE UM LEITOR DE CÓDIGO DE BARRAS', 'N', '4'),
(110, 41, 3, 'Jeremias', 1, NULL, NULL, 5, 1, 'Ensinar a Marina a colocar o ribbon na Argox', 'Marina', '2020-03-20', '2020-03-21', '2020-03-21', 'Curso ministrado', 'Curso ministrado', 'nenhuma', '4'),
(111, 47, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'Computador do escritório não liga', 'Claudio', '2020-03-20', '0000-00-00', '2020-03-20', 'fonte atx queimada', 'troquei fonte', 'nenhuma', '1'),
(112, 9, 2, 'Jaks', 1, NULL, NULL, 5, 3, ' 01 leitor', 'André', '2020-03-20', '2020-03-24', '2020-03-24', ' 01 leitor', ' 01 leitor', ' 01 leitor', ''),
(113, 18, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'verificar balança nao sobe na rede', 'loja HM', '2020-03-20', '0000-00-00', '2020-03-21', 'efetuado configuração da balança que veio da outra loja', 'efetuado configuração da balança que veio da outra loja', 'n', '1'),
(114, 25, 3, 'Benedito', 1, NULL, NULL, 5, 3, 'loja com balanças queimada, configurar uma balança que chegou de outra loja', 'fernando', '2020-03-21', '2020-03-21', '2020-03-21', 'efetuado configuração de balanças', 'efetuado configuração de balanças', 'n', '7'),
(115, 27, 3, 'Benedito', 1, NULL, NULL, 5, 3, 'Efetuado testes de venda com SAT nos dois caixas sem sucesso, SAT retirado da loja e deixado na loja do Jeremias', 'Maria', '2020-03-21', '2020-03-23', '2020-03-25', 'Efetuado testes de venda com SAT nos dois caixas sem sucesso, SAT retirado da loja e deixado na loja do Jeremias', 'Efetuado testes de venda com SAT nos dois caixas sem sucesso, SAT retirado da loja e deixado na loja do Jeremias', 'sat', '7'),
(121, 9, 2, 'Jeremias', 1, NULL, NULL, 5, 3, 'O Pdv 102 queimou o TEf e um leitor,', 'Nagela', '2020-03-21', '2020-03-24', '2020-03-24', 'O pinpad queimou', 'A Nagela irá ligar na getnet ', 'Nenhuma', '4'),
(122, 46, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'Computador do escritório travando ', 'Ga', '2020-03-23', '0000-00-00', '2020-03-23', 'HD PAROU', 'TROQUEI O HD', 'nenhuma', '1'),
(123, 4, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'ativar windows e configurar relógio de ponto', 'Maria', '2020-03-24', '0000-00-00', '2020-03-24', 'configurado relógio, ativado windows e instalado o switch no rack', 'configurado relógio, ativado windows e instalado o switch no rack\r\n', 'n', '1'),
(124, 27, 2, 'Jeremias', 1, NULL, NULL, 5, 3, 'Pdv 102, está sem conexao, feito teste e conexao oscila', 'Marielene', '2020-03-25', '0000-00-00', '2020-03-25', 'Sat não vende', 'Retirei o sat', 'Nenhuma', '1'),
(125, 21, 2, 'Jeremias', 1, NULL, NULL, 5, 3, 'Troca de teclado do pdv 104 e uma empresa laser', 'Loja JS', '2020-03-25', '2020-03-25', '2020-03-25', 'Teclado e impressora não funcionam', 'Troquei ambos', 'Nenhuma', '4'),
(126, 33, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Organizar fios do escritório do local onde ficava o servidor sys', 'Gustavo', '2020-03-26', '0000-00-00', '2020-03-27', 'FEITO ORGANIZAÇÃO DE FIOS', 'FEITO ORGANIZAÇÃO DE FIOS', 'N', '1'),
(127, 1, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Instalar micro do escritório.', 'jusara', '2020-03-26', '0000-00-00', '2020-03-27', 'instalado micro do escritorio', 'instalado micro do escritorio', 'treinamento para fiscal', '1'),
(128, 4, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'RECONFIGURAR ANTENA WI-FI E BLOQUEAR USUÁRIO FORA DA LOJA.', 'JUNIOR', '2020-03-26', '0000-00-00', '2020-03-30', 'antena reconfigurada, feito mudança de layout, testes ok', 'antena reconfigurada, feito mudança de layout, testes ok', 'n', '1'),
(129, 47, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'PDV 101 NÃO PASSA TEF ( TROCAR A TANCA )', 'Samia', '2020-03-26', '2020-03-27', '2020-03-27', 'PIN PAd desligando ao passar cartão', 'Troquei a tanca', 'Nenhuma', '7'),
(130, 30, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'Verificar sat  do pdv 103, luz SERV apagada e nao dá rede', 'Thais', '2020-03-26', '0000-00-00', '2020-03-27', 'troca de cabo do sat testes ok', 'troca de cabo do sat testes ok', 'n', '1'),
(131, 42, 3, 'Jeremias', 1, NULL, NULL, 5, 3, 'Verifcar sat pdv 103 sem rede', 'Loja TS', '2020-03-26', '2020-03-27', '2020-03-27', 'eliminado mau contato do ponto de rede, testes ok', 'eliminado mau contato do ponto de rede, testes ok', 'n', '7'),
(132, 26, 11, 'Jeremias', 2, NULL, NULL, 5, 2, 'Verificar portas externas bloqueadas', 'Sr. Monteiro', '2020-03-26', '0000-00-00', '2020-03-30', 'Dvr bloqueado', 'reiniciado dvr - ok', 'nenhuma', '1'),
(133, 25, 1, 'Jeremias', 2, NULL, NULL, 5, 2, 'Configurar balança que saiu da loja HM', 'gerente: Fernando', '2020-03-26', '2020-03-27', '2020-03-27', 'configurar rede', 'configuração remoto', 'nenhuma', '4'),
(134, 6, 1, 'Jeremias', 2, NULL, NULL, 5, 2, 'Verificar código 22482 não vai pra balança', 'Loja CA', '2020-03-26', '0000-00-00', '2020-03-27', 'incluir o produto', 'incluir o produto', 'Nenhuma', '1'),
(135, 26, 1, 'Jeremias', 2, NULL, NULL, 5, 2, 'Verificar código 22482 não vai pra balança', 'Angela', '2020-03-26', '0000-00-00', '2020-03-27', 'esqueceu de enviar  ( incluir )', 'incluir produtos', 'nenhuma', '1'),
(136, 17, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'configurar impressora no logus', 'Geralda', '2020-03-27', '0000-00-00', '2020-03-30', 'configurado uma nova impressora', 'configurado uma nova impressora', 'nenhuma', '1'),
(137, 43, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Pdv nao está ligando', 'Gerente Pedro', '2020-03-27', '0000-00-00', '2020-03-27', 'troca da tanca', 'troca da tanca', 'nenhuma', '1'),
(138, 1, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Verificar impressora laser, nao imprime', 'Loja Ac', '2020-03-27', '2020-03-28', '2020-03-28', 'impressora não estava imprimindo', 'trocou o cabo de porta usb', 'Nenhuma', '4'),
(139, 18, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'A senha de logon do windows foi alterada, configurar mataburro', 'Dora', '2020-03-27', '2020-03-28', '2020-03-28', 'senha de logon', 'resetei a senha', 'nenhuma', '4'),
(140, 36, 2, 'Jaks', 1, NULL, NULL, 5, 1, '01 Leitor de código de Barras', 'Dora', '2020-03-28', '0000-00-00', '2020-03-31', '01 leitor', '01 leitor', 'Nenhuma', '1'),
(141, 46, 2, 'Jeremias', 1, NULL, NULL, 5, 3, 'Sistema MGV6 nao acessa o banco de dados da balança', 'Gabrielly', '2020-03-28', '0000-00-00', '2020-03-31', 'Trocar micro', 'Troquei micro ', 'Nenhuma', '1'),
(142, 44, 3, 'Jeremias', 1, NULL, NULL, 5, 3, 'Configurar o Ubiquiti - adopt com erro', 'Mario -TI', '2020-03-28', '0000-00-00', '2020-04-06', 'efetuado efetuado reset do ubiquiti com ajuda do augusto e viviane, testes ok', 'efetuado efetuado reset do ubiquiti com ajuda do augusto e viviane, testes ok', 'n', '1'),
(143, 40, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'mau contato na tomada do caixa 101, necessário refazer a tomada', 'camila', '2020-03-29', '0000-00-00', '2020-03-30', 'eliminado mau contato do switch testes ok', 'eliminado mau contato do switch testes ok', 'n', '1'),
(144, 36, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'no-break do pdv 103 inoperante', 'eli', '2020-03-29', '0000-00-00', '2020-03-29', 'problemas na tomada', 'problemas na tomada', 'n', '1'),
(145, 26, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'micro não liga, eliminado mau contato das memorias testes ok', 'guma', '2020-03-30', '0000-00-00', '2020-03-30', 'micro não liga, eliminado mau contato das memorias testes ok', 'micro não liga, eliminado mau contato das memorias testes ok', 'n', '1'),
(146, 18, 2, 'Jeremias', 1, NULL, NULL, 5, 2, 'Verificar relogio com papel enroscado', 'Dora', '2020-03-30', '0000-00-00', '2020-03-31', 'Rolete nao gira', 'Moto do rolete', 'Nenhuma', '1'),
(147, 36, 2, 'Jeremias', 1, NULL, NULL, 5, 3, 'Pdv 103, nobreak, monitor e tanca queimados', 'Dora', '2020-03-30', '0000-00-00', '2020-03-31', 'PDV na ligam', 'Troquei  1 tanca e 1 fonte', 'Nenhuma', '1'),
(148, 46, 11, 'Jeremias', 2, NULL, NULL, 5, 2, 'Reinstalar ifractal', 'gabrielly', '2020-03-31', '0000-00-00', '2020-03-31', 'maquina trocada ', 'reinstalado o ifractal', 'nenhuma', '1'),
(149, 25, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'configuração de balança de retorno da assistência, balanças direcionada a assistência ', 'fernando', '2020-03-31', '0000-00-00', '2020-03-31', 'configuração de balança de retorno da assistência, balanças direcionada a assistência ', 'configuração de balança de retorno da assistência, balanças direcionada a assistência ', 'n', '1'),
(150, 30, 3, 'Jeremias', 1, NULL, NULL, 5, 3, 'Cancelar a internet - 5841-7779 - cnpj 08170468000136', 'Setor Tecnologia', '2020-03-31', '0000-00-00', '2020-04-06', ' linha telefonica da loja NT concelada protocolo: 20206118620369', '\r\nlinha telefonica da loja NT concelada protocolo: 20206118620369\r\n', 'N', '1'),
(151, 24, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Troquei fonte ', 'Alessandra', '2020-03-31', '0000-00-00', '2020-03-31', 'Fonte atx queimou', 'Troquei a fonte ', 'Nenhuma', '1'),
(152, 26, 2, 'Benedito', 1, NULL, NULL, 5, 3, 'trocar pdv com usb quebrada', 'Maria', '2020-04-01', '2020-04-01', '2020-04-01', 'trocar cpu', 'troquei a tanca', 'nenhuma', '7'),
(153, 27, 2, 'Jaks', 1, NULL, NULL, 5, 2, 'Levar o sat do caixa 02', 'Marilene', '2020-04-01', '0000-00-00', '2020-04-02', 'trocar sat', 'troquei sat do caixa 2', 'nenhuma', '1'),
(154, 41, 3, 'Jaks', 1, NULL, NULL, 5, 1, 'impressora argox o ribbon enrolou na engrenagem', 'Marina', '2020-04-02', '0000-00-00', '2020-04-04', 'configurado argox testes ok', 'configurado argox testes ok', 'n', '1'),
(155, 30, 3, 'Jaks', 1, NULL, NULL, 5, 1, 'Argox imprimindo em branco', 'Thais', '2020-04-02', '0000-00-00', '2020-04-03', 'configurado agox testes ok', 'configurado agox testes ok', 'n', '1'),
(156, 30, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Argox imprimindo em branco', 'Thais', '2020-04-02', '0000-00-00', '2020-04-02', 'Teste', 'Duplicado', 'Nenhuma', '1'),
(157, 26, 2, 'Jaks', 1, NULL, NULL, 5, 1, '01 teclado caixa 2', 'CRISTIANA', '2020-04-02', '0000-00-00', '2020-04-03', 'não precisou mais', 'cancelado o pedido', 'nenhuma', '1'),
(158, 27, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'TROCAR HD DO CAIXA 02 NÃO ESTÁ RECONHECENDO O SAT.', 'MARILENE', '2020-04-02', '0000-00-00', '2020-04-03', 'trocar hd caixa2', 'foi trocado o hd do caixa 2', 'sat não vende', '1'),
(159, 39, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'pdv 3 sem conexão', 'Ronaldo', '2020-04-03', '0000-00-00', '2020-04-03', 'cabo de rede quebrado', 'troquei o cabo de rede', 'nenhuma', '1'),
(160, 6, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'mudança de escritório para frente de caixa, primeira etapa ', 'Marri', '2020-04-04', '0000-00-00', '2020-04-04', 'feito medidas para instalação de equipamentos', 'feito medidas para instalação de equipamentos', 'n', '1'),
(161, 27, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'Trocar a tanca do pdv 2, usbs não funcionam ', 'Marilene', '2020-04-05', '0000-00-00', '2020-04-06', 'Efetuado a troca da tanca do caixa 102, testes de vendas ok', 'Efetuado a troca da tanca do caixa 102, testes de vendas ok', 'N', '1'),
(162, 16, 3, 'Benedito', 1, NULL, NULL, 5, 1, '2 leitores', 'claudia', '2020-04-06', '0000-00-00', '2020-04-06', 'Efetuado a troca de dois leitores, testes ok', 'Efetuado a troca de dois leitores, testes ok', 'N', '1'),
(163, 36, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'relógio de ponto fora', 'dora', '2020-04-06', '0000-00-00', '2020-04-06', 'Relógio ligado com ajuda do gerente ELI ', 'Relógio ligado com ajuda do gerente ELI ', 'n', '1'),
(164, 51, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'configurar impressora no logus da Jaciara.', 'edvania', '2020-04-06', '0000-00-00', '2020-04-06', 'decidiu aguardar a impressora nova', 'decidiu aguardar a impressora nova', 'N', '1'),
(165, 6, 2, 'Benedito', 1, NULL, NULL, 5, 1, 'relógio de ponto fora, tentativa de desligar e ligar sem sucesso', 'Maria', '2020-04-06', '0000-00-00', '2020-04-06', 'Cabo rede rompido', 'Troca de RJ 45', 'Nenhuma', '1'),
(166, 18, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'Levar um Nobreak PDV 102', 'Marias Das Dores', '2020-04-06', '0000-00-00', '2020-04-06', 'voltou a energia', 'voltou a energia', 'nenhuma', '1'),
(167, 51, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'tela azul do windows ', 'Jaciara', '2020-04-06', '0000-00-00', '2020-04-08', 'Efetuado a troca do micro do comercial', 'Efetuado a troca do micro do comercial', 'n', '1'),
(168, 38, 2, 'Benedito', 1, NULL, NULL, 5, 3, 'monitor', 'Dany', '2020-04-07', '2020-04-07', '2020-04-07', 'Monitor Queimado', 'troquei o monitor', 'nenhuma', '7'),
(169, 49, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'Colocar um micro no escritório para venda telemarketing', 'Vandinho', '2020-04-07', '0000-00-00', '2020-04-08', 'Alinhado com a loja que tão logo chegue o funcionário novo nos avise para que seja feito a instalação do micro', 'Alinhado com a loja que tão logo chegue o funcionário novo nos avise para que seja feito a instalação do micro', 'n', '1'),
(170, 39, 2, 'Benedito', 1, NULL, NULL, 5, 1, 'Cabo RJ11 do modem perdendo conexão, necessário a troca; verificar também se a tomada rj11 no modem da vivo está com mau contato, caso sim necessário ', 'Gabriela', '2020-04-08', '0000-00-00', '2020-04-21', 'Cabo rede rompido', 'Troquei o cabo', 'Nenhuma', '1'),
(171, 6, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Instalado tomada de rede para o caixa 102, instalado micro do escritório no caixa 102.', 'Petrina', '2020-04-08', '0000-00-00', '2020-04-08', 'Instalado tomada de rede para o caixa 102, instalado micro do escritório no caixa 102.', 'Instalado tomada de rede para o caixa 102, instalado micro do escritório no caixa 102.', 'n', '1'),
(172, 45, 2, 'Benedito', 1, NULL, NULL, 5, 1, 'relógio de ponto', 'paula', '2020-04-09', '0000-00-00', '2020-04-11', 'relógio sem rede', 'coloquei o cabo', 'nenhuma', '1'),
(173, 8, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'PDV 01 DESLIGANDO', 'Gilson', '2020-04-09', '2020-04-11', '2020-04-11', 'tanca desligando', 'troquei a tanca', 'nenhuma', '7'),
(174, 8, 2, 'Jaks', 1, NULL, NULL, 5, 2, 'CABO DE REDE DO CAIXA 102 MAU CONTATO PRECISA TROCAR O RJ45', 'CINARA', '2020-04-11', '0000-00-00', '2020-04-14', 'Trocar Rj45', 'Troquei o rj45', 'Nenhuma', '1'),
(175, 21, 3, 'Benedito', 1, NULL, NULL, 5, 2, ' pdv 102 desligando, levar 2 leitores', 'ariadne', '2020-04-11', '2020-04-12', '2020-04-13', 'Eliminado mau contato do pdv 102 e troca de 2 leitores, testes ok', 'Eliminado mau contato do pdv 102 e troca de 2 leitores, testes ok', 'n', '4'),
(176, 36, 3, 'Benedito', 1, NULL, NULL, 5, 2, 'pdv 102 desligando.', 'Dora', '2020-04-12', '0000-00-00', '2020-04-13', 'Feito acompanhamento do pdv e mesmo não apresentou instabilidade', 'Feito acompanhamento do pdv e mesmo não apresentou instabilidade', 'n', '1'),
(177, 45, 3, 'Benedito', 1, NULL, NULL, 5, 2, 'necessário reparo da tomada de rede do relógio de ponto com mau contato ( o cabo do relógio passa pela parede e entre para dentro do escritório)', 'Alison', '2020-04-13', '0000-00-00', '2020-04-14', 'feito novo ponto de rede, canaleta,  testes ok', 'feito novo ponto de rede, canaleta,  testes ok', 'n', '1'),
(178, 9, 2, 'Jaks', 1, NULL, NULL, 5, 2, 'Rélogio de ponto sem conexão', 'Nagela', '2020-04-14', '0000-00-00', '2020-04-14', 'Relógio sem conexão', 'Conectei o cabo de rede', 'Nenhuma', '1'),
(179, 8, 2, 'Jaks', 1, NULL, NULL, 5, 2, 'Cabo de rede do caixa 2 mau contato.', 'Cinara', '2020-04-14', '0000-00-00', '2020-04-16', 'PDV 2 sem rede', 'Refiz o cabo', 'Nenhuma', '1'),
(180, 24, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Micro da gerencia sem apoio no suporte', 'andressa', '2020-04-15', '0000-00-00', '2020-04-16', 'feito instalação do micro da gerencia e organizado fios, limpeza do relógio de ponto testes ok', 'feito instalação do micro da gerencia e organizado fios, limpeza do relógio de ponto testes ok', 'n', '1'),
(181, 6, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Impressora nao liga', 'petrina', '2020-04-15', '0000-00-00', '2020-04-15', 'identificado problema na impressora, direcionado ao Fabio', 'identificado problema na impressora, direcionado ao Fabio', 'n', '1'),
(182, 12, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Instalar micro novo noescritorio central', 'celiane', '2020-04-15', '0000-00-00', '2020-04-15', 'Efetuado instalaçao do micro do escritorio central, testes ok, instalado impressoras', 'Efetuado instalaçao do micro do escritorio central, testes ok, instalado impressoras', 'n', '1'),
(183, 22, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'configurado balança testes ok', 'amanda', '2020-04-15', '0000-00-00', '2020-04-15', 'efetuado configuraçao da balança testes ok', 'efetuado configuraçao da balança testes ok', 'n', '1'),
(184, 6, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'retirar modem 4G e acompanhar instalação da fibra ótica', 'Petrina', '2020-04-16', '0000-00-00', '2020-04-22', 'Retirado modem 4G e feito ligação do modem de fibra ótica, testes ok', 'Retirado modem 4G e feito ligação do modem de fibra ótica, testes ok', 'N', '1'),
(185, 22, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'desinstalar o balcão de caixa.', 'Aline', '2020-04-16', '0000-00-00', '2020-04-17', 'feito instalação do novo caixa, instalado antena wi-fi, configurado impressora, testes ok', 'feito instalação do novo caixa, instalado antena wi-fi, configurado impressora, testes ok', 'n', '1'),
(186, 35, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'configuraçao debalancas', 'silvana', '2020-04-16', '0000-00-00', '2020-04-16', 'configuraçao debalancas', 'configuraçao debalancas', 'n', '1'),
(187, 25, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'CONFIGURAR 2 BALANÇAS QUE CHEGOU DO CONSERTO ', 'Fernando', '2020-04-16', '2020-04-17', '2020-04-17', 'balança não conecta a rede, direcionado a assistência.', 'balança não conecta a rede, direcionado a assistência.', 'n', '1'),
(188, 36, 3, 'Jaks', 1, NULL, NULL, 5, 1, '01 Leitor ', 'DORA', '2020-04-16', '0000-00-00', '2020-04-20', 'Efetuado a troca do Leitor, testes ok', 'Efetuado a troca do Leitor, testes ok', 'n', '1'),
(189, 14, 3, 'Jaks', 1, NULL, NULL, 5, 2, 'Ubiquiti mau contato.', 'Paula', '2020-04-17', '0000-00-00', '2020-04-18', 'refeito cabo, testes ok', 'refeito cabo, testes ok', 'N', '1'),
(190, 48, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'Levar 01 monitor para o caixa 01 *Urgente*', 'Kaique', '2020-04-17', '0000-00-00', '2020-04-18', 'Efetuado a troca do monitor testes ok', 'Efetuado a troca do monitor testes ok', 'n', '1'),
(191, 7, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'impressora de caixa não liga', 'maria', '2020-04-18', '0000-00-00', '2020-04-20', 'Feito configuração das balanças, testes ok', 'Feito configuração das balanças, testes ok', 'n', '1'),
(192, 22, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'ligar pdv 102', 'tiao', '2020-04-18', '0000-00-00', '2020-04-18', 'ligar pdv 102 na rede', 'Eliminado mau contato da rede testes ok', 'n', '1'),
(193, 1, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Concluir instalação micro do escritório da loja AC & treinamento para fiscal das 12hs as 20hs ', 'juçara', '2020-04-22', '0000-00-00', '2020-04-23', 'Feito instalação do micro do escritório, configuração de  balanças.', 'Feito instalação do micro do escritório, configuração de  balanças.', 'N', '1'),
(194, 30, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'LEVAR 02 TECLADOS 01 MOUSE E 01 LEITOR.', 'TAIS', '2020-04-22', '2020-04-22', '2020-04-22', 'TROCAR 02 TECLADOS 01 MOUSE E 01 LEITOR', 'TROQUEI 02 TECLADOS 01 MOUSE E 01 LEITOR', 'NENHUMA', '7'),
(195, 24, 11, 'Jeremias', 2, NULL, NULL, 4, 2, 'Reinstalar Ifractal', 'Equipe T.I', '2020-04-22', '2020-04-22', NULL, '', '', '', '4'),
(196, 28, 3, 'Jeremias', 1, NULL, NULL, 5, 1, 'Configurar balança', 'Maria', '2020-04-23', '0000-00-00', '2020-04-23', 'balança não conecta a rede, direcionado a assistência.', 'balança não conecta a rede, direcionado a assistência.', 'n', '1'),
(197, 30, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'Acompanhar pedido a religação da linha telefone da loja, aguardar 7 dias(Liliane)Solicitação de fechamento de fatura da loja NT, após pagamento da', 'Equipe T.I', '2020-04-23', '2020-04-25', '2020-04-25', 'Solicitação de ativação da linha da loja NT 5841-7779 prazo ', 'Protocolo: 0003301/2020\r\nSolicitação de ativação da linha da loja NT 5841-7779 prazo 5 dias uteis  Liliane-->\r\nProt', 'N', '4'),
(198, 52, 3, 'Jeremias', 1, NULL, NULL, 5, 3, 'Instalação da fibra ótica na sexta feira dia 08/05/20 08-10:00', 'Equipe T.I', '2020-04-23', '2020-05-08', '0000-00-00', 'Instalação da fibra ótica na sexta feira dia 08/05/20', 'aguardar abertura de outro chamado', 'A fibra nao foi instalada, por erro tecnico de chamado', '4'),
(199, 6, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Argox puxando Ribbon, KVM com problemas na função numérica', 'Petrina', '2020-04-25', '0000-00-00', '2020-04-25', 'Feito configuração na argox testes ok, micro do escritório do caixa retirado do kvm e instalado monitor ', 'Feito configuração na argox testes ok, micro do escritório do caixa retirado do kvm e instalado monitor ', 'N', '1'),
(200, 33, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Verificar impressora de rua (problemas para imprimir, as vezes não imprime e a venda fica pedente', 'Gustavo', '2020-04-25', '0000-00-00', '2020-04-25', 'Eliminado mau contato do switch do caixa 2, configurado impressora de Rua sem sucesso, encaminhado para o Fabio', 'Eliminado mau contato do switch do caixa 2, configurado impressora de Rua sem sucesso, encaminhado para o Fabio', 'n', '1'),
(201, 46, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Verificar mau contato no cabo de rede do pdv 2.', 'Gabriela', '2020-04-25', '0000-00-00', '2020-04-28', 'rj45 saindo', 'conectei cabo de rede', 'nenhuma', '1'),
(202, 49, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'relogio de ponto fora', 'rodrigo', '2020-04-27', '0000-00-00', '2020-04-28', 'eliminado mau contato do ponto de rede, testes ok', 'eliminado mau contato do ponto de rede com ajuda do gerente, testes ok', 'n', '1'),
(203, 51, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'PDV 102 está sem sat', 'Edvania', '2020-04-27', '2020-04-27', '2020-04-29', 'O sat foi retirado da loja e nao devolveram', 'eliminado mau contato do ponto de rede, refeito ponto de rede do caixa 101 e 104\r\nconfigurado balanças e ligado sat do pdv 101 e feito testes de vendas', 'n', '4'),
(204, 51, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'Verificar rede dos pdv 101 e 104 (keystone)', 'Edvania', '2020-04-27', '0000-00-00', '2020-04-29', 'eliminado mau contato do ponto de rede, refeito ponto de rede do caixa 101 e 104', 'eliminado mau contato do ponto de rede, refeito ponto de rede do caixa 101 e 104', 'n', '1'),
(205, 23, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Verificar etiqueta das balanças', 'Vandinho', '2020-04-28', '0000-00-00', '2020-04-28', 'BALANÇA COM PROBLEMA DE IMPRESSÃO', 'GERENTE IRA ABRIR CHAMADO NA MSK', 'NENHUMA', '1'),
(206, 18, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Retirada do caixa 103 da loja Fm, monitor+tanca', 'claudia', '2020-04-29', '2020-04-29', '2020-04-29', 'n', 'u', 'n', '4'),
(207, 16, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Retirada do caixa 103 da loja Fm, monitor+tanca', 'claudia', '2020-04-29', '0000-00-00', '2020-04-29', 'Retirada do caixa 103 da loja Fm, monitor+tanca', 'Retirada do caixa 103 da loja Fm, monitor+tanca', 'n', '1'),
(208, 6, 2, 'Benedito', 1, NULL, NULL, 5, 1, 'Trocar KVM do micro gerencia do caixa.', 'Petrina', '2020-04-30', '0000-00-00', '2020-05-01', 'feito instala~cao', 'instalado', 'n', '1'),
(209, 52, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Validar instalação de fibra ótica da loja', 'Maria', '2020-04-30', '0000-00-00', '2020-05-01', 'nao foi instalado fibra, feito identificação dos ponto de rede dos caixas, testes ok', 'nao foi instalado fibra, feito identificação dos ponto de rede dos caixas, testes ok', 'n', '1'),
(210, 30, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Validar instalação de linha telefônica até sexta feira, ', 'Thais', '2020-04-30', '2020-04-30', '2020-05-01', 'A linha ja foi ativada', 'A linha ja foi ativada', 'n', '4'),
(211, 22, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Levar Fita Hellermann  grande para prender monitor do caixa 101 no pedestal ', 'amanda', '2020-04-30', '2020-04-30', '2020-05-01', 'para evitar que caia, até que a manutenção faça um suporte', 'Chamado técnico aberto para loja LI protocolo :10520207037122 , a VIVO fez uma cargar e nao caiu mais a conexão, mais o mikrotic esta estranho, monito', 'n', '4'),
(212, 26, 11, 'Jeremias', 2, NULL, NULL, 5, 2, 'Configurar ifractal na nova maquina do escritorio', 'Equipe T.I', '2020-04-30', '2020-04-30', '2020-04-30', 'A maquina foi trocada ', 'reinstalado o ifractal', 'nenhuma', '4'),
(213, 26, 2, 'Jeremias', 2, NULL, NULL, 5, 3, 'Troca da maquina do escritorio', 'Equipe T.I', '2020-04-30', '2020-04-30', '2020-04-30', 'computador com windows 7', 'troquei o pc com windows 10', 'NENHUMA', '7'),
(214, 2, 2, 'Jeremias', 2, NULL, NULL, 5, 2, 'PDV103 liga mas nao aparece imagem', 'Claudizia', '2020-05-01', '0000-00-00', '2020-05-02', 'Memória', 'Limpei a memória ram', 'Nenhuma', '1'),
(215, 44, 2, 'Jaks', 2, NULL, NULL, 5, 3, 'PDV 102 NÃO SOBE, LOGUS INFORMOU QUE PRECISA TROCAR O HD.', 'Viviane', '2020-05-01', '2020-05-03', '2020-05-05', 'Trocar hd', 'Troquei hd, e deixei um leitor\r\n', 'Nenhuma', '7'),
(223, 6, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'configurar codigo de barra na balança Filizola', 'Petrina', '2020-05-02', '0000-00-00', '2020-05-02', 'balança com erro no codigo de barras', 'efutado a carga de parametros', 'nenhuma', '1'),
(224, 25, 11, 'Jeremias', 2, NULL, NULL, 5, 3, 'Balanca5 sem comunicação', 'Fernando', '2020-05-02', '2020-05-02', '2020-05-02', 'O ip e a id da balança estava incorreto', 'Foi removido a balança e colocado id = 5 e ip 55', 'nehuma', '5'),
(225, 23, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja lv sem internet', 'Ipanema Prime', '2020-05-02', '0000-00-00', '2020-05-02', 'informado pela operadora NET , regiao de sao paulo sem internet', 'informado a loja que a internet vai voltar até a 18 horas', 'nenhuma', '1'),
(226, 4, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Computador do escritorio sem internet', 'Maria', '2020-05-02', '0000-00-00', '2020-05-02', 'cabo de rede do computador está mau contato', 'retirado o cabo e recolocado', 'possivelmente a conexao do cabo de rede esteja ruim', '1'),
(227, 47, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Problema com a impressora laser aqui do SD', 'Dayane', '2020-05-02', '2020-05-02', '2020-05-02', 'enroscando papel dentro da impressora', 'passado o contato para a loja entrar e contato com Fabio', 'nenhuma', '4'),
(228, 45, 11, 'Jeremias', 1, NULL, NULL, 5, 1, 'Loja sem internet', 'Cledionaria', '2020-05-02', '0000-00-00', '2020-05-02', 'A NET informou que a regiao de Sao Paulo, está passando por manutencao, e a previsão de normalizacao é até as 18 horas', 'A NET infrmou que a regiao de Sao Paulo, está passando por manutencao, e a previsão de normalizacao é até as 18 horas', 'nenhuma', '1'),
(229, 23, 3, 'Jeremias', 1, NULL, NULL, 5, 2, 'Loja sem internet - Levar um modem 4G', 'Loja LV', '2020-05-02', '0000-00-00', '2020-05-03', 'internet ok', 'internet ok', 'n', '1'),
(230, 18, 2, 'Jeremias', 2, NULL, NULL, 5, 3, 'Relógio de ponto não liga', 'Dora', '2020-05-03', '2020-05-05', '2020-05-05', 'Relógio de ponto queimado', 'RH IRÁ ABRIR CHAMADO NO MEGARELÓGIOS', 'NENHUMA', '4'),
(231, 6, 3, 'Benedito', 2, NULL, NULL, 5, 1, 'trocar cabo do sat, configurar Argox, impressão do TS saindo no foods', 'petrina', '2020-05-04', '2020-05-05', '2020-05-05', 'troca de cabo do sat, configurado impressora, testes ok', 'troca de cabo do sat, configurado impressora, testes ok', 'n', '4'),
(232, 51, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'micro não liga', 'jaciara', '2020-05-04', '0000-00-00', '2020-05-04', 'efetuado troca da fonte, testes ok', 'efetuado troca da fonte, testes ok', 'N', '1'),
(233, 23, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'configurar balança', 'silvana', '2020-05-04', '0000-00-00', '2020-05-04', 'tentativa de configuração da balança sem sucesso, direcionado a assistência técnica', 'tentativa de configuração da balança sem sucesso, direcionado a assistência técnica', 'n', '1'),
(234, 4, 1, 'Jeremias', 2, NULL, NULL, 5, 1, 'Não consegue enviar caixa para a matriz', 'Maria', '2020-05-04', '0000-00-00', '2020-05-07', 'falta efetuar resumo diario', 'feito resumo diario', 'nenhuma', '1'),
(235, 21, 2, 'Jeremias', 2, NULL, NULL, 5, 3, 'Acompanhamento da instalação dos telefones e link 50MB - 05/05/2020 entre 13:00 - 15:30', 'Equipe T.I', '2020-05-04', '2020-05-04', '2020-05-04', 'chamado para a loja errada', 'chamado para a loja errada', 'chamado para a loja errada', '4'),
(236, 24, 11, 'Jeremias', 1, NULL, NULL, 5, 1, 'Loja sem internet', 'Bahia', '2020-05-04', '0000-00-00', '2020-05-04', 'Rede da net offline', 'informado a loja', 'nenhuma', '1'),
(237, 52, 2, 'Jeremias', 2, NULL, NULL, 5, 3, 'Acompanhamento da instalação dos telefones e link 50MB - 05/05/2020 entre 13:00 e 15:00', 'Equipe T.I', '2020-05-04', '2020-05-04', '2020-05-06', 'Fibra ótica não instalada devido a altura da loja', 'Fibra ótica não instalada devido a altura da loja', 'n', '4'),
(238, 7, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja sem internet', 'Equipe T.I', '2020-05-04', '0000-00-00', '2020-05-04', 'Rede da net offline', 'informado a loja', 'nenhuma', '1'),
(239, 19, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja sem internet', 'Equipe T.I', '2020-05-04', '0000-00-00', '2020-05-04', 'Rede da net offline', 'informado a loja ', 'nenhuma', '1'),
(240, 33, 3, 'Jeremias', 2, NULL, NULL, 5, 1, 'A Rai solicitando teclado para entregar em sua casa', 'Rai', '2020-05-04', '2020-05-04', '2020-05-05', 'Efetuado troca de teclado testes ok', 'Efetuado troca de teclado testes ok', 'n', '4'),
(241, 33, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'PC da  RAi nao acessa logus', 'Rai', '2020-05-04', '0000-00-00', '2020-05-04', 'microtick perdeu a vpn', 'reiniciar microtik', 'nenhuma', '1'),
(242, 16, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'etiqueta nutricional  balanca ip:57  ', 'Claudia', '2020-05-04', '0000-00-00', '2020-05-05', 'Configurado balança com informações nutricionais, testes ok', 'Configurado balança com informações nutricionais, testes ok', 'n', '1'),
(243, 52, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'acompanhar instalação de fibra', 'Maria', '2020-05-04', '0000-00-00', '2020-05-04', 'Fibra ótica não pode ser instalada devido o pedido para cidade errada', 'Fibra ótica não pode ser instalada devido o pedido para cidade errada', 'n', '1'),
(244, 12, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Internet fora', 'Darce', '2020-05-04', '0000-00-00', '2020-05-04', 'Internet ligado no modem adls, testes ok', 'Internet ligado no modem adls, testes ok', 'n', '1'),
(245, 23, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Resetar e configurar ubiquiti', 'paula', '2020-05-04', '0000-00-00', '2020-05-06', 'refeito cabo, configurado ubiquiti, configurado balanças, testes ok', 'Refeito cabo, configurado ubiquiti, configurado balanças, testes ok', 'n', '1'),
(246, 24, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Configurar balança que chegou na loja, e retirar balança do balcão', 'Bahia', '2020-05-05', '0000-00-00', '2020-05-06', 'Configurar balança', 'Balança com defeito', 'Nenhuma', '1'),
(247, 45, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'PDV102 as vezes passa a compra finaliza normal, mas não abre a gaveta', 'Paula', '2020-05-05', '0000-00-00', '2020-05-05', 'GAVETA DO CAIXA 102 TRAVANDO', 'ENVIEI CARGA PDV', 'NENHUMA', '1'),
(248, 33, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'resetar senha da rede gerencia ', 'Equipe T.I', '2020-05-05', '0000-00-00', '2020-05-05', 'a senha era gerenciapa@2018', 'gerenciapa@2016', 'nenhuma', '1'),
(249, 17, 11, 'Jeremias', 1, NULL, NULL, 5, 1, 'PC recepção está sem rede', 'Equipe T.I', '2020-05-05', '0000-00-00', '2020-05-05', 'o adaptadr de rede estava desativado', 'ativado adaptador de rede', 'nenhuma', '1'),
(250, 51, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Instalação de driveres', 'edvania', '2020-05-05', '0000-00-00', '2020-05-05', 'Instalação de driveres', 'Instalação de driveres', 'n', '1'),
(251, 47, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'PDV103 nao está enviando vendas para a matriz', 'Danny', '2020-05-05', '0000-00-00', '2020-05-05', 'PDV com resumo diario pendente', 'efetuado resumo diario', 'nenhuma', '1'),
(252, 6, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'trocar Argox', 'Petrina', '2020-05-06', '0000-00-00', '2020-05-06', 'troca da Argox, testes ok', 'troca da Argox, testes ok', 'n', '1'),
(253, 35, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Nutricionista Daniela solicita retirar todos equipamentos de informatica da ', 'Silvana', '2020-05-06', '0000-00-00', '2020-05-06', 'retirado equipamentos de informatica da loja', 'retirado equipamentos de informatica da loja', 'n', '1'),
(254, 3, 2, 'Jeremias', 2, NULL, NULL, 5, 2, 'PDV 101 está sem rede e pegar os N/S de todos os sat', 'Alessandra', '2020-05-06', '2020-05-06', '2020-05-07', 'pdv 01 sem rede', 'troquei o keystone', 'nenhuma', '4'),
(255, 21, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Loja sem internet - Levar um modem 4g', 'Ariadne', '2020-05-06', '0000-00-00', '2020-05-07', 'loja sem internet', 'coloquei 4g', 'nenhuma', '1'),
(256, 24, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Impressora nao imprime do mataburro', 'Andressa', '2020-05-06', '0000-00-00', '2020-05-06', 'o computador estava fora do dominio', 'as impressoras ja foram configuradas no Logus', 'nenhuma', '1'),
(257, 26, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Impressora nao imprime do mataburro', 'Loja NC', '2020-05-06', '0000-00-00', '2020-05-06', 'computador fora do dominio da Logus', 'colocado computador no dominio e configurado balança', 'nenhuma', '1'),
(258, 21, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Substituição do pdv 102, desligando constantemente', 'Equipe T.I', '2020-05-06', '0000-00-00', '2020-05-07', 'pdv desligando', 'troquei a tanca', 'nenhuma', '1'),
(259, 21, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Abrir chamado na net, internet muito lenta', 'Equipe T.I', '2020-05-06', '2020-05-07', '2020-05-07', ' internet muito lenta', 'A lentida da internet, foi boleto nao pago no mes 4', 'confirmar pagamento', '4'),
(260, 16, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'configurar balança', 'claudia', '2020-05-07', '0000-00-00', '2020-05-07', 'efetuado configuração da balança sem sucesso, balança não comunica com a rede', 'efetuado configuração da balança sem sucesso, balança não comunica com a rede', 'n', '1'),
(261, 26, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'usuario nao sabe a senha do TS', 'Loja NC', '2020-05-07', '0000-00-00', '2020-05-07', 'usuario nao sabe a senha do TS', 'informado a senha do ts', 'nenhuma', '1'),
(262, 51, 11, 'Jeremias', 1, NULL, NULL, 5, 1, 'Usuario nao consegue dar carga nos pdvs', 'Loja PI', '2020-05-07', '0000-00-00', '2020-05-07', 'orientado a usuaria a fechar o Logus', 'orientado a usuaria a fechar o Logus', 'nenhuma', '1'),
(263, 3, 11, 'Jeremias', 2, NULL, NULL, 3, 1, 'Preparar um sat para o pdv 103', 'Equipe T.I', '2020-05-07', '2020-05-14', '0000-00-00', '', '', '', '3'),
(264, 39, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Retirado 4 Caixas da loja, loja fechada para reforma', 'Gabriela', '2020-05-07', '0000-00-00', '2020-05-07', 'Retirado 4 Caixas da loja, loja fechada para reforma', 'Retirado 4 Caixas da loja, loja fechada para reforma', 'N', '1'),
(265, 18, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja HM sem conxao com as balanças', 'Dora', '2020-05-07', '0000-00-00', '2020-05-07', 'Ubiquiti travado', 'reiniciar ubiquiti', 'nenhuma', '1'),
(266, 21, 11, 'Jeremias', 1, NULL, NULL, 5, 1, 'Enviar comprovante de pgto de internet loja JS', 'Elisangela - EC', '2020-05-07', '0000-00-00', '2020-05-07', 'O Escritório enviou o comprovante', 'O comprovante foi enviado por email a NET', 'Aguardando comprovação de pagamento', '1'),
(267, 22, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Computador do escritorio sem internet', 'Loja LI', '2020-05-07', '0000-00-00', '2020-05-07', 'microtik bloqueando o acesso a internet', 'reiniciado o microtick', 'nenhuma', '1');
INSERT INTO `ordem` (`id`, `id_loja`, `id_tecnico`, `criado`, `atendimento`, `id_mensagem`, `id_estoque`, `id_status_chamado`, `id_prioridade`, `reclamado`, `solicitante`, `data_abertura_chamado`, `ultima_atualizacao`, `data_fecha_chamado`, `avaliacao_tecnico`, `solucao`, `pendencia`, `status`) VALUES
(268, 22, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja LI - sem conexao com a internet e logus', 'Amanda', '2020-05-07', '2020-05-07', '2020-05-07', 'O Microtik estava travado, impedindo a conexao com a internet', 'reiniciado o microtik', 'nenhuma', '4'),
(269, 9, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Impressora do caixa 102, nao imprime', 'Regiane', '2020-05-07', '0000-00-00', '2020-05-07', 'Impressora não imprime', 'reinstalei manualmente a impressora', 'nenhuma', '1'),
(270, 25, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Balança alterando as configurações de ip e numero', 'Fernando', '2020-05-07', '0000-00-00', '2020-05-07', 'Havia um arquivo de configuração que alterava o ip e numero da balança', 'removido o arquivo', 'nenhuma', '1'),
(271, 51, 2, 'Jaks', 2, NULL, NULL, 5, 3, 'ELABORAR ETIQUETAS COM NUTRICIONAIS NA LOJA PI DIA 08/05/20 13:00', 'DANIELA NUTRICIONISTA', '2020-05-07', '2020-05-07', '2020-05-08', 'REMARCAR ', 'REMARCAR PARA OUTRO DIA', 'NENHUMA', '4'),
(272, 16, 2, 'Benedito', 1, NULL, NULL, 5, 1, 'Rede PDV 102 COM FALHA de rede, provável problema: Rj45 oxidado/mau contato', 'Cláudia', '2020-05-08', '0000-00-00', '2020-05-10', 'pdv funcionando', 'PDV FUNCIONANDO NORMALMENTE', 'NENHUMA', '1'),
(273, 15, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Relogio de ponto fora da rede', 'Aiumy', '2020-05-08', '0000-00-00', '2020-05-08', 'relogio perdeu comunicação com a rede', 'reirado e colocado o cabo de rede', 'nenhuma', '1'),
(274, 47, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja nao consegui enviar fechamento de caixa para matriz', 'Dayane', '2020-05-08', '0000-00-00', '2020-05-08', 'resumo diario do dia 05 e 06 pendentes', 'feito resumo diario ', 'nenhuma', '1'),
(275, 6, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'colocar a campanha do dia das mães', 'Bianca - RH', '2020-05-08', '0000-00-00', '2020-05-08', 'acionar campanha dias das maes', 'campanha acionada', 'nenhuma', '1'),
(276, 35, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'colocar a campanha do dia das mães no pdv', 'Bianca - RH', '2020-05-08', '0000-00-00', '2020-05-08', 'acionar campanha dias das maes', 'campanha acionada', 'nenhuma', '1'),
(277, 17, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Computador do escritorio desligou e noreak apitando', 'Lorena', '2020-05-08', '0000-00-00', '2020-05-08', 'nobreak estava ligado na regua queimada', 'retirado a regua e nobreak ligou', 'nenhuma', '1'),
(278, 49, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'PDV 101 da VM , está assim desde ontem, erro pinpad', 'Dandara', '2020-05-08', '0000-00-00', '2020-05-08', 'pinpad com msg de erro', 'orientado a loja a trocar a porta usb do pinpad', 'nenhuma', '1'),
(279, 22, 11, 'Jeremias', 1, NULL, NULL, 5, 1, 'Computador do escritorio sem internet', 'Loja LI', '2020-05-08', '2020-05-08', '2020-05-08', 'crimpe do rj quebrado', 'trocado o cabo de rede', 'nenhuma', '4'),
(280, 4, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Nao abre as ferramentas do logus', 'Claudia', '2020-05-08', '0000-00-00', '2020-05-08', 'logus travado', 'fechado todas as telas do logus, voltou a operar', 'nenhuma', '1'),
(281, 28, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Nota fiscal rejeitada', 'Helen', '2020-05-08', '0000-00-00', '2020-05-08', 'erro na incrição estadual', 'informado a loja para corrigir o cadastro', 'nenhuma', '1'),
(282, 6, 3, 'Jeremias', 1, NULL, NULL, 5, 1, 'Codigo 6480-4  nao desce pra balança', 'Petrina', '2020-05-08', '0000-00-00', '2020-05-09', 'Enviado carga para balanças testes ok', 'Enviado carga para balanças testes ok', 'n', '1'),
(283, 30, 2, 'Jeremias', 2, NULL, NULL, 5, 1, 'Impressora Argox, nao imprime do Bartender', 'Thais', '2020-05-08', '0000-00-00', '2020-05-10', 'argox imprimindo em branco', 'alinhamento ', 'NENHUMA', '1'),
(284, 43, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Nos pdvs o pinpad não está passando cartoes de cliente', 'Avanilda', '2020-05-09', '2020-05-11', '2020-05-11', 'possivelmente erro na programação do Logus', 'acionado a Renata da Plantão Logus', 'nenhuma', '4'),
(285, 7, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Ao passar compra o pdv desligou', 'Loja CF', '2020-05-09', '0000-00-00', '2020-05-09', 'A venda foi cancelada', 'Após verificar no gestor loja,Orientado a finalizar a compra que subiu no pdv', 'nenhuma', '1'),
(286, 43, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Abertura chamado no plantao logus, verificar erro 31 pinpad', 'Equipe T.I', '2020-05-09', '2020-05-13', '2020-05-14', 'ao dar carga de tabelas no pinpad, aparece o erro 31', 'repassado o chamado para a Logus', 'Tratativas sem feita com a Logus', '4'),
(287, 33, 3, 'Benedito', 1, NULL, NULL, 5, 3, 'Telefone inoperante e nobreak queimado', 'Geovana', '2020-05-09', '2020-05-09', '2020-05-09', 'Telefone inoperante e nobreak queimado', 'Telefone inoperante e nobreak queimado', 'n', '1'),
(288, 21, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Pedido de suporte ao Plantao Logus', 'Equipe T.I', '2020-05-09', '2020-05-13', '2020-05-14', 'erro de comunicação entre a Cielo e a SoftwareExpress', 'até o fechamento dessa os, nao obtivemos repostas', 'Tratativas sem feita com a Logus', '4'),
(289, 52, 11, 'Jeremias', 2, NULL, NULL, 4, 1, 'Montar todo o enxoval da loja', 'Equipe T.I', '2020-05-09', '2020-05-09', '0000-00-00', 'Nova loja que será inaugurada', 'configurado 4 sat,4 tanca e 1 microtick', '', '4'),
(290, 1, 2, 'Jeremias', 2, NULL, NULL, 5, 1, 'PDVS 101, 102 e o 103  estãos sem conexão ao servidor', 'Jussara', '2020-05-09', '0000-00-00', '2020-05-10', 'SEM CONEXÃO ', 'REINICIEI O MIKROTIK', 'NENHUMA', '1'),
(291, 14, 2, 'Jeremias', 2, NULL, NULL, 5, 1, 'Na loja FA está sem internet nos caixas', 'Lucas', '2020-05-09', '2020-05-09', '2020-05-10', 'Aberto chamado na vivo para atendimento na loja', 'Técnico da vivo deixou o modem adsl funcionando, fibra desligado por falta de pagamento', 'internet fibra fora ', '4'),
(292, 29, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'PDV 104 sem rede', 'Thamires', '2020-05-09', '0000-00-00', '2020-05-09', 'pdv estava sem rede', 'removido e reconectado o cabo - tudo ok', 'nenhuma', '1'),
(295, 47, 2, 'Jeremias', 2, NULL, NULL, 5, 3, 'Pinpad erro 31 pdv 101', 'Loja DD', '2020-05-09', '2020-05-10', '2020-05-10', 'pinpad com erro', 'troquei a porta usb', 'NENHUMA', '7'),
(296, 38, 3, 'Jaks', 1, NULL, NULL, 5, 1, '2 teclados', 'Danny', '2020-05-10', '0000-00-00', '2020-05-11', 'Efetuado a troca de 2 teclados, feito limpeza no relógio de ponto,  testes ok', 'Efetuado a troca de 2 teclados, feito limpeza no relógio de ponto,  testes ok', 'n', '1'),
(297, 4, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Relógio de ponto não emite comprovante', 'Maria', '2020-05-11', '0000-00-00', '2020-05-12', 'Relógio de ponto não imprime', 'Relógio de ponto não imprime, não puxa papel, direcionado ao rh', 'n', '1'),
(298, 52, 11, 'Jeremias', 2, NULL, NULL, 5, 3, 'confirmado a instalação da internet e duas linhas - 12/05 até as 12:00', 'Equipe T.I', '2020-05-11', '2020-05-12', '2020-05-13', 'reagendamento feito para o dia 14/5', 'reagendamento feito para o dia 14/5', 'nenhuma', '4'),
(299, 14, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Verificar porque tem excesso de linha na loja', 'Elisangela - EC', '2020-05-11', '2020-05-11', '2020-05-12', 'as contas estão em atraso os 02/03/04 2020', 'foi contratado outra internt', 'nenhuma', '4'),
(300, 6, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Remover campanha dia das mães', 'Bianca- RH', '2020-05-11', '0000-00-00', '2020-05-11', 'passou a data comemorativa', 'removido a campanha', 'nenhuma', '1'),
(301, 35, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Remover campanha dia das mães', 'Bianca - RH', '2020-05-11', '0000-00-00', '2020-05-11', 'passou a data comemorativa', 'removido  a campanha', 'nenhuma', '1'),
(302, 36, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Balanças vieram do conserto e nao estão na rede', 'Dora', '2020-05-11', '0000-00-00', '2020-05-11', 'chamado duplicado', 'chamado duplicado', 'nenhuma', '1'),
(303, 36, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Balanças vieram do conserto e nao estão na rede', 'Dora', '2020-05-11', '0000-00-00', '2020-05-11', 'balanças estão na rede', 'dado carga nas balanças', 'nenhuma', '1'),
(304, 23, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'configurar balança que veio do conserto', 'Paulo', '2020-05-11', '0000-00-00', '2020-05-11', 'Balança com problema na placa wireless', 'Gerente irá ligar na MSk', 'Nenhuma', '1'),
(305, 33, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'pdv 102 - nao está imprimindo cupom', 'Loja PA', '2020-05-11', '2020-05-11', '2020-05-11', 'cabo usb com mau contato', 'orientado a retirar e encaixar o cabo novamente', 'nenhuma', '4'),
(306, 17, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'As notas nao estao sendo processadas', 'Kelly', '2020-05-11', '0000-00-00', '2020-05-11', 'servidor cm lentidao', 'Reiniciado os processo do Sefaz', 'nenhuma', '1'),
(307, 49, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'pdv 101 desligNDO', 'Maria', '2020-05-11', '0000-00-00', '2020-05-11', 'Efetuado a troca da tanca do caixa 101, testes de vendas ok', 'Efetuado a troca da tanca do caixa 101, testes de vendas ok', 'N', '1'),
(308, 9, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'A impressora do PDV 101 ainda está com problema ', 'Regiane', '2020-05-11', '0000-00-00', '2020-05-12', 'PDV 2 NÃO IMPRIME SANGRIA', 'DEI CARGA PDV, PDV IMPRIMINDO NORMALMENTE', 'NENHUMA', '1'),
(309, 30, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Relógio de ponto fora da rede', 'Thais', '2020-05-12', '0000-00-00', '2020-05-12', 'eliminado mau contato no cabo de rede, testes ok', 'eliminado mau contato no cabo de rede, testes ok', 'n', '1'),
(310, 47, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'Gaveta caixa 101 parou ', 'Claudio', '2020-05-12', '0000-00-00', '2020-05-12', 'lacre travando a gaveta', 'retirei o lacre e coloquei\r\n\r\n', 'NENHUMA', '1'),
(311, 41, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Configurar impressora mataburro', 'marina', '2020-05-12', '2020-05-13', '2020-05-13', 'Feito configuração de mata burro, testes ok', 'Feito configuração de mata burro, testes ok', 'N', '2'),
(312, 24, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'configurar com nutricionais a  balança que veio da manutencao', 'Bahia', '2020-05-12', '0000-00-00', '2020-05-12', 'Balança desconfigurada', 'configurei a balança 04', 'NENHUMA', '1'),
(313, 14, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Pedir outra internet para a Loja', 'Elisangela - EC', '2020-05-12', '2020-05-12', '2020-05-13', 'solicitado para vendedor da vivo a internet', 'contratada a nova internet fibra com 300MB', 'nenhuma', '4'),
(314, 24, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'configurar balança que veio do conserto', 'Bahia', '2020-05-12', '0000-00-00', '2020-05-12', 'chamado duplicado', 'chamado duplicado', 'NENHUMA', '1'),
(315, 24, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'configurar balança que veio do conserto', 'Bahia', '2020-05-12', '0000-00-00', '2020-05-12', 'dupicado', 'chamado', 'duplicado', '1'),
(316, 3, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Pdv 102 na está passando o tef', 'Alessandra', '2020-05-12', '2020-05-12', '2020-05-12', 'A loja está sem internet', 'Aberto chamado na Net, um tecnico da net irá na loja ', 'nenhuma', '4'),
(317, 42, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Balança com a data de impressao desatualizada', 'Daniela - nutricionista', '2020-05-12', '0000-00-00', '2020-05-12', 'configuração de carga errada', 'refeito a configuração de carga e data ok', 'nenhuma', '1'),
(318, 26, 1, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja nao consegue enviar carga para a balança', 'Loja NC', '2020-05-12', '2020-05-12', '2020-05-12', 'refeito a conexao com o smart monitor', 'balança ok', 'nenhuma', '4'),
(319, 10, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Impressora laser não imprme do Logus', 'Andréia', '2020-05-12', '0000-00-00', '2020-05-12', 'necessario remover a maquina do dominio ', 'removido a maquina do dominio e corrigido o problema', 'nenhuma', '1'),
(320, 40, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Balanças off lines', 'Loja TA', '2020-05-12', '0000-00-00', '2020-05-12', 'balanças sem rede', 'reiniciado mgv6', 'nenhuma', '1'),
(321, 15, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'cadastrar operadora de caixa', 'Jaquelane Delmonte', '2020-05-12', '0000-00-00', '2020-05-12', 'usuario sem cadastro', 'usuaria cadastrada', 'nenhuma', '1'),
(322, 6, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Os pdvs 102 e 101 estão sem energia', 'Gerente Roberto', '2020-05-12', '0000-00-00', '2020-05-12', 'O nobreak estava ligado na régua queimada', 'Ligado nobreak na tomada', 'nenhuma', '1'),
(323, 18, 3, 'Benedito', 2, NULL, NULL, 5, 1, 'Relógio de ponto offline', 'antonio', '2020-05-13', '2020-05-13', '2020-05-15', 'Eliminado mau contato do relógio de ponto com ajuda do gerente local, testes ok', 'Eliminado mau contato do relógio de ponto com ajuda do gerente local, testes ok', 'n', '6'),
(324, 4, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Relógio de ponto parou novamente', 'Maria', '2020-05-13', '2020-05-13', '2020-05-15', 'efetuado a troca do relógio de ponto testes ok', 'efetuado a troca do relógio de ponto testes ok', 'n', '3'),
(325, 24, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Pdv 101 liga, mas,e não sobe imagem da bios', 'Andressa', '2020-05-13', '2020-05-13', '2020-05-13', 'PDV não liga', 'Limpeza de memória', 'Nenhuma', '4'),
(326, 24, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'NO Logus, não consigo colocar valor de crédito de compras para cliente', 'Andressa', '2020-05-13', '2020-05-13', '2020-05-14', 'O login do usuario nao tem permissoes de acesso a essa área', 'usuario foi bloqueado a pedidos', 'nenhuma', '4'),
(327, 11, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'trocar nobreak e Pc do escritório', 'nicole', '2020-05-13', '2020-05-14', '2020-05-14', 'Nobreak queimou', 'Troquei o nobreak e Pc do escritório.', 'Nenhuma', '4'),
(328, 21, 3, 'Jaks', 1, NULL, NULL, 5, 3, 'trocar nobreak pdv 103', 'Aryadna', '2020-05-13', '2020-05-16', '2020-05-16', 'Efetuado a troca do nobreak do caixa 103 testes ok', 'Efetuado a troca do nobreak do caixa 103 testes ok', 'N', '7'),
(329, 6, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'troca do filtro de linha do caixa 101, testes ok', 'Petrina', '2020-05-13', '0000-00-00', '2020-05-13', 'troca do filtro de linha do caixa 101, testes ok', 'troca do filtro de linha do caixa 101, testes ok', 'n', '1'),
(330, 37, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'deixado  modem 4G, testes ok', 'silvia', '2020-05-13', '0000-00-00', '2020-05-13', 'deixado  modem 4G, testes ok', 'deixado  modem 4G, testes ok', 'n', '1'),
(331, 45, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja sem internet', 'Loja CC', '2020-05-13', '0000-00-00', '2020-05-13', 'regiao passando por manutencao', 'reparo da rede será terminada até as 18:00 hs\r\n', 'nenhuma', '1'),
(332, 21, 1, 'Jeremias', 2, NULL, NULL, 5, 1, 'Mario que atendeu', 'Loja JS', '2020-05-13', '0000-00-00', '2020-05-15', 'Mario que atendeu', 'Mario que atendeu', 'nenhuma', '1'),
(333, 46, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'nao consegue enviar caixa para matriz', 'Loja NA', '2020-05-13', '0000-00-00', '2020-05-13', 'sat com inconsistencia eletronica', 'removido a inconsitencia', 'nenhuma', '1'),
(334, 22, 11, 'Jeremias', 2, NULL, NULL, 5, 3, 'Nao passa Tef nos pdvs 101 e 102', 'Loja LI', '2020-05-13', '2020-05-13', '2020-05-13', 'loja sem internet, regiao passando por manutencao', 'Aberto chamado na vivo', 'nenhuma', '1'),
(335, 8, 3, 'Jeremias', 1, NULL, NULL, 5, 1, 'Balança 3 chegou do conserto, sem conexao com a rede', 'Loja CL', '2020-05-13', '2020-05-13', '2020-05-14', 'efetuado configuração de balanças', 'efetuado configuração de balanças', 'n', '4'),
(336, 51, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'nao consegue enviar caixa para matriz', 'Loja PI', '2020-05-13', '0000-00-00', '2020-05-13', 'sat com inconsistencia eletronica', 'removida as inconsistencia', 'nenhuma', '1'),
(337, 52, 11, 'Jeremias', 1, NULL, NULL, 5, 1, 'instalação da internet e telefonia dia 14/05 entre 10:00 e 12:00', 'Equipe T.I', '2020-05-13', '2020-05-14', '2020-05-14', '130520207307405 amanha das 10 as 12', 'cancelado o pedido', 'nenhuma', '4'),
(338, 41, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'configurar ETIQUETA BRANCA NO MATABURRO', 'MariNa', '2020-05-14', '0000-00-00', '2020-05-15', 'Etiqueta branca configurada testes ok', 'Etiqueta branca configurada testes ok', 'n', '1'),
(339, 14, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'PDV 102 offline', 'Marie', '2020-05-14', '0000-00-00', '2020-05-14', 'o cabo de rede da lan sat nao está se comunica com o PDV', 'ligado o cabo wan direto no pdv', 'Aberto visita tecnica', '1'),
(340, 14, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'PDV 101 está desligando constantemente', 'Marie', '2020-05-14', '0000-00-00', '2020-05-14', 'Rj45 ', 'Troquei o rj45', 'Nenhuma', '1'),
(341, 14, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'A lan do sat do pdv 102 nao se comunica com o pdv', 'Marie', '2020-05-14', '0000-00-00', '2020-05-14', 'Rj45 ', 'Troquei o rj45', 'Nenhuma', '1'),
(342, 9, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Balança veio do conserto e precisa ser configurada', 'Regiane', '2020-05-14', '0000-00-00', '2020-05-14', 'Configurar balança', 'Configurei a balança 3', 'Nenhuma', '1'),
(343, 51, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'A loja nao consegue enviar para a matriz', 'loja PI', '2020-05-14', '0000-00-00', '2020-05-14', 'havia pendencias eletronicas', 'removido pendencias eletronicas', 'nenhuma', '1'),
(344, 21, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'computador do escritorio nao liga', 'Ariadne', '2020-05-14', '0000-00-00', '2020-05-14', 'nada a acrecentar', 'fui informado que o computador ligou', 'nenhuma', '1'),
(345, 48, 1, 'Mario', 2, NULL, NULL, 5, 1, 'Logos não responde.', 'Kaique', '2020-05-14', '2020-05-14', '2020-05-14', 'Verificado remotamente voltou a funcionar', 'Verificado remotamente voltou a funcionar', 'nada', '4'),
(346, 20, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'loja nao consegue imprimir do Mataburro', 'Loja JB', '2020-05-14', '0000-00-00', '2020-05-14', 'Servidor Ts nao se conecta na maquina local', 'retirado o pc do dominio e reconectado', 'sem pendencia', '1'),
(347, 33, 1, 'Mario', 2, NULL, NULL, 5, 1, 'Mata Burro com problema', 'Eliete', '2020-05-14', '2020-05-14', '2020-05-14', 'reconfiguração remota do mataburro', 'teste ok', 'nada', '4'),
(348, 9, 1, 'Mario', 2, NULL, NULL, 5, 1, 'cartão de fiscal', 'regiane', '2020-05-14', '2020-05-15', '2020-05-15', 'mandado cartão 09', 'Velidadom ok', 'nada', '4'),
(349, 20, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Impressora e gaveta do PDV 103 , não está funcionando', 'Loja JB', '2020-05-14', '0000-00-00', '2020-05-14', 'mal contato no cabo usb da impressora', 'trocado o cabo de lugar ', 'sem pendencia', '1'),
(350, 51, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'PDV 101 travando', 'Loja Pi', '2020-05-14', '0000-00-00', '2020-05-14', 'erro no correio do logus', 'atualizado o arquivo do correio', 'nenhuma', '1'),
(351, 31, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'cadastrar operador de caixa', 'Loja NU', '2020-05-14', '0000-00-00', '2020-05-14', 'pedido de cadastro de usuario', 'usuario cadastrado', 'sem pendencia', '1'),
(352, 37, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Nao consegue enviar caixa para matriz', 'Silvia', '2020-05-14', '0000-00-00', '2020-05-14', 'nao há nenhum erro tenico que impeça o envio de dados', 'orientado a loja previsa rever os lançamentos', 'nenhuma', '1'),
(353, 19, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'pdv nao reconhece porta pinpad', 'Loja IS', '2020-05-14', '0000-00-00', '2020-05-14', 'erro de porta pinpad', 'reiniciar o pdv - teste ok', 'nenhuma', '1'),
(354, 26, 2, 'Jeremias', 1, NULL, NULL, 5, 1, 'Pc da casa da Carol está sem conexao com a internet', 'Carol', '2020-05-14', '2020-05-14', '2020-05-14', 'Conectei wifi', 'Carol pediu internet na casa dela ', 'Nenhuma', '4'),
(355, 26, 2, 'Jaks', 1, NULL, NULL, 5, 3, 'Impressora do caixa 2 não imprime sangria', 'Regiane', '2020-05-14', '2020-05-15', '2020-05-15', 'Sistema ', 'Troquei o HD e reinstalei o sistema Logus', 'Nenhuma', '1'),
(356, 9, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Configurar o ubiquiti', 'Regiane', '2020-05-14', '0000-00-00', '2020-05-14', 'Pc sem  software do ubiquiti', 'Instalei o software unifi e resetei o ubiquiti', 'Nenhuma', '1'),
(357, 51, 12, 'Jeremias', 1, NULL, NULL, 4, 1, 'Pedido de 2 leitores de codigo de barras', 'Loja PI', '2020-05-15', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '1'),
(358, 47, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Pinpad pdv 101 com erro', 'Loja SD', '2020-05-15', '0000-00-00', '2020-05-15', 'erro na conexao da porta usb', 'trocado de porta e reiniciado o pdv', 'nenhuma', '1'),
(359, 52, 3, 'Jeremias', 1, NULL, NULL, 5, 1, 'instalação para o dia 18/05 , entre as 8:30 - 10:30 hs-prot:150520209805172', 'Equipe T.I', '2020-05-15', '0000-00-00', '2020-05-16', 'REAGENDAMENTO DA INSTALAÇAO DA FIBRA OTICA PARA DIA18/05/20', 'REAGENDAMENTO DA INSTALAÇAO DA FIBRA OTICA PARA DIA18/05/20', 'N', '1'),
(360, 11, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Mata burro não imprime', 'Loja DJ', '2020-05-15', '0000-00-00', '2020-05-15', 'servidor nao reconhece compartilhamento', 'removido e inserido pc no domino', 'nenhuma', '1'),
(361, 17, 11, 'Jeremias', 1, NULL, NULL, 5, 1, 'Configurar Dro pdf na maquina da Carol e da Bianca', 'Foods - Rh', '2020-05-15', '2020-05-15', '2020-05-15', 'nao tinha o software na maquina', 'instalado o aplicativo', 'nenhuma', '4'),
(362, 51, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Loja nao consegue enviar para matriz', 'Loja Pi', '2020-05-15', '0000-00-00', '2020-05-15', 'havia inconsistencias eletronicas', 'removido as inconsistencias', 'nenhuma', '1'),
(363, 10, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'A loja está sem internet', 'Loja CR', '2020-05-15', '0000-00-00', '2020-05-15', 'modem está sem sincronismo', 'reiniciar o modem', 'nenhuma', '1'),
(364, 51, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Pedindo senha para acesso a rede gerencia', 'Jaciara', '2020-05-15', '0000-00-00', '2020-05-15', 'acesso a rede gerencia', 'informado a senha', 'nenhuma', '1'),
(365, 4, 11, 'Jeremias', 2, NULL, NULL, 5, 1, ' precisa abrir um chamado vivo pra linha do bonzay tá sem linha lá', 'Sr. Monteiro', '2020-05-15', '0000-00-00', '2020-05-15', 'Sr. Monteiro está com problema na sua conexao', 'efetuado testes na rede do bonzai, tudo ok', 'nenhuma', '1'),
(366, 22, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'Ip externo da loja', 'Benedito', '2020-05-15', '0000-00-00', '2020-05-15', 'solicitação de ip externo', 'informado o ip externo da loja', 'nenhuma', '1'),
(367, 26, 11, 'Jeremias', 2, NULL, NULL, 5, 1, 'informar ip externo da loja', 'Benedito', '2020-05-15', '0000-00-00', '2020-05-15', 'solicitação de ip externo', 'ip externo informado ao sr. Monteiro', 'nenhuma', '1'),
(368, 30, 2, 'Jaks', 2, NULL, NULL, 5, 1, 'MATA BURRO NãO IIMPRIME', 'TAIS', '2020-05-15', '0000-00-00', '2020-05-15', 'mata burro rede descofigurada', 'configurei o mata burro', 'NENHUMA', '1'),
(369, 33, 2, 'Jaks', 1, NULL, NULL, 5, 2, 'Impressora do micro da ray na imprime', 'Benedito', '2020-05-15', '0000-00-00', '2020-05-15', 'IMPRESSORA NãO IMPRIME', 'O FáBIO IRá TROCAR', 'NENHUMA', '1'),
(370, 33, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Pc da nutricionista não liga', 'Benedito', '2020-05-15', '0000-00-00', '2020-05-15', 'PC NãO LIGA', 'COLOQUEI UM NOBREAK NA TOMADA', 'NENHUMA', '1'),
(371, 33, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'Print server não conecta', 'Benedito', '2020-05-15', '0000-00-00', '2020-05-15', 'EQUIPAMENTO SEM USO', 'NãO ESTAMOS USANDO ESTE EQUIPAMENTO', 'NENHUMA', '1'),
(372, 33, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'micro do datacenter desligando', 'Benedito', '2020-05-15', '0000-00-00', '2020-05-15', 'micro desligando', 'coloquei pasta térmica no processador ', 'NENHUMA', '1'),
(373, 9, 2, 'Jaks', 1, NULL, NULL, 5, 1, 'configurar ubiquiti', 'Jeremias', '2020-05-15', '0000-00-00', '2020-05-15', 'software do ubiquiti desinstalado', 'instalei o software do ubiquite no pc do escritório', 'NENHUMA', '1'),
(374, 20, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Efetuado configuração do ubiquiti e balança, testes ok', 'Maria', '2020-05-16', '0000-00-00', '2020-05-16', 'Efetuado configuração do ubiquiti e balança, testes ok', 'Efetuado configuração do ubiquiti e balança, testes ok', 'n', '1'),
(375, 37, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Retirar modem 4G', 'Silvia', '2020-05-16', '0000-00-00', '2020-05-16', 'RETIRADO MODEM 4G', 'RETIRADO MODEM 4G', 'N', '1'),
(376, 17, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Manutenção da impressora do RH, com ajuda do Fabio técnico da impressora', 'Fabio', '2020-05-16', '0000-00-00', '2020-05-16', 'Manutenção da impressora do RH, com ajuda do Fabio técnico da impressora', 'Manutenção da impressora do RH, com ajuda do Fabio técnico da impressora', 'n', '1'),
(377, 17, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'Manutenção de tanca retirada da loja VM, problema memoria queimada.', 'Mario', '2020-05-16', '0000-00-00', '2020-05-16', 'Manutenção de tanca retirada da loja VM, problema memoria queimada.', 'Manutenção de tanca retirada da loja VM, problema memoria queimada.', 'n', '1'),
(378, 17, 3, 'Benedito', 2, NULL, NULL, 5, 1, 'Relatório diário de pendencias das lojas', 'Mario', '2020-05-16', '0000-00-00', '2020-05-16', 'Relatório diário de pendencias das lojas', 'Relatório diário de pendencias das lojas', 'n', '1'),
(379, 17, 3, 'Benedito', 2, NULL, NULL, 5, 1, 'MONITORAR SERVIDORES TEF, LOCAIS E LOGUS', 'Mario', '2020-05-16', '0000-00-00', '2020-05-16', 'feito relatório de servidores, tef, logus ', 'feito relatório de servidores, tef, logus ', 'N', '1'),
(380, 44, 2, 'Jaks', 2, NULL, NULL, 5, 1, 'Caixa 4 reiniciando', 'Viviane', '2020-05-16', '0000-00-00', '2020-05-16', 'pdv reiniciando', 'pedi para mudar os cabos usb de portas', 'NENHUMA', '1'),
(381, 31, 3, 'Jaks', 2, NULL, NULL, 5, 3, 'Solicitando cadastro de pernil assado', 'loja Nu', '2020-05-16', '2020-05-16', '2020-05-16', 'preço não desceu para a balança', 'carga nas balanças', 'NENHUMA', '7'),
(382, 37, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'CADASTRO DE USUARIO KELLY PARA CAIXA ', 'SILVIA', '2020-05-16', '0000-00-00', '2020-05-16', 'CADASTRO DE USUARIO KELLY PARA CAIXA ', 'CADASTRO DE USUARIO KELLY PARA CAIXA ', 'N', '1'),
(383, 6, 3, 'Benedito', 1, NULL, NULL, 5, 1, 'CONFIGURAÇAO DE BALANCAS', 'petrina', '2020-05-16', '0000-00-00', '2020-05-16', 'CONFIGURAÇAO DE BALANCAS', 'CONFIGURAÇAO DE BALANCAS', 'N', '1'),
(384, 31, 3, 'Benedito', 2, NULL, NULL, 5, 1, 'ORIENTAÇAO PARA AUTERAÇAO DE PRECO', 'IRANILSON', '2020-05-16', '0000-00-00', '2020-05-16', 'ORIENTAÇAO PARA AUTERAÇAO DE PRECO', 'ORIENTAÇAO PARA AUTERAÇAO DE PRECO', 'N', '1'),
(385, 52, 3, 'Benedito', 2, NULL, NULL, 4, 1, 'REAGENDAMENTO DA INSTALAÇAO DA FIBRA OTICA PARA DIA18/05/20', 'VIVO', '2020-05-16', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ponto`
--

CREATE TABLE `ponto` (
  `id` int(11) NOT NULL,
  `horario_entrada` time DEFAULT NULL,
  `horario_saida` time DEFAULT NULL,
  `carga` int(2) DEFAULT NULL,
  `status` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ponto`
--

INSERT INTO `ponto` (`id`, `horario_entrada`, `horario_saida`, `carga`, `status`) VALUES
(1, '06:00:00', '15:00:00', 8, '1'),
(2, '07:00:00', '16:00:00', 8, '1'),
(3, '11:30:00', '20:30:00', 8, '1'),
(4, '12:00:00', '21:00:00', 8, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prioridade`
--

CREATE TABLE `prioridade` (
  `id` int(11) NOT NULL,
  `prioridade` varchar(10) DEFAULT NULL,
  `status` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prioridade`
--

INSERT INTO `prioridade` (`id`, `prioridade`, `status`) VALUES
(1, 'Normal', '1'),
(2, 'Media', '1'),
(3, 'Alta', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `status` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`id`, `descricao`, `status`) VALUES
(1, 'Tecnologia da Informação', '1'),
(2, 'Manutenção', '1'),
(3, 'Almoxarifado', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnico`
--

CREATE TABLE `tecnico` (
  `id` int(11) NOT NULL,
  `matricula` int(10) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tecnico`
--

INSERT INTO `tecnico` (`id`, `matricula`, `nome`, `senha`, `email`, `endereco`, `telefone`, `bairro`, `cidade`, `data`, `status`) VALUES
(1, 10126, 'Mario', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'mario.tiano@ipanemafoods.com.br', 'Rua Benedito Farias Marques filho, 1361', '1147473014', 'Mooca', 'Mogi das Cruzes', '2020-02-29', '1'),
(2, 10161, 'Jaks', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'jaks.trindade@ipanemafoods.com.br', 'Avenida Presidente Wilson - 1681', '00000000', 'Mooca', 'Sao paulo', '2020-02-29', '1'),
(3, 10164, 'Benedito', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'benedito.soares@ipanemafoods.com.br', 'Avenida Presidente Wilson - 1681', '00000000', 'Mooca', 'Sao Paulo', '2020-02-29', '1'),
(11, 10158, 'Jeremias', 'f0ee73df9003ca43916e249abfbefc5a983b346f', 'jeremias.silva@ipanemafoods.com.br', 'Rua Benedito Farias Marques filho, 1361', NULL, 'Suzano', 'Sao Paulo', '2020-02-29', '1'),
(12, 1010, 'Validando', NULL, 'validando@foods.com.br', 'Endereco', '1111111111', 'Bairro', 'Sao Paulo', '2020-03-02', '1'),
(14, 10160, 'Maycon', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'manutencao@ipanemafoods.com.br', 'Av.Presidente Wilson, 1681', '11985117176', 'Moocas', 'Sao Paulo', '2020-03-02', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizado`
--

CREATE TABLE `utilizado` (
  `id_util` int(11) NOT NULL,
  `id_chamado` int(11) DEFAULT NULL,
  `cod_id_produto` int(11) DEFAULT NULL,
  `qtde` int(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `utilizado`
--

INSERT INTO `utilizado` (`id_util`, `id_chamado`, `cod_id_produto`, `qtde`, `status`) VALUES
(9, 28, 1, 1, '2'),
(28, 15, 4, 2, '2'),
(32, 24, 8, 3, '2'),
(34, 24, 3, 1, '2'),
(35, 29, 3, 1, '2'),
(38, 49, 4, 2, '2'),
(39, 49, 3, 1, '2'),
(40, 53, 5, 1, '2'),
(41, 57, 18, 1, '2'),
(42, 62, 3, 2, '2'),
(44, 65, 14, 1, '2'),
(46, 72, 17, 1, '2'),
(47, 74, 5, 1, '2'),
(48, 77, 4, 1, '2'),
(49, 84, 6, 1, '2'),
(50, 89, 20, 1, '2'),
(52, 52, 13, 1, '2'),
(53, 98, 5, 1, '2'),
(54, 92, 13, 1, '2'),
(55, 100, 7, 1, '1'),
(56, 100, 17, 2, '1'),
(57, 100, 2, 3, '1'),
(58, 100, 19, 1, '1'),
(59, 100, 4, 2, '1'),
(60, 100, 14, 2, '1'),
(61, 100, 3, 1, '1'),
(62, 100, 23, 1, '1'),
(63, 100, 22, 1, '1'),
(64, 100, 21, 2, '1'),
(65, 100, 23, 1, '1'),
(66, 100, 8, 1, '1'),
(67, 100, 15, 1, '1'),
(68, 101, 4, 2, '1'),
(69, 101, 17, 1, '1'),
(70, 98, 20, 1, '1'),
(71, 109, 4, 1, '1'),
(73, 112, 4, 1, '1'),
(75, 125, 22, 1, '1'),
(76, 125, 5, 1, '1'),
(77, 129, 17, 1, '1'),
(78, 152, 17, 1, '1'),
(79, 168, 2, 1, '1'),
(80, 173, 17, 1, '1'),
(81, 194, 4, 1, '1'),
(82, 194, 5, 2, '1'),
(83, 194, 6, 1, '1'),
(86, 213, 7, 1, '1'),
(87, 215, 4, 1, '1'),
(89, 289, 19, 1, '1'),
(90, 289, 17, 4, '1'),
(91, 289, 13, 4, '1'),
(92, 328, 3, 1, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`id_atendimento`);

--
-- Indexes for table `chamado_status`
--
ALTER TABLE `chamado_status`
  ADD PRIMARY KEY (`id_chamado`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`,`apelido`);

--
-- Indexes for table `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id_produto`);

--
-- Indexes for table `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordem`
--
ALTER TABLE `ordem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-loja` (`id_loja`),
  ADD KEY `fk-tecnico` (`id_tecnico`),
  ADD KEY `fk-estoque` (`id_estoque`),
  ADD KEY `fk_mensagem` (`id_mensagem`),
  ADD KEY `fk-prioridade` (`id_prioridade`),
  ADD KEY `fk-status-chamado` (`id_status_chamado`);

--
-- Indexes for table `ponto`
--
ALTER TABLE `ponto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prioridade`
--
ALTER TABLE `prioridade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilizado`
--
ALTER TABLE `utilizado`
  ADD PRIMARY KEY (`id_util`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `id_atendimento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `chamado_status`
--
ALTER TABLE `chamado_status`
  MODIFY `id_chamado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `funcao`
--
ALTER TABLE `funcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `loja`
--
ALTER TABLE `loja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ordem`
--
ALTER TABLE `ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;
--
-- AUTO_INCREMENT for table `ponto`
--
ALTER TABLE `ponto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `prioridade`
--
ALTER TABLE `prioridade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tecnico`
--
ALTER TABLE `tecnico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `utilizado`
--
ALTER TABLE `utilizado`
  MODIFY `id_util` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
