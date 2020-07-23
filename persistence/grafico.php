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
$var_tecnico = $pdo->prepare("select count(A.atendimento) as total, B.nome, B.id as id_tecnico from ordem A,tecnico B WHERE B.id = A.id_tecnico and A.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' group by A.id_tecnico order by total Desc ");
$var_tecnico->Execute();

// seleciona o total de chamados agrupados por tecnicos	
$var_tec = $pdo->prepare("select count(A.atendimento) as total, B.nome, B.id as id_tecnico from ordem A,tecnico B WHERE B.id = A.id_tecnico and A.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' group by A.id_tecnico order by total Desc");
$var_tec->Execute();


// seleciona todas as lojas do chamados, agrupados por lojas
$var_loja = $pdo->prepare("select count(C.id_loja) as cal_loja,C.id,A.loja from loja A,ordem C where C.id_loja = A.id and C.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and C.data_fecha_chamado is not null   group by C.id_loja order by cal_loja desc");
$var_loja->execute();

// seleciona todas as lojas do chamados, agrupados por lojas
$grafico_loja = $pdo->prepare("select count(C.id_loja) as cal_loja,C.id,A.loja from loja A,ordem C where C.id_loja = A.id and C.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and C.data_fecha_chamado is not null   group by C.id_loja order by cal_loja desc limit 10 ");
$grafico_loja->execute();

//$var_loja->fetch(PDO::FETCH_ASSOC);

 //qtdade de lojas atendidas
$var_qtde_loja = $pdo->prepare("select count(distinct(A.loja)) as calc_loja from loja A ,ordem B where B.id_loja = A.id and B.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and B.id_status_chamado = 5");
$var_qtde_loja->execute();


// soma o total de chamados agrupados por lojas
$var_total_loja = $pdo->prepare("select count(B.id_loja) as calc_loja from loja A ,ordem B where B.id_loja = A.id and B.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and B.id_status_chamado = 5 ");
$var_total_loja->execute();
// $var_total_loja->fetch(PDO::FETCH_ASSOC);


// soma o total de chamados agrupados por grupo DE lojas
$var_total_grupo = $pdo->prepare("select count(A.loja) as totalgrupo, B.desc_grupo as descgrupo from loja A, grupo B, ordem C where A.cod_id_grupo = B.id_grupo and A.id = C.id_loja and C.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and C.id_status_chamado = 5 group By B.id_grupo");
$var_total_grupo->execute();
// $var_total_loja->fetch(PDO::FETCH_ASSOC);
  
 //qtdade grupolojas atendidos
$var_qtde_grupo = $pdo->prepare("select count(A.loja) as total, B.desc_grupo as grupo from loja A, grupo B, ordem C where A.cod_id_grupo = B.id_grupo and A.id = C.id_loja and C.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and C.id_status_chamado = 5 group By B.id_grupo");
$var_qtde_grupo->execute();

    
// seleciona o total de chamados agrupados por data
$var_dia = $pdo->prepare("select count(id) as total, data_fecha_chamado from ordem where data_fecha_chamado between '$data1 00:00:00' and '$data2 23:59:59' and id_status_chamado = 5 group by data_fecha_chamado order by data_fecha_chamado asc");
$var_dia->execute();
//$var_dia->fetch(PDO::FETCH_ASSOC);

// soma do total de chamados agrupados por data
$var_total_dia = $pdo->prepare("select count(id) as total from ordem where data_fecha_chamado between '$data1 00:00:00' and '$data2 23:59:59' and id_status_chamado = 5");
$var_total_dia->execute();
//$var_dia->fetch(PDO::FETCH_ASSOC);


// seleciona o total de chamados agrupados por tipo atendimento
$var_atend = $pdo->prepare("select count(B.atendimento) as total, A.descricao  from atendimento A ,ordem B where  B.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and B.atendimento = A.id_atendimento  and B.id_status_chamado = 5 GROUP BY A.descricao");
$var_atend->execute();

// soma o total de chamados agrupados por atendimento
$var_total_atend= $pdo->prepare("select count(A.atendimento) as total, B.descricao as descricao FROM ordem A,atendimento B where B.id_atendimento = A.atendimento and A.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and A.id_status_chamado = 5 ");
$var_total_atend->execute();


// total de chamados agrupados por regiao
$var_regiao = $pdo->prepare("select count(B.id_loja) as total, A.regiao as regiao from loja A, ordem B where B.id_loja = A.id and B.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and B.id_status_chamado = 5 GROUP BY A.regiao");
$var_regiao->execute();
//$var_dia->fetch(PDO::FETCH_ASSOC);

// soma do total de chamados agrupados por regiao
$var_regiao_total = $pdo->prepare("select count(B.id_loja) as total, A.regiao as regiao from loja A, ordem B where B.id_loja = A.id and B.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' and B.id_status_chamado = 5 GROUP BY A.regiao");
$var_regiao_total->execute();

//Total de equipamentos que deram defeitos
$var_total_equipa= $pdo->prepare("select count(A.id_equip) as total, A.desc_equip descricao from equipamento A, ordem B where B.cod_id_equipa = A.id_equip and B.id_status_chamado = 5  and B.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' GROUP BY A.id_equip order by total desc Limit 10");
$var_total_equipa->execute();

//Total de estatisticas de chamados abertos e fechados
$var_status_chamado= $pdo->prepare("select A.descricao_chamado, count(A.id_chamado) as total from chamado_status A, ordem B where B.id_status_chamado = A.id_chamado  and B.data_fecha_chamado BETWEEN '$data1 00:00:00' and '$data2 23:59:59' group by A.descricao_chamado order by total desc ");
$var_status_chamado->execute();

?>

