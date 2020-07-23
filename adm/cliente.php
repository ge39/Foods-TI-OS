<?php
	require_once('../template/adm_template.php');
	$cadastro = $_GET['cad']
?>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>

<div class="titulo"><p>Cadastro de <?php echo $cadastro?></p></div>

<div class="container">
	<form action="../persistence/crud.php" method="GET">
		<div>
			<input type="hidden" name="code" value="6" >
		</div>
		<div class="nome">
			<label>Nome Completo</label>
			<input type="text" name="nome" maxlength = "120" required ="" placeholder="MERCADÃO DE CARNES NOVILHÃO LTDA">
		</div>
		<div class="nome">
			<!--<label>Nome Abreviado</label><br>-->
			<input type="hidden" name="abreviado" maxlength= "3" required = "" placeholder="AC">
		</div>
		
		<div class="cnpj">
			<label>Documento</label><br>
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
			<label>Bairro</label><br>
			<input type="text" name="bairro"  required = "" placeholder="RUA ABILIO CESAR, 212 TR JD JANGADEIRO">
		</div>

		<div class="cidade" >
			<label>Cidade</label><br>
			<input type="text" name=""  required = "cidade" placeholder="RUA ABILIO CESAR, 212 TR JD JANGADEIRO">
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
		
	</form>
</div>
<style>
	input[type=text] {
		width: 100%;
		font-size: 16px;
		font-family: poppins;	
	}
	.titulo{
		margin:5px 0;
		width: 100%;
		height: 30px;
		text-align: center;
		font-size: 20px;
		color:white;
		padding: 2px;
		font-family:Poppins;
		background-color: #003300;
	}
	.container{
		display: inline-block;
		direction: column;
		width: 99%;
		background-color:white;
		padding: 10px;
		margin:  5px;
		font-size: 18px;
		font-family: poppins;	
		color:#001a00;
		font-weight: bold;
	}
	.botao_salvar{
		padding: 10px 0;
	}
	.button{
		width: 100%;
		height: 10%;
		font-family: poppins;
		font-size: 20px;
		background-color: #008B8B;
		border-radius: 8px;
	}
@media screen and (min-width: 1024px){
	.button{
		width: 20%;
		height: 8%;
	}
}
	
</style>