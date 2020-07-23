<?php
require_once('../conexao/conexao.php');
if($_GET['code'] == 1){

  $varid = $_SESSION['id'];     
  $datain = date('Y-m-d',strtotime($_GET['datain']));
  $datafin = date('Y-m-d',strtotime($_GET['datafim']));
  $code = $_GET['code'];
  
  $loja = $_GET['id_loja'];
  $tec = $_GET['id_tec'];
  $prod = $_GET['id_prod'];

  
}else{
  $code='1';
  $datain='2080-04-28';
  $datafim='2080-04-28';
  $id_loja='0';
  $id_tec='0';
  $id_prod='0';
  $loja = '0';
  $tec =  '0';
  $prod = '0';
}
 
if($loja == 0 and $tec == 0 and $prod == 0){
// loja, tenico e produto
    $data_chamados = $pdo->prepare("select J.desc_equip,C.id,A.loja,C.criado as abertura,B.nome as tecnico,C.data_abertura_chamado,C.reclamado,F.descricao 
as solucao,C.data_fecha_chamado,H.descricao from atendimento H,loja A,tecnico B,ordem C , solucao F,equipamento J where C.cod_id_equipa = J.id_equip and  C.atendimento = H.id_atendimento and C. id = F.cod_id_ordem and C.id_loja = A.id and C.id_tecnico = B.id and C.data_fecha_chamado BETWEEN '$datain 00:00' and  '$datafin 23:59:59' and C.data_fecha_chamado is not null GROUP BY C.id  ORDER BY C.id desc");
    $data_chamados->execute();
    //header("Location: ../relatorio/relatorio.php");
}elseif($loja != 0 and $tec == 0 and $prod == 0){
  //somente loja
  $data_chamados = $pdo->prepare("select J.desc_equip,C.id,A.loja,C.criado as abertura,B.nome as tecnico,C.data_abertura_chamado,C.reclamado,F.descricao as solucao,C.data_fecha_chamado,(data_fecha_chamado - C.data_abertura_chamado) as SLA,H.descricao from atendimento H,loja A,tecnico B,ordem C , solucao F,equipamento J
        where C.cod_id_equipa = J.id_equip and C.atendimento = H.id_atendimento and C. id = F.cod_id_ordem and C.id_loja = A.id and C.id_tecnico = B.id and C.data_fecha_chamado BETWEEN '$datain 00:00' and  '$datafin 23:59:59' and C.id_loja = $loja and C.data_fecha_chamado is not null  ORDER BY C.id desc");
        $data_chamados->execute();
//Loja e produto
}elseif($loja != 0 and $tec != 0 and $prod == 0){
  //echo "Loja e tecnico";
  $data_chamados = $pdo->prepare("select J.desc_equip,C.id,A.loja,C.criado as abertura,B.nome as tecnico,C.data_abertura_chamado,C.reclamado,F.descricao as solucao,C.data_fecha_chamado,(data_fecha_chamado - C.data_abertura_chamado) as SLA, H.descricao from atendimento H, loja A,tecnico B,ordem C, solucao F,equipamento J where C.cod_id_equipa = J.id_equip and C.atendimento = H.id_atendimento and C. id = F.cod_id_ordem and C.id_loja = A.id and C.id_tecnico = $tec and C.id_loja = $loja and C.id_tecnico = B.id and C.data_fecha_chamado BETWEEN '$datain 00:00' and  '$datafin 23:59:59' and C.data_fecha_chamado is not null  ORDER BY C.id desc");
  $data_chamados->execute();
 
}elseif($loja == 0 and $tec != 0 and $prod == 0){
  //echo "somente tecnico";
    $data_chamados = $pdo->prepare("select J.desc_equip,C.id,A.loja,C.criado as abertura,B.nome as tecnico,C.data_abertura_chamado,C.reclamado,F.descricao as solucao,C.data_fecha_chamado,(C.data_fecha_chamado - C.data_abertura_chamado) as SLA, H.descricao from atendimento H, loja A,tecnico B,ordem C, solucao F,equipamento J  where  C.cod_id_equipa = J.id_equip and C.atendimento = H.id_atendimento and C. id = F.cod_id_ordem and C.id_loja = A.id and C.id_tecnico = B.id and C.data_fecha_chamado BETWEEN '$datain 00:00' and  '$datafin 23:59:59' and C.id_tecnico = $tec and C.data_fecha_chamado is not null ORDER BY C.id desc");
        $data_chamados->execute();
        
}elseif($loja == 0 and $tec != 0 and $prod != 0){
    //echo "Tecnico e Produto";
   $data_chamados = $pdo->prepare("select C.id_chamado as id,B.criado as abertura,D.nome as tecnico,E.loja as loja,A.item,C.qtde,B.data_fecha_chamado,B.reclamado, B.data_abertura_chamado,F.descricao as solucao,(B.data_fecha_chamado - B.data_abertura_chamado) as SLA, H.descricao from atendimento H,estoque A,ordem B, utilizado C,tecnico D, loja E, solucao F,equipamento J
   where  B.cod_id_equipa = J.id_equip and B.atendimento = H.id_atendimento and B. id = F.cod_id_ordem and B.id = C.id_chamado and C.cod_id_produto = A.id_produto and B.id_tecnico = D.id and B.id_loja = E.id and A.id_produto = $prod and B.id_tecnico = $tec and B.data_fecha_chamado BETWEEN '$datain 00:00' and  '$datafin 23:59:59' and B.data_fecha_chamado is not null ORDER BY C.id_chamado desc");
   $data_chamados->execute();
        
}elseif($loja == 0 and $tec == 0 and $prod != 0){
   //echo "somente Produto";
    $data_chamados = $pdo->prepare("select B.id as id,B.criado as abertura,D.nome as tecnico,E.loja as loja,A.desc_equip,B.cod_id_equipa,B.data_abertura_chamado,B.data_fecha_chamado,
B.reclamado, F.descricao as solucao, H.descricao 
from atendimento H, equipamento A,ordem B,tecnico D, loja E, solucao F 
where B.atendimento = H.id_atendimento 
and B.id = F.cod_id_ordem 
and B.cod_id_equipa = A.id_equip
and B.cod_id_equipa = $prod
and B.id_tecnico = D.id 
and  B.id_loja = E.id 
and B.data_fecha_chamado 
BETWEEN '$datain 00:00' and  '$datafin 23:59:59' 
and B.data_fecha_chamado is not null 
ORDER BY A.desc_equip desc ");
    $data_chamados->execute();
  
}
?>
