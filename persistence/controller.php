<?php
	require_once('../conexao/conexao.php');

	//selecione o endereço para loja pelo apelido dela
if(!empty($_GET['loja'])){
		$apelido = $_GET['loja'];
		
		$rota_loja = $pdo->prepare("SELECT id,nome,loja,regiao,telefone,cnpj,apelido,endereco,bairro,cidade,estado,regiao from endereco where apelido = :nick and status = 1");
		$rota_loja->bindValue(":nick",$apelido);
		$rota_loja->execute();
	}
elseif(!empty($_GET['id'])){
	
	$_GET['id'];
	//seleciona o chamado pelo numero id
	$id = $_GET['id'];

	$var_select = $pdo->prepare("select A.id_chamado,I.id_tecnico,I.id,I.id_estoque,I.reclamado,I.solicitante,A.descricao_chamado,D.loja,D.id as id_loja,H.nome,M.descricao as solucao,I.pendencia,I.data_abertura_chamado,I.avaliacao_tecnico,J.prioridade,J.id as id_priori, L.descricao,L.id_atendimento from chamado_status A, loja D, tecnico H, ordem I,prioridade J, atendimento L, solucao M
	where I.id = M.cod_id_ordem and I.atendimento = L.id_atendimento and A.id_chamado = I.id_status_chamado 
	and D.id = I.id_loja and I.id_tecnico = H.id and I.id_prioridade = J.id	and I.id = :id and I.atendimento = L.id_atendimento");
	
	$var_select->bindValue(":id", $id);
	$var_select->execute();
	
	//carrega os dados da tabela estoque
	$var_estoque = $pdo->prepare("select id_produto,item from estoque");
	//$var_estoque->bindValue(':idest', $id);
	$var_estoque->execute();

	//carrega somente o id_codigo,item e descricao da tabela dos produtos utilizados no chamado
	$var_editar = $pdo->prepare("select (A.id_chamado) as NumChamado,A.cod_id_produto,B.item as descricao,sum(A.qtde) as qtde
	from utilizado A, estoque B, ordem C where A.cod_id_produto = B.id_produto and A.id_chamado = C.id and C.id =  $id		
	GROUP BY A.cod_id_produto order by B.descricao");
	$var_editar->execute();

	//carrega os dados da tabela dos produtos utilizados no chamado
	$var_utilizado = $pdo->prepare("select (A.id_chamado) as NumChamado,A.cod_id_produto,B.item as descricao,sum(A.qtde) as qtde
	from utilizado A, estoque B, ordem C where A.cod_id_produto = B.id_produto and A.id_chamado = C.id and C.id =  $id		
	GROUP BY A.cod_id_produto order by B.descricao");
	$var_utilizado->execute();

	//carrega todos os itens disponivel no estoque
	$var_produto = $pdo->prepare("select id_produto,item from estoque order by item");
	$var_produto->execute();


	//seleciona os tecnicos
	$var_tec = $pdo->prepare("select id,nome from tecnico");
	$var_tec->execute();

	//selecione as lojas
	$var_loja = $pdo->prepare("select id,loja from loja WHERE status = 1 order by loja asc");
	$var_loja->Execute();

	//selecione os produtos
	$id = $_GET['id'];
	$var_estoque = $pdo->prepare("select A.id_produto,A.item,C.cod_id_produto,B.id
 		from estoque A, ordem B ,utilizado C
		where C.cod_id_produto =  A.id_produto and B.id = C.id_chamado and B.id = $id");
	$var_estoque->Execute();


	//selecione a prioridade do chamado
	$var_priore = $pdo->prepare("select id,prioridade from prioridade");
	$var_priore->Execute();

	//seleciona o status do chamado
	$var_status_chamado = $pdo->prepare("select id_chamado,descricao_chamado from chamado_status order by descricao_chamado asc");
	$var_status_chamado->Execute();

	//seleciona todos os equipamentos para abrir chamados que deram defeitos
	$var_equipamento = $pdo->prepare("Select id_equip,desc_equip from equipamento order by desc_equip asc");
	$var_equipamento->execute();
}
else{
require_once('../conexao/conexao.php');
	//seleciona todos os chamados, abertos 
	$var_select_all = $pdo->prepare("select I.id,I.reclamado,I.solicitante,I.id_status_chamado,I.id_tecnico,I.ultima_atualizacao,I.criado,I.data_abertura_chamado,I.atendimento,L.descricao, A.descricao_chamado as descr,D.loja,D.regiao,H.nome,J.prioridade from chamado_status A, loja D,tecnico H, ordem I,prioridade J, atendimento L where A.id_chamado = I.id_status_chamado and D.id = I.id_loja and I.id_tecnico = H.id and I.id_prioridade = J.id and I.atendimento = L.id_atendimento and I.id_status_chamado <> '5' order by J.prioridade,I.atendimento, I.id desc");
	$var_select_all->execute();


	//seleciona todos os chamados encerrados
	$var_select_close = $pdo->prepare("select I.id,I.reclamado,I.solicitante,I.id_status_chamado,I.id_tecnico,I.data_fecha_chamado,I.criado,I.data_abertura_chamado,A.descricao_chamado as descr,D.loja,H.nome,J.prioridade  from chamado_status A, loja D,tecnico H, ordem I,prioridade J where  A.id_chamado  = I.id_status_chamado and D.id = I.id_loja and I.id_tecnico = H.id and I.id_prioridade = J.id and I.id_status_chamado = '5' order by I.id desc");
	$var_select_close->execute();


}
if(!empty($_GET['id_tec'])){
	$tecnico = $_GET['id_tec'];

    //seleciona os chamados abertos pelo id_tecnico
    $var_select_tec = $pdo->prepare("select I.id,I.reclamado,I.solicitante,I.id_status_chamado,I.id_tecnico,I.ultima_atualizacao,I.criado,I.data_abertura_chamado,A.descricao_chamado as descr,D.loja,H.nome,J.prioridade   from chamado_status A, loja D,tecnico H, ordem I,prioridade J where A.id_chamado  = I.id_status_chamado and D.id = I.id_loja and I.id_tecnico = H.id and I.id_prioridade = J.id and I.id_status_chamado <> '5' and id_tecnico = :tec order by I.id desc");
    $var_select_tec->bindValue(':tec',$tecnico);
    $var_select_tec->execute();
}
