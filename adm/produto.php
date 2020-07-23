<?php
	require_once('../template/adm_template.php');
	require_once('../persistence/produto.php');
	$cadastro = "Produtos"
?>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/produto.css">
<!-- <link rel="stylesheet" type="text/css" href="../css/loja_modal.css"> -->
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
	
	<form action="../persistence/produto.php" method="GET">
	
		<div class="item">
			<label>Ítem</label><br>
			<input class="input" type="text" name="item" maxlength = "15" required ="" placeholder="Tanca">
		</div>
		<div class="descricao">
			<label>Descricao</label><br>
			<input class = "input" type="text" name="descricao"  maxlength = "20"required = "" placeholder="Mini computador para pdv" >
		</div>
		<div>
			<input type="hidden" name="status"  value='1'>
			<input type="hidden" name="code" value= '3'>
		</div>
		
		<div class="botao_salvar">
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
			<h2>Lista de Produtos</h2>
		</div>
		<div class="conteudo-modal">

			 <?php foreach($var_prod as $prod) { ?>	
				<!-- <div class="div-id"><?php echo $prod['id_equip'];?></div> -->
				<div class="div-item"><?php echo $prod['desc_equip'];?></div>
				<div class="div-desc"><?php echo $prod['descricao'];?></div>
				<!-- <div class="div-status"><?php echo $prod['status'];?></div> -->
				<a href="../adm/produto_edit.php?id=<?php echo $prod['id_equip'];?>&code=1"><button class="btn-editar">Editar</button></a>
				<hr style="margin-top: 10px;">
			<?php }?> 

		</div>
		<div class="footer-modal">
			
		</div>
		
	</div>
	<!-- fim modal -->
</div>
