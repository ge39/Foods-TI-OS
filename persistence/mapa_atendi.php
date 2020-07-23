<?php
require_once('../conexao/conexao.php');

 	// $data1 = $_GET['datain'];
 	// $data2 = $_GET['datafim'];

   if(!empty($_GET['datain'])){
     $data1 = $_GET['datain'];
 	 $data2 = $_GET['datafim'];
   }else{
   	$data1 = '2100-01-01';
   	$data2 = '2100-01-01';
   }
// seleciona o total de atendimentos agrupados por atendimentos remoto e externo
 $cont_atend = $pdo->prepare("select count(A.atendimento) as total,B.descricao from ordem A, atendimento B  where A.atendimento = B.id_atendimento and A.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' GROUP BY A.atendimento");
 $cont_atend->Execute();


// seleciona o total de chamados agrupados por tecnicos	
$var_tecncio = $pdo->prepare("select count(A.atendimento) as total, B.nome, B.id as id_tecnico from ordem A,tecnico B WHERE B.id = A.id_tecnico and A.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' group by A.id_tecnico");
$var_tecncio->Execute();

// seleciona o total de chamados agrupados por lojas
$var_loja = $pdo->prepare("select count(B.id_loja) as calc_loja, A.loja,A.id as id_loja from loja A ,ordem B where B.id_loja = A.id and B.data_fecha_chamado between '$data1 00:00:00' and '$data2 23:59:59'  group by B.id_loja order by  calc_loja desc");// 
$var_loja->execute();

?>
