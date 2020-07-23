<?php
require_once('../conexao/conexao.php');
	
	if(empty($_GET['id'])){
		$_GET['id'] = 0;
	}else {

	    $id_loja = $_GET['id'];
		$var_id_loja = $pdo->prepare("select id, loja,regiao,cod_id_grupo,telefone,nome,endereco,cep,cnpj,status from loja where id = :id");
		$var_id_loja->bindvalue(':id', $id_loja);
		$var_id_loja->Execute();
	}