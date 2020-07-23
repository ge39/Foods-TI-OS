<?php
require_once('../conexao/conexao.php');
$varid = $_SESSION['id']; //id do tecnico
if(!isset($_GET['datain'])){
    $datain = "0000-00-00";
    $datafin = "0000-00-00";
}else{
   $datain = date('Y-m-d',strtotime($_GET['datain']));
   $datafin = date('Y-m-d',strtotime($_GET['datafim']));
 
}    
  //seleciona todas as lojas do chamado
        $loja_chamado = $pdo->prepare("select A.id as id_loja,A.loja FROM loja A, ordem B where B.id_loja = A.id and B.data_fecha_chamado is not null GROUP BY loja asc ");
        $loja_chamado->execute();
        
 // seleciona todos os tecnicos que atuaram em chamados
        $tec_chamado = $pdo->prepare('select E.nome as nome_tecnico,E.id as id_tecnico from ordem D, tecnico E where E.id = D.id_tecnico and D.data_fecha_chamado is not null GROUP BY E.nome order by E.nome asc');
        $tec_chamado->execute();

//seleciona todos produtos usados em chamados
       $estoque = $pdo->prepare("select A.id_equip,A.desc_equip,count(A.desc_equip) as total FROM equipamento A, ordem B where B.cod_id_equipa = A.id_equip group by A.desc_equip order by A.desc_equip");
       $estoque->execute();
       
//seleciona o relatorio de todos os chamados
        $all_chamados = $pdo->prepare("select C.id,A.loja,C.criado as abertura,B.nome as tecnico,C.data_abertura_chamado,C.reclamado,C.solucao,C.data_fecha_chamado,(C.data_abertura_chamado - data_fecha_chamado ) as SLA from loja A,tecnico B,ordem C 
        where C.id_loja = A.id and C.id_tecnico = B.id and C.data_fecha_chamado is not null and C.data_fecha_chamado BETWEEN '$datain' and  '$datafin'  ORDER BY C.id ASC");
        $all_chamados->execute();
        
     if($varid != 3 and $varid != 2 ){
//todos produtos usados em chamados e enviado para almoxarifado
        $almox = $pdo->prepare("select E.nome,C.loja,A.item,sum(B.qtde) as total,A.valor * sum(B.qtde) as soma, D.data_fecha_chamado from
        estoque A, utilizado B, loja C, ordem D, tecnico E where  B.cod_id_produto = A.id_produto and B.id_chamado = D.id and D.id_loja = C.id and D.data_fecha_chamado is not null and B.status = 1 and E.id  = D.id_tecnico  GROUP BY A.id_produto order by B.total");
        $almox->execute();
     }else{

//produtos usados em chamado e enviado para almoxarifado por id do tecnico
        $almox = $pdo->prepare("select E.nome,C.loja,A.item,sum(B.qtde) as total,A.valor * sum(B.qtde) as soma, D.data_fecha_chamado from
        estoque A, utilizado B, loja C, Ordem D, tecnico E where  B.cod_id_produto = A.id_produto and B.id_chamado = D.id and D.id_loja = C.id and B.status = 1 and D.data_fecha_chamado is not null and E.id  = D.id_tecnico and E.id = $varid GROUP BY A.id_produto order by c.loja,E.nome asc");
        $almox->execute();
}