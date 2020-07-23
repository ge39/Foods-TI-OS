<?php
	require_once('../template/adm_template.php');
	require_once('../persistence/loja.php');
	
?>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/loja.css">
<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>

<div class="titulo"><p>Cadastro de Lojas</p></div>

<div class="container">
	<form action="../persistence/loja.php" method="GET">
		<?php foreach($loja_select as $loja) { ?>
			
			<div>
				<input type="hidden" name="code" value="3" >
			</div>
				
			<div class="nome">
				<label>Sigla</label><br>
				<input type="hidden" name="id" maxlength= "2" required = "" value = "<?php echo $loja['id'];?>">
				<input type="text" name="abrev" maxlength= "2" required = "" value = "<?php echo $loja['loja'];?>">
			</div>
			<div class="nome">
				<label>Nome Completo</label>
				<input type="text" name="nome" maxlength = "150" required =""value = "<?php echo $loja['nome'];?>">
			</div>
					
			<div class="cnpj">
				<label>CNPJ</label><br>
				<input class="input" type="text" name="cnpj" required = "" value = "<?php echo $loja['cnpj'];?>">
			</div>
			
			<div class="telefone">
				<label>Telefone</label><br>
				<input class="input" type="text" name="telefone"  required = "" value = "<?php echo $loja['telefone'];?>">
			</div>
			
			<div class="endereco" >
				<label>Endereço</label><br>
				<input type="text" name="endereco"  required = "" value = "<?php echo $loja['endereco'];?>">
			</div>
			<div class="cep">
				<label>CEP</label><br>
				<input class="input" value ="<?php echo $loja['cep'];?>" type="text" name="cep"  required = "" >
			</div>
			<div class="bairro" >
				<label>Grupo</label><br>
				<select class = "select" name="grupo" required="">
					<option value="<?php echo $loja['cod_id_grupo'];?>"><?php echo $loja['desc_grupo'];?></option>
					<!-- <option value = "1">Ipanema</option>-->
					<?php foreach ($var_grupo as $grupo) { ?>
						<option value = "<?php echo $grupo['id_grupo'];?>"><?php echo $grupo['desc_grupo'];?></option>
					<?php } ?>
				</select>
			</div>
			<div class="cidade" >
				<label>Região</label><br>
				<select class="select" name = "regiao" required="">
					<option value ="<?php echo $loja['regiao'];?>">
						 <?php if($loja['regiao'] == "L"){
						 	echo "Zona Leste";
						 }if($loja['regiao'] == "N"){
						 	echo "Zona Norte";
						 }if($loja['regiao'] == "O"){
						 	echo "Zona Oeste";
						 }if($loja['regiao'] == "S"){
						 	echo "Zona Sul";
						 }if($loja['regiao'] == "I"){
						 	echo "Interior";
						 }if($loja['regiao'] == "C"){
						 	echo "Centro";
						 };?>
					</option>
	                <option value = "C">Centro</option>
					<option value = "L">Zona Leste</option>
					<option value = "N">Zona Norte</option>
					<option value = "O">Zona Oeste</option>
					<option value = "S">Zona Sul</option>
					<option value = "I">interior</option>
				</select>
			</div>
			<div class="cidade">
				<label>Status</label><br>
				<select class = "select" name ="status" required="">
					<option value="<?php echo $loja['status'];?>"><?php if ($loja['status'] == 2){
						 echo "Desativada";
						}else{
							echo "Ativada";
						}
						;?>
					</option>
					<option value="1">Ativada</option>
					<option value="2">Desativada</option>
				</select>
			</div>
			<div class="data">
				<!--<label>Data Cadastro</label><br>-->
				<input class="datachamado" type="hidden" readonly name="data" value="<?php 
				date_default_timezone_set('America/Sao_Paulo');
				$date = date('d-m-Y H:i');
				echo $date;?>">
			</div>

			
			
			<div class="botao_salvar">
				<input class="button" type="submit" name="" value="Salvar">
			</div>
		<?php } ?>
	</form>
	
	
</div>
<style>
	
	.div-select{
		width: 100%;
		font-size: 18px;
		font-weight: bold;
	}
	.select{
		width: 100%;
		font-size: 14px;
	}
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
	.select{
		width: 150px;
		font-size: 18px;
	}
	
}
</style>