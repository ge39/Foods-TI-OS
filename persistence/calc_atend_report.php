<?php
require_once('../conexao/conexao.php');
$dataini = $_GET['datain'];
$datafim = $_GET['datafim'];

//seleciona o total de chamados
$soma_atend = $pdo->prepare("select count(id_loja) as total from ordem where data_fecha_chamado between '$dataini' and '$datafim'");
$soma_atend->execute();

//seleciona o total de lojas atendidas
$total_lojas = $pdo->prepare("select distinct(count(B.id_loja)) as total FROM loja A, ordem B where B.id_loja = A.id and  B.data_fecha_chamado is not null
and B.data_fecha_chamado between '$dataini' and '$datafim'");
$total_lojas->execute();