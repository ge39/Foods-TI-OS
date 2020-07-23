<?php
	require_once('../template/adm_template.php');
	require_once('../persistence/loja.php');
	require_once('../persistence/loja_select.php');
	
	
?>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/loja.css">
<link rel="stylesheet" type="text/css" href="../css/loja_modal.css">
<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>

<div class="titulo"><p>Cadastro de Lojas</p></div>

<div class="container">
	<form action="../persistence/loja.php" method="GET">
		<div>
			<input type="hidden" name="code" value="2" >
			<input type="hidden" name="status" value = "1">
		</div>
		
	
		<div class="nome">
			<label>Sigla</label><br>
			<input type="text" name="abrev" maxlength= "2" required = "" placeholder="AC">
		</div>
		<div class="nome">
			<label>Nome Completo</label>
			<input type="text" name="nome" maxlength = "150" required ="" placeholder="MERCADÃO DE CARNES NOVILHÃO LTDA">
		</div>
				
		<div class="cnpj">
			<label>CNPJ</label><br>
			<input class="input" type="text" name="cnpj" required = "" placeholder="08170468/0011-08" >
		</div>
		
		<div class="telefone">
			<label>Telefone</label><br>
			<input class="input" type="text" name="telefone"  required = "" placeholder="5872-5617/5872-6121" >
		</div>
		
		<div class="endereco" >
			<label>Endereço</label><br>
			<input type="text" name="endereco"  required = "" placeholder="RUA ABILIO CESAR, 212 TR JD JANGADEIRO">
		</div>

		<div class="bairro" >
			<label>Grupo</label><br>
			<select class = "select" name="grupo" required="">
				<option></option>
				<option value = "1">Ipanema</option>
				<option value = "2">Novilhao</option>
				<option value = "3">Parisiene</option>
			</select>
		</div>

		<div class="cidade" >
			<label>Região</label><br>
			<select class="select" name = "regiao" required="">
				<option></option>
                                <option value = "C">Centro</option>
				<option value = "L">Zona Leste</option>
				<option value = "N">Zona Norte</option>
				<option value = "O">Zona Oeste</option>
				<option value = "S">Zona Sul</option>
				<option value = "I">interior</option>
			</select>
		</div>

		<div class="data">
			<!--<label>Data Cadastro</label><br>-->
			<input class="datachamado" type="hidden" readonly name="data" value="<?php 
			date_default_timezone_set('America/Sao_Paulo');
			$date = date('d-m-Y H:i');
			echo $date;?>">
		</div>

		<div class="cep">
			<label>CEP</label><br>
			<input class="input" type="text" name="cep"  required = "" placeholder="05881-020" >
		</div>
		
		<div class="botao_salvar">
			<input class="button" type="submit" name="" value="Salvar">
		</div>
		<div class="btn-listar">
			<a href="#abrirModal" data-toggle="modal" data-target="abrirModal"><button type="button" class="botao-enviar" onclick="document.getElementbyID('id01').style.display='inline-block'">Listar</button></a>
		</div>
	</form>

	<!--Modal-->
	<div class="modal" id="abrirModal">
		<a href="#fechar" title="fechar" class="fechar">x</a>
		<div class="header-modal">

		</div>
		<div class="conteudo-modal">

			<?php foreach($var_loja as $loja) { ?>
				<div class="div-loja"><?php echo $loja['loja'];?></div>
				<div class="div-nome"><?php echo $loja['nome'];?></div>
				<div class="div-cnpj"><?php echo $loja['cnpj'];?></div>
				<div class="div-tel"><?php echo $loja['telefone'];?></div>
				<div class="div-end"><?php echo $loja['endereco'];?></div>
				<div class="div-cep"><?php echo $loja['cep'];?></div>
				<a href="../adm/loja_edit.php?id=<?php echo $loja['id'];?>&code=1"><button class="btn-editar">Editar</button></a>
				<hr style="margin-top: 3px;">
			<?php }?>

		</div>
		<div class="footer-modal">
			
		</div>
		
	</div>
	<!-- fim modal -->
</div>
