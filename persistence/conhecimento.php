<?php 
	require_once('../conexao/conexao.php');

	$sql = $pdo->prepare("select distinct (A.desc_equip), A.id_equip from equipamento A, ordem B WHERE A.id_equip = B.cod_id_equipa  group by B.id order by A.desc_equip  ");
		$sql->execute();


if(!empty($_GET['code'])){

 	if($_GET['code']== 1){
 		 $equ = $_GET['material'];

 		$equip = $pdo->prepare("select A.desc_equip,B.id,B.reclamado,B.avaliacao_tecnico,C.descricao from ordem B, equipamento A, solucao C where B.cod_id_equipa = A.id_equip and B.id = cod_id_ordem and B.cod_id_equipa = :equipamento and B.id_status_chamado = 5");
 		    $equip->bindvalue(':equipamento',$equ);
 		$equip->execute();
	}
}if(!empty($_GET['id'])){

	echo $_GET['id'];
	// echo $_GET['code'];
	// echo $_GET['id_equip'];
}
