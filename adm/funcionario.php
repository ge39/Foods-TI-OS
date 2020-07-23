<?php
	require_once('../template/adm_template.php');
	require_once('../persistence/funcionario.php');
	$cadastro = "Técnicos"
?>
<link rel="stylesheet" type="text/css" href="../css/style.css">
 <!-- <link rel="stylesheet" type="text/css" href="../css/loja.css">  copiado-->
<!-- <link rel="stylesheet" type="text/css" href="../css/loja_modal.css"> -->
<link rel="stylesheet" type="text/css" href="../css/funcionario.css">
<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>

<div class="titulo"><p>Cadastro de <?php echo $cadastro?></p></div>
<div class="msg" >
	 <?php if(!empty($_GET['mensagem'])){

	 	echo $mensagem = $_GET['mensagem'];

		 }else{
		 	
		 echo $mensagem = "";
		}
	?>
</div>
<div class="container">
	<form action="../persistence/crud.php" method="GET">
		<div>
			<input type="hidden" name="code" value="10" >
			<input type="hidden" name="status" value="1">
		</div>
		<div class="nome">
			<label>Matrícula</label><br>
			<input class = "input" type="text" name="matricula" maxlength = "7" required ="" placeholder="165879">
		</div>
		<div class="nome">
			<label>Email</label><br>
			<input class = "input" type="text" name="email" maxlength = "150" required ="" placeholder="usuario@ipanemafoods.com.br">
		</div>
		<div class="nome">
			<label>Nome Completo</label><br>
			<input class = "input" type="text" name="nome" maxlength = "120" required ="" placeholder="Seu nome completo">
		</div>
		<div class="nome">
			<label>Telefone</label><br>
			<input class = "input" type="text" name="telefone" maxlength= "25" required = "" placeholder="5872-5617/5872-6121" >
		</div>
		
		<div class="nome" >
			<label>Endereço</label><br>
			<input class = "input" type="text" name="endereco"  required = "" maxlenght ="150" placeholder="Av.Presidente Wilson,1681">
		</div>

		<div class="nome" >
			<label>Bairro</label><br>
			<input class = "input" type="text" name="bairro"  required = "" maxlength="100" placeholder="Mooca">
		</div>

		<div class="nome" >
			<label>Cidade</label><br>
			<input class = "input" type="text" name="cidade"  required = "cidade" maxlength="100" placeholder="Sao Paulo -SP">
		</div>

		<div class="data">
			<!--<label>Data Cadastro</label><br>-->
			<input class="datachamado" type="hidden" readonly name="data" value="<?php 
			date_default_timezone_set('America/Sao_Paulo');
			$date = date('d-m-Y H:i');
			echo $date;?>">
		</div>

		<div class="botao-salvar">
			<input class="button" type="submit" name="" value="Salvar">
			
		</div>

		<div class="btn-listar">
			<a href="#abrirModal" data-toggle="modal" data-target="abrirModal"><button type="button" class="botao-enviar" onclick="document.getElementbyID('id01').style.display='inline-block'">Listar</button></a>
		</div>
		
	</form>
</div>

<!--Modal-->
	<div class="modal" id="abrirModal">
		<a href="#fechar" title="fechar" class="fechar">x</a>
		<div class="header-modal">
			<h2>Lista dos Técnicos</h2>
		</div>
		<div class="conteudo-modal">

			<?php foreach($var_tec as $tec) { ?>
				<!-- <div class="div-id"><?php echo $tec['id'];?></div> -->
				<div class="div-nome"><?php echo $tec['nome'];?></div>
				<div class="div-matricula"><?php echo $tec['matricula'];?></div>
				<div class="div-email"><?php echo $tec['email'];?></div>
				<div class="div-end"><?php echo $tec['endereco'];?></div>
				<div class="div-bairro"><?php echo $tec['bairro'];?></div>
				<div class="div-cidade"><?php echo $tec['cidade'];?></div>
				<div class = "link"><a href="../adm/funcionario_edit.php?id=<?php echo $tec['id'];?>&code=1"><button class="btn-editar">Editar</button></a></div>
				<hr style="margin: 5px;">
			<?php }?> 

		</div>
		<div class="footer-modal">
			
		</div>
		
	</div>
	<!-- fim modal -->
 <style>
	

</style> 