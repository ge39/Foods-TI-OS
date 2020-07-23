<?php
require_once('../conexao/conexao.php');

if($_GET['code'] == 0){
		$id_tecnico = $_GET['id_tecnico'];
		$_GET['code'];
		$varid = $_GET['id_tecnico'];
	if($varid != 3 and $varid != 2 ){
		//altera o status dos produtos inseridos nos chamados
		$sql_up = $pdo->prepare("Update utilizado A, ordem B, tecnico C set  A.status = 2 where A.id_chamado = B.id and B.id_tecnico = C.id and B.id_tecnico");
		$sql_up->execute();
		header('location:../relatorio/almoxarifado.php');
	}else{
		//altera o status dos produtos inseridos nos chamados
		$sql_up = $pdo->prepare("Update utilizado A, ordem B, tecnico C set  A.status = 2 where A.id_chamado = B.id and B.id_tecnico = C.id and B.id_tecnico = $id_tecnico");
		$sql_up->execute();
		header('location:../relatorio/almoxarifado.php');
	}
}
?>
