<?php
	require_once('../conexao/conexao.php');
	//selecione as lojas
	$var_loja = $pdo->prepare("select id, loja,regiao,cod_id_grupo,telefone,nome,endereco,cep,cnpj,status from loja order by loja");
	$var_loja->Execute();
	
	if(!empty($_GET['code'])){
		// $_GET['code'] = 0;
		if($_GET['code']==2){//cria uma nova loja
	        $abrev = $_GET['abrev'];
	        $telefone = $_GET['telefone'];
	        $nome = $_GET['nome'];
	        $endereco = $_GET['endereco'];
	        $cep = $_GET['cep'];
	        $doc = $_GET['cnpj'];
	        $grupo = $_GET['grupo'];
	        $regiao = $_GET['regiao'];
	        $status = $_GET['status'];
	    
	        $loja = $pdo->prepare("insert into  loja(id,loja,telefone,nome,endereco,cep,cnpj,cod_id_grupo,regiao,status) values (:abrev,:fone,:nome,:end,:cep,:doc,:grupo,:regiao,:status)");
	        $loja->bindvalue(':abrev',$abrev);
	        $loja->bindvalue(':fone',$telefone);
	        $loja->bindvalue(':nome',$nome);
	        $loja->bindvalue(':end',$endereco);
	        $loja->bindvalue(':cep',$cep);
	        $loja->bindvalue(':doc',$doc);
	        $loja->bindvalue(':grupo',$grupo);
	        $loja->bindvalue(':regiao',$regiao);
	        $loja->bindvalue(':status',$status);
	        $loja->execute();

	       header("location: ../adm/loja.php");
	      //$resp = "Usuario Cadastrado com sucesso";
		}elseif($_GET['code'] == 1){
			$id_loja = $_GET['id'];			
			$loja_select = $pdo->prepare("select A.id,A.loja,A.telefone,A.nome,A.endereco,A.cep,A.cnpj,A.cod_id_grupo,B.desc_grupo,A.regiao,A.status from loja A, grupo B where A.cod_id_grupo = B.id_grupo and id = :id_loja");
			$loja_select->bindvalue(':id_loja',$id_loja);
			$loja_select->Execute();


			$var_grupo=$pdo->prepare("select id_grupo,desc_grupo from grupo");
			$var_grupo->execute();

		}elseif($_GET['code'] == 3){
		// echo "Editar Lojas";
			$id_loja = $_GET['id'];
			$abrev = $_GET['abrev'];
			$nome = $_GET['nome'];
			$cnpj = $_GET['cnpj'];
			$telefone = $_GET['telefone'];
			$endereco = $_GET['endereco'];
			$grupo = $_GET['grupo'];
			$regiao = $_GET['regiao'];
			$cep= $_GET['cep'];
			$status = $_GET['status'];
			$loja_edit = $pdo->prepare("update loja set loja = :loja, regiao = :regiao,cod_id_grupo = :grupo, telefone = :telefone, endereco = :endereco,nome = :nome, cep = :cep, cnpj =:cnpj,status=:status where id = :id_loja ");
			$loja_edit->bindvalue(':loja',$abrev);
			$loja_edit->bindvalue(':regiao',$regiao);
			$loja_edit->bindvalue(':grupo',$grupo);
			$loja_edit->bindvalue(':telefone',$telefone);
			$loja_edit->bindvalue(':endereco',$endereco);
			$loja_edit->bindvalue(':nome',$nome);
			$loja_edit->bindvalue(':cep',$cep);
			$loja_edit->bindvalue(':id_loja', $id_loja);
			$loja_edit->bindvalue(':cnpj',$cnpj);
			$loja_edit->bindvalue(':status',$status);
			$loja_edit->execute();
			
			header("location:../adm/loja.php?mensagem= Salvo com sucesso");

		}
}