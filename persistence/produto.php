<?php
require_once('../conexao/conexao.php');

	//seleciona os produtos
	$var_prod = $pdo->prepare("select id_equip,desc_equip,descricao,status from equipamento order by desc_equip asc");
	$var_prod->execute();


	//carrega os funcionarios pelo id
	if(!empty($_GET['code'])){

		if($_GET['code'] == 1){
			 $id_prod = $_GET['id'];
			 $_GET['code'];

			$sql_prod = $pdo->prepare("Select id_equip,desc_equip,descricao from equipamento where id_equip = :id");
			$sql_prod->bindvalue(":id", $id_prod);
			$sql_prod->execute();

		}elseif ($_GET['code'] == 2) {
			 $id = $_GET['id'];
			 $item = $_GET['item'];
			 $desc = $_GET['descricao'];
		

			 $sql_up = $pdo->prepare("update equipamento set desc_equip =:item, descricao =:desc where id_equip = :id");
			 $sql_up->bindvalue(":id",$id);
			 $sql_up->bindvalue(":item",$item);
			 $sql_up->bindvalue(":desc",$desc);
			 $sql_up->execute();
			header("location:../adm/produto.php?mensagem=Salvo com Sucesso");
			
		}elseif($_GET['code'] == 3){
			$item = $_GET['item'];
			$desc = $_GET['descricao'];
			$status = $_GET['status'];

					
			$sql_save = $pdo->prepare("insert into equipamento(desc_equip,descricao,status) values(:item,:desc,:status)");
			$sql_save->bindvalue(":item", $item);
			$sql_save->bindvalue(":desc",$desc);
			$sql_save->bindvalue(":status",$status);
			$sql_save->execute();
			header("location:../adm/produto.php?mensagem=Salvo com Sucesso");
						
		}	
	}