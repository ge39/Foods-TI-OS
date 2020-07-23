<?php
require_once('../conexao/conexao.php');

	//seleciona os tecnicos
	$var_tec = $pdo->prepare("select id,nome,email,matricula,endereco, telefone,bairro, cidade,status from tecnico");
	$var_tec->execute();


	//carrega os funcionarios pelo id
	if(!empty($_GET['code'])){

		if($_GET['code'] == 1){
			 $id_tecnico = $_GET['id'];
			 $_GET['code'];

			$sql_tec = $pdo->prepare("Select id,matricula,email,nome,telefone,endereco,bairro,cidade from tecnico where id = :id");
			$sql_tec->bindvalue(":id", $id_tecnico);
			$sql_tec->execute();

		}elseif ($_GET['code'] == 3) {
			$id = $_GET['id'];
			$matr = $_GET['matricula'];
			$email = $_GET['email'];
			$nome = $_GET['nome'];
			$tel = $_GET['telefone'];
			$end = $_GET['endereco'];
			$bai = $_GET['bairro'];
			$cid = $_GET['cidade'];

			$sql_up = $pdo->prepare("update tecnico set matricula = :mat, email = :email, nome =:nome,telefone=:tel,endereco =:end, bairro =:bai, cidade =:cid where id=:id");
			$sql_up->bindvalue(":id",$id);
			$sql_up->bindvalue(":mat",$matr);
			$sql_up->bindvalue(":email",$email);
			$sql_up->bindvalue(":nome",$nome);
			$sql_up->bindvalue(":tel",$tel);
			$sql_up->bindvalue(":end",$end);
			$sql_up->bindvalue(":bai",$bai);
			$sql_up->bindvalue(":cid",$cid);
			$sql_up->execute();
			header("location:../adm/funcionario.php?mensagem=Salvo com Sucesso");
		}

	}

