<?php
	require_once('../template/adm_template.php');
	require_once('../persistence/produto.php');
	$cadastro = "Produtos"
?>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/loja_modal.css">
<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>

<div class="titulo"><p>Cadastro de <?php echo $cadastro?></p></div>

<div class="container">
	
	<form action="../persistence/produto.php" method="GET">
	<?php foreach($sql_prod as $prod) { ?>
		
	
		<div class="nome">
			<label>Ítem</label>
			<input type="hidden" name="id" maxlength = "12" required ="" value="<?php echo $prod['id_equip'];?>">
			<input type="text" name="item" maxlength = "15" required ="" value="<?php echo $prod['desc_equip'];?>">
		</div>
		<div class="telefone">
			<label>Descricao</label><br>
			<input class="input" type="text" name="descricao"  maxlength = "20" required = "" value="<?php echo $prod['descricao'];?>">
		</div>
		

		<!--<div class="data">
			<label>Data Cadastro</label><br>
			<input class="datachamado" type="hidden" readonly name="data" value="<?php 
			date_default_timezone_set('America/Sao_Paulo');
			$date = date('d-m-Y H:i');
			echo $date;?>">
		</div>-->

		<div>
			<input class="input" type="hidden" name="status"  value='1'>
			<input type="hidden" name="code" value= '2'>
		</div>
		
		<div class="botao_salvar">
			<input class="button" type="submit" name="" value="Salvar">
		</div>
	<?php } ?>	
	</form>
</div>

<style>
	h2{
		text-align: center;
	}
	input[type=text] {
		width: 100%;
		font-size: 16px;
		font-family: poppins;
		color:blue;
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
	.botao-enviar{
		 width: 100%;
		 height: 28px;
		 display: inline-block;
		 direction:column;
		 border-radius:10px;
		 background-color: #008B8B;
		 font-size: 100%;
		 font-family: Poppins;
		 color: white;
	}
	.btn-editar{
		width: 70px;
		padding: 5px 0;
		margin-top: 5px ;
		display: inline-block;
		direction:column;
		border-radius: 10px ;
		background-color: 009688;
		color: white;
	}
	.botao_salvar{
		padding: 10px 0;
		color: white;
	}
	.btn-listar{
		display: inline-block;
		direction: column;
		border-radius: 10px;
		width: 100%;
	}
	
	.div-id{display: inline-block;direction: column;width: 90%;padding:5px;display:inline-block;direction: column;}
	.div-desc{display: inline-block;direction: column;width: 100%;padding:5px;display:inline-block;direction: column;}
	.div-status{display: inline-block;direction: column;width: 100%;padding:5px;display:inline-block;direction: column;}
	
@media screen and (min-width: 1250px){
	.div-id{display: inline-block;direction: column;width: 20px;display:inline-block;direction: column;}
	.div-desc{display: inline-block;direction: column;width: 250px;display:inline-block;direction: column;}
	.div-status{display: inline-block;direction: column;width: 870px;display:inline-block;direction: column;}
	.button{
		font-size: 100%;
		width: 100px;
		height: 40px;
	}
	.btn-listar{
		display: inline-block;
		direction: column;
		background-color: none;
		margin: -48px 120px;
		height: 40px;
	}
	.botao-enviar{
		 width: 100px;
		 height: 40px;
		 display: inline-block;
		 direction:column;
		 border-radius:10px;
		 background-color: #008B8B;
		 font-size: 100%;
		 font-family: Poppins;
		 color: white;
	}
	
}
	
</style>