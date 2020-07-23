<?php
	require_once('../template/adm_template.php');
	require_once('../persistence/funcionario.php');
	$cadastro = "Técnico"
?>
<link rel="stylesheet" type="text/css" href="../css/style.css">

<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>

<div class="titulo"><p>Alterar <?php echo $cadastro?> Cadastrado</p></div>

<div class="container">
	<form action="../persistence/funcionario.php" method="GET">
		<div>
			<input type="hidden" name="code" value="3" >
			<input type="hidden" name="status" value="1">
		</div>
		<?php foreach($sql_tec as $tec) { ?>
			<div class="nome">
				<label>Matrícula</label>
				<input type="hidden" name="id" value = "<?php echo $tec['id'];?>" maxlength = "7" readonly required ="">
				<input type="text" name="matricula" value = "<?php echo $tec['matricula'];?>" maxlength = "7" readonly required ="">
			</div>
			<div class="nome">
				<label>Email</label>
				<input type="text" name="email" maxlength = "150" required =""  value = "<?php echo $tec['email'];?>">
			</div>
			<div class="nome">
				<label>Nome Completo</label>
				<input type="text" name="nome" maxlength = "120" required ="" value = "<?php echo $tec['nome'];?>">
			</div>
			<div class="telefone">
				<label>Telefone</label><br>
				<input class="input" type="text" name="telefone" maxlength= "25" required = "" value = "<?php echo $tec['telefone'];?>" >
			</div>
			
			<div class="endereco" >
				<label>Endereço</label><br>
				<input type="text" name="endereco"  required = "" maxlenght ="150" value = "<?php echo $tec['endereco'];?>">
			</div>

			<div class="bairro" >
				<label>Bairro</label><br>
				<input type="text" name="bairro"  required = "" maxlength="100" value = "<?php echo $tec['bairro'];?>">
			</div>

			<div class="cidade" >
				<label>Cidade</label><br>
				<input type="text" name="cidade"  required = "cidade" maxlength="100" value = "<?php echo $tec['cidade'];?>">
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
	
	input[type=text] {
		width: 100%;
		font-size: 16px;
		font-family: poppins;
		color: blue;	
	}
	.titulo{
		margin:5px 0;
		width: 100%;
		height: 30px;
		text-align: center;
		font-size: 20px;
		color:white;
		padding: 2px;
		letter-spacing:5px; 
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
		color: white;
	}
	.btn-enviar{
		 width: 100%;
		 padding:2px 0;
		 display: inline-block;
		 direction:column;
		 color: white;
	}
	.botao-enviar{
		width: 100%;
		display: inline-block;
		direction:column;
		height: 30px;
		border-radius:10px;
		font-size: 100%;
		font-family: Poppins;
		background-color: #008B8B;
		color: white;
	}        
	.button{
		width: 100%;
		height: 30px;
		font-family: poppins;
		font-size: 20px;
		background-color: #008B8B;
		border-radius: 8px;
		color: white;
	}
@media screen and (min-width: 1250px){
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
		 font-size: 100%;
		 font-family: Poppins;
	}
}
	
</style>