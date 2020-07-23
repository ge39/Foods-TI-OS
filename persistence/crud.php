<?php
    session_start();
	require_once("../conexao/conexao.php");
  $codigo = $_GET['code'];
  date_default_timezone_set('America/Sao_Paulo');
    $dados = date('d/m/Y H:i:s');

 	if ($_GET['code']== 0 ) {//cria um chamado novo
                 
         $logado = $_SESSION['nome'];
         $id_loja = $_GET['id'];
         $id_tecnico = $_GET['id_tecnico'];
         $solicitante = $_GET['solicitante'];
         $id_priore = $_GET['id_priore'];
         $date = date('Y-m-d H:i:s', strtotime($_GET['data']));
         $falha= $_GET['defeito_reclamado'];
         $status_chamado = $_GET['status_chamado'];
         $status = $_GET['status'];
         $atualiza = '0000-00-00 00:00';
         $fecha_chamado = '0000-00-00 00:0';
         $atendimento = $_GET['atendimento'];

        $data = [
            'criado'=>$logado,
            'loja'=>$id_loja,
            'tecnico'=>$id_tecnico,
            'solicitante'=>$solicitante,
            'id_priore'=>$id_priore,
            'data'=>$date,
            'data_atualizacao'=>$atualiza,
            'falha'=>$falha,
            'status_chamado'=>$status_chamado,
            'status'=>$status,
            'data_fechamento'=>$fecha_chamado
        ];
        $sql = "INSERT INTO ordem (id_loja,id_tecnico,criado,solicitante,id_prioridade,data_abertura_chamado,ultima_atualizacao,reclamado,id_status_chamado,status,data_fecha_chamado, atendimento)
            values(:loja,:tecnico,:criado,:solicitante,:id_priore,:data,:atualizacao,:falha,:status_chamado,:status,:data_fechamento,:atend)";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':criado', $logado);
            $stmt->bindParam( ':loja',$id_loja);
            $stmt->bindParam( ':tecnico',$id_tecnico);
            $stmt->bindParam( ':solicitante',$solicitante);
            $stmt->bindParam( ':id_priore',$id_priore);
            $stmt->bindParam( ':data',$date);
            $stmt->bindParam(':falha',$falha);
            $stmt->bindParam(':atualizacao',$atualiza);
            $stmt->bindParam( ':status_chamado',$status_chamado);
            $stmt->bindParam( ':status',$status);
            $stmt->bindParam(':data_fechamento', $fecha_chamado);
            $stmt->bindParam(':atend',$atendimento);
            $result = $stmt->Execute();

            //pega o ultima OS e envia para ser gerado a solucao do chamado
            $solucao = $pdo->prepare("select max(id) as id_ordem from ordem");
            $solucao->execute();

           foreach ($solucao as $row) {
             $ordem = $row['id_ordem'];
            }

            echo $ordem;
            //cria ordem na tabela solução para os chamados
            $insert_solucao = $pdo->prepare("insert into solucao (cod_id_ordem)value ($ordem)");
            $insert_solucao->execute();


            header('Location: ../public/index.php?');

            if ( ! $result )
            {
                var_dump( $stmt->errorInfo() );
                exit;
                  //echo $stmt->rowCount() . "linhas inseridas";
                    
                exit;
            }
    }
           
    if(($_GET['code']=='2')){ //fechamento de chamado 2
       $id_tecnico = $_GET['id_tecnico'];
      
    if($id_tecnico == 12){
     $_GET['id_chamado'];
     $msg_tec = "Escolha_o_tecnico";
     $chamado = $_GET['id_chamado']; 
     header("Location: ../public/enc_cham.php?id=$chamado&mensagem=$msg_tec");
    }else{
		
		try{
          $id_status_chamado = $_GET['status_chamado'];
          $id_chamado        =$_GET['id_chamado'];
          $id_tecnico        =$_GET['id_tecnico'];
          $data_fechamento   = date('Y-m-d H:i', strtotime( $_GET['data_fechamento'])) ;
          $defeito_reclamado =$_GET['defeito_reclamado'];
          $avaliacao         =$_GET['avaliacao'];
          $pendencia         =$_GET['pendencia'];
          $solucao           = $dados." - ".$_GET['solucao'];
          $atendimento       =$_GET['cod_atend'];
          $equipamento       =$_GET['equipamento'];
        $stmt = $pdo->prepare("UPDATE ordem SET id_status_chamado = :id_status_chamado,id_tecnico = :id_tecnico,data_fecha_chamado = :data_fecha,reclamado = :defeito_reclamado, avaliacao_tecnico =:avaliacao,pendencia = :pendencia,atendimento = :atendimento,cod_id_equipa = :equipamento  WHERE id = :id_chamado");
        $stmt->execute(array(
                              
            ':id_status_chamado'=>$id_status_chamado,
            ':id_chamado'       =>$id_chamado,
            ':id_tecnico'	      =>$id_tecnico,
            ':data_fecha'       =>$data_fechamento,
            ':defeito_reclamado'=>$defeito_reclamado,
            ':avaliacao'        =>$avaliacao,
            ':pendencia'	      =>$pendencia,
            ':atendimento'      =>$atendimento,
            ':equipamento'      =>$equipamento
	    ));
        //atualiza a tabela de solucao dos chamados
        $update_solucao = $pdo->prepare("update solucao set descricao = :solucao where cod_id_ordem = :id_chamado");
        $update_solucao->bindvalue(':solucao',$solucao);
        $update_solucao->bindvalue(':id_chamado',$id_chamado);
        $update_solucao->execute();
            
		 header('Location: ../public/index.php?');   

		} catch(PDOException $e) {
			  echo $stmt->rowCount(); 
	  	echo 'Error: ' . $e->getMessage();
		}
}
	}elseif($_GET['code']=='3'){ //atualização de chamado 3
		 $id = $_GET['id_chamado'];
     $id_loja = $_GET['id_loja'];
     $chamado = $_GET['id_chamado'];
     $id_priore = $_GET['id_prioridade'];
     $status_chamado = $_GET['status_chamado'];
     $id_tecnico = $_GET['id_tecnico'];
     $defeito = $_GET['defeito_reclamado'];
     $atualizacao = date('Y-m-d H:i', strtotime( $_GET['atualizacao'])) ;
     $data_fechamento = '0000-00-00 00:00';
     $avaliacao_tecnico = $_GET['avaliacao'];
     $solucao = $_GET['solucao'];
     $status = $_GET['status_chamado']; 
     $pendencia = $_GET['pendencia'];
     $atendimento = $_GET['atendimento'];

  $stmt = $pdo->prepare("UPDATE ordem SET id_status_chamado = :id_status, id_tecnico = :id_tecnico,ultima_atualizacao =:data_atualizacao,avaliacao_tecnico = :avaliacao,status = :status,pendencia = :pendencia,reclamado = :reclamado,data_fecha_chamado =:data_fechamento, atendimento =:atend,id_loja = :id_loja, id_prioridade = :id_priore WHERE id = $id ");
      // $stmt->bindvalue(':id_chmado',$id);
      $stmt->bindvalue(':id_status' , $status_chamado);
      $stmt->bindvalue(':id_tecnico', $id_tecnico);
      $stmt->bindvalue(':data_atualizacao',$atualizacao);
      $stmt->bindvalue(':avaliacao', $avaliacao_tecnico);
      $stmt->bindvalue(':status' , $status);
      $stmt->bindvalue(':pendencia', $pendencia);
      $stmt->bindvalue(':reclamado', $defeito);
      $stmt->bindvalue(':data_fechamento',  $data_fechamento);
      $stmt->bindvalue(':atend', $atendimento);
      $stmt->bindvalue(':id_loja', $id_loja);
      $stmt->bindvalue(':id_priore', $id_priore);
      $stmt->execute();
              
    header('Location: ../public/index.php?');
    
    //atualiza a tabela de solucao dos chamados
    $update_solucao = $pdo->prepare("update solucao set descricao = :solucao where cod_id_ordem = :id_chamado");
    $update_solucao->bindvalue(':solucao',$solucao);
    $update_solucao->bindvalue(':id_chamado',$chamado);
    $update_solucao->execute();

	}elseif($_GET['code']==4){//insere na tabela utilizados os itens inseridos no chamado 4
		
		$qtde = $_GET['qtde'];
		$id = $_GET['id_produto'];
		$id_chamado = $_GET['id_chamado'];
    $status = $_GET['status'];
                
		$stmt=$pdo->prepare("insert into utilizado (qtde,cod_id_produto,id_chamado,status) values (:qtde, :produto,:chamado,:status)");
		$stmt->bindvalue(':qtde', $qtde);
		$stmt->bindvalue(':produto',$id);
		$stmt->bindvalue(':chamado',$id_chamado);
    $stmt->bindvalue(':status',$status);
		$stmt->execute();

    
		header("Location: ../public/edit.php?id=$id_chamado");
                
                
	}elseif($_GET['code']==5){ //remover itens do chamado 5
		$id = $_GET['id_produto'];
		$id_prod = $_GET['id_produto'];
		$id_chamado = $_GET['id_chamado'];

		$edit = $pdo->prepare("delete from utilizado where cod_id_produto = :codpro and id_chamado = :id");
		$edit->bindvalue(':codpro', $id_prod);
		$edit->bindvalue(':id',$id_chamado);
		$edit->execute();
		header("Location: ../public/edit.php?id=$id_chamado");

	}elseif($_GET['code']=='7'){ //reabrir chamados 7
		$id = $_GET['id_chamado'];
		try{
	  date_default_timezone_set('America/Sao_Paulo');
	  $hoje = date('d-m-Y');
          
      $chamado = $_GET['id_chamado'];
      $status_chamado = 7;//$_GET['status_chamado'];
      $id_priore= 3;
    // echo $data_fechamento = date('Y/m/d', strtotime($hoje));
      $atualizacao = date('Y-m-d', strtotime( $hoje));
     //echo $avaliacao_tecnico = $_GET['avaliacao']."</br>";
      $data_fechamento = '0000-00-00';
     //echo $solucao = $_GET['solucao']."</br>";
     //echo $status = $_GET['status_chamado']."</br>";
     //echo $pendencia = $_GET['pendencia'];

     $stmt = $pdo->prepare("UPDATE ordem SET id_status_chamado = :id_status,ultima_atualizacao = :data_atualizacao,id_prioridade = :priore,data_fecha_chamado =:fecha_chamado  WHERE id = :id_chamado");
              $stmt->execute(array(
                ':id_chamado'	=>$chamado,
                ':id_status'        =>$status_chamado,
                ':priore'           =>$id_priore,
                ':data_atualizacao'	=>$atualizacao,
                ':fecha_chamado'	=>$data_fechamento
                ));
    header('Location: ../public/index.php?');
                  
		 } catch(PDOException $e) {
			  echo $stmt->rowCount(); 
	  		  echo 'Error: ' . $e->getMessage();}
	
    }elseif ($_GET['code'] == 8){//insere um novo produto no estoque
        $item = ucfirst($_GET['item']);
      
        $select = $pdo->prepare('select item from estoque where item = :item');
        $select->bindvalue(':item',$item);
        $select->execute();
        $resp="";
        foreach ($select as $key) {
             $resp = $key['item'];
         
        }
         if(($resp)==True){
                //echo "Arquivo ".$resp." ja existe";
            }else{
               $item = ucfirst($_GET['item']);
                $desc = $_GET['descricao'];
                $valor = $_GET['valor'];
                $status = $_GET['status'];
                       
                $sql = $pdo->prepare("insert into estoque(item,descricao,qtde_entrada,qtde_saida,valor,status) values (:item,:desc,:qtde_entrada,:qtde_saida,:valor,:status)");
                $sql->bindvalue(':item',$item);
                $sql->bindvalue(':desc',$desc);
                $sql->bindvalue(':qtde_entrada',0);
                $sql->bindvalue(':qtde_saida',0);
                $sql->bindvalue(':valor',$valor);
                $sql->bindvalue(':status',$status);
                $sql->Execute();
          
            }
             header('location:../adm/produto.php');

    }elseif($_GET['code']== 9){//altera ou cadastra uma nova senha de acesso do técnico
        $matric = $_GET['matricula'];
        $code = $_GET['code'];
        $senha = sha1($_GET['senha']);
        $senha2 = sha1($_GET['senha2']);

        //verifica se a matricula do tecnico está no sistema
        $sql = $pdo->prepare("select matricula from tecnico where matricula = :matric");
        $sql->bindvalue(':matric', $matric);
        $sql->Execute();

        foreach ($sql as $row) {
            $codigo = $row['matricula'];
         header('location:../public/index.php');
    
        }
        if($codigo != $matric){
            $resp = "Matricula nao cadastrada".'</BR>';
            $_SESSION['msg'] = $resp;
            header('location:../public/index.php');

        }
        if($senha == $senha2 and $codigo == $matric){
            //echo "senha identiticas ".$senha." e ".$senha2;

            $pwd = $pdo->prepare("UPDATE tecnico set senha = :senha where matricula = :matric");
            $pwd->bindvalue(':senha',$senha2);
            $pwd->bindvalue(':matric',$matric);
            $pwd->execute();
            $resp = "Login Criado";
             $_SESSION['msg'] = $resp;
            header('location:../public/index.php');
           
        }else{
            $resp ="senha incorreta ";
            $_SESSION['msg'] = $resp;
            header('location:../public/index.php');
        }
    }
    elseif($_GET['code'] == 10){//cadastro de técnico
            $_GET['code'];
            $matric = $_GET['matricula'];
            $nome = Ucfirst($_GET['nome']);
            $email = $_GET['email'];
            $ender = Ucfirst($_GET['endereco']);
            $tel   = $_GET['telefone'];
            $bairro =Ucfirst( $_GET['bairro']);
            $data = date('Y-m-d', strtotime($_GET['data']));
            $status = $_GET['status'];
            $cidade = Ucfirst($_GET['cidade']);

            $sql_tecnico = $pdo->prepare("INSERT into tecnico(matricula,nome,email,endereco,telefone,bairro,data,status,cidade) 
            values(:matric,:nome,:email,:ender,:tel,:bairro,:data,:status,:cidade)");
            $sql_tecnico->bindvalue(':matric',$matric);
            $sql_tecnico->bindvalue(':nome',$nome);
            $sql_tecnico->bindvalue(':email',$email);
            $sql_tecnico->bindvalue(':ender',$ender);
            $sql_tecnico->bindvalue(':tel',$tel);
            $sql_tecnico->bindvalue(':bairro',$bairro);
            $sql_tecnico->bindvalue(':data',$data);
            $sql_tecnico->bindvalue(':status',$status);
            $sql_tecnico->bindvalue(':cidade',$cidade);
            $sql_tecnico->Execute();

            $_SESSION['msg'] = "Cadastrado com sucesso";
          
            header('location:../adm/funcionario.php');
    }


