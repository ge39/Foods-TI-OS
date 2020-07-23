<?php
	require_once('../persistence/controller.php');
	require_once('../template/main_template.php');
	$id = $_GET['id'];
?>
<div class="titulo">
	<p>REABRIR  CHAMADOS</p>
</div>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<div class="container">
	<?php foreach ($var_select as $row) {?>
		<form action="../persistence/crud.php" method="get">
			
			<!-- codigo editar-->
			<input type="hidden" name="code" value="7">
			<div class="id">
				<label>Id</label><br>
				<input class="input" type="text" name="id_chamado" value="<?php echo $row['id'];?>" readonly>
			</div>
			<div class="id">
				<label>Chamado</label><br>
				<input class="input" type="text" name="" value="<?php echo date('d/m/Y', strtotime($row['data_abertura_chamado']));?>" readonly>
			</div>
			<div class="loja">
				<label>Loja</label><br>
				<input class="input" type="text" name="loja"  value ="<?php echo $row['loja'];?>" readonly>
			</div>
			<div class="solicitante">
				<label>Solicitante</label><br>
				<input class="input" type="text" name="solicitante" value="<?php echo $row['solicitante'];?>" readonly>
			</div>
			<div class="tecnico">
				<label>Técnico</label><br>
				
				<select name="id_tecnico" required="">
					  <option ><?php echo $row['nome'];?></option>
					  <?php foreach ($var_tec as $tecnico) { ?>
					<option value ="<?php echo $tecnico['id'];?>"><?php echo $tecnico['nome'];?> 
						<?php } ?>
					</option>
				</select>
			</div>
			<div class="prioridade">
				<label>Prioridade</label><br>
				<input type="text" name="priore" value="<?php echo $row['prioridade'];?>">
				</div>
			<div class="status_chamado">
				<label>Status Chamado</label><br>
					<select name="status_chamado" required="">
					<option value="3">Pendente</option>
					<option value="1">Atendido</option>
					<option value="2">Em Atendimento</option>
					
				</select>
			</div>
			<div class="data">
				<label>Data Atual</label><br>
				<input class="input" type="text" name="atualizacao" value="<?php 
				date_default_timezone_set('America/Sao_Paulo');
				$date = date('d-m-Y H:i');
				echo $date;?>">
			</div>
			<div class="defeito_reclamado">
				<label>Defeito Reclamado</label><br>
				<textarea class ="input" rows="4" cols="5" name="defeito_reclamado"><?php echo trim($row['reclamado']);?></textarea>
			</div>
			<div class="avaliacao_tecnico">
				<label>Avaliação Técnica</label><br>
				<input class="input" type="text" name="avaliacao" maxlength="150" value= "<?php echo $row['avaliacao_tecnico'];?>">
			</div>
			<div class ="produto_util" >
				<p>Ìtens Utilizado no Chamado</p>
		       	<?php foreach ($var_utilizado as $util) { ?>
					<div class="resultado">
						<ul>
							<li>
								<?php echo"Item: ". $util['descricao'];?>
							</li>
							<li>
								<?php echo "Qtde: ".$util['qtde'];?>
							</li>
						</ul>
				 	</div>
				 <?php }?>	
			</div>
			<div class="mensagem">
				<label>Solução Técnica</label><br>
				<textarea class ="input" rows="4" cols="5" maxlength="150" name="solucao"><?php echo $row['solucao'];?></textarea>
			</div>
			<div class="pendencia">
				<label>Qual a Pendência</label><br>
				<input class="input" type="text" name="pendencia" placeholder="Pendenciacao técnica" maxlength="140" value = "<?php echo $row['pendencia'];?>">
			</div>
			
			<div class="botao_fechar">
				<input class = "button" type="submit" name=""  value="Reabrir Chamado">	
			</div>

		</form>
	<?php }?>

</div>
<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>

<style>
	.produto{
		display: inline-block;
		direction: column;

	}

	.item{
		display: inline-block;
		direction: column;
		background-color: lightgreen;
		width: 10%;
		padding:0 15px;

	}
	
	.produto_util{
		display: inline-block;
		direction: column;
		width: 98.5%;
		background-color: lightgreen;
		margin: -1px 5px;
		padding: 5px;

	}
	.utilizados{
		width: 95%;
	}
	.resultado{
		display: inline-block;
		direction: column;
		background-color: #ccffcc;
		width: 19.6%;
		padding:  1% 2.5%;
		margin: 0.1% 0;
		}
	.container{
		display: inline-block;
		width:99.5%;
		font-weight: bold;
		margin: -1px 5px;
		padding: 1px;
		border: solid 1px lightgray;
		font-family: Poppins;
		font-size: 14px;
	}
	.titulo{
		display: inline-block;
        justify-content: center;
		font-family: Poppins;
		background-color: #2E8B57;
		text-align: center;
		width: 98%;
		padding: 10px;
		height: 40px;
		margin: 10px 1%;
		letter-spacing: 5px;
		color: white;
	}
	.button_inserir{
		padding: 10px 25px;
		background: #009933;
		color: #FFF;
		font-family: poppins;
        border-radius:10px;

	}
	.button_remover{
		padding:10px 15px;
		margin-left: 30px;
		background: #ff3333;
		color: #FFF;
		font-family: poppins;
                border-radius:10px;
	}
	.botao_produto{
		display: inline-block;
		direction: column;
		margin: -45px 0;
		width: 100px;

	}
	.botao_r_produto{
		display: inline-block;
		direction: column;
		margin: -45px 120px;
		width: 100px;
		
	}
	.button{
		padding:5px 15px;
		width: 150px;
		background: #006400;
		color: #FFF;
        border-radius:10px;
	}
	.button2{
		padding:5px 15px;
		background: #ff3333;
		color: #FFF;
        border-radius:10px;
	}
	.botao_fechar{
		display: inline-block;
		width: 99%;
		background-color:#2E8B57; 
		padding: 10px;
		margin:  3px 4px;
		height:0 auto;
		text-align: right;
        border-radius:10px;
	}
	
	.id{
		display: inline-block;
		width:99%;
		background-color:#A9F5A9; 
		padding: 10px;
		margin:  3px 4px;
		height:0 auto;
	}
	.loja{
		display: inline-block;
		width:99%;
		background-color:#A9F5A9; 
		padding: 10px;
		margin:  3px 4px;
		height:0 auto;
	}
	.solicitante{
		display: inline-block;
		width: 99%;
		background-color:#A9F5A9; 
		padding: 10px;
		margin:3px 4px;
		height:0 auto;
		
	}
	.tecnico{
		display: inline-block;
		width:99%;
		background-color: #A9F5A9;
		padding: 10px;
		margin: 3px 4px;
		height:0 auto;
	}
	.prioridade{
		display: inline-block;
		width: 99%;
		background-color:#A9F5A9;
		padding: 10px;
		margin: 3px 4px;
		height:0 auto;
	}
	.status_chamado{
		display: inline-block;
		width: 99%;
		background-color:#A9F5A9;
		padding: 10px;
		margin: 3px 4px;
		height:0 auto;
	}
	.data{
		display: inline-block;
		width:99%;
		background-color:#A9F5A9; 
		padding: 10px;
		margin:  3px 4px;
		height:0 auto;
	}
	.defeito_reclamado{
		display: inline-block;
		width: 99%;
		background-color:#A9F5A9;
		padding: 10px;
		margin: 3px 4px;
		height:0 auto;
	}
	.mensagem{
		display: inline-block;
		width: 99%;
		background-color:#A9F5A9; 
		padding: 10px;
		margin:3px 4px;
		height:0 auto;
	}
	.avaliacao_tecnico
	{
		display: inline-block;
		width:99%;
		background-color:#A9F5A9; 
		padding: 10px;
		margin:  3px 4px;
		height:0 auto;
	}
	.pendencia{
		display: inline-block;
		width: 99%;
		background-color:#A9F5A9; 
		padding: 10px;
		margin:3px 4px;
		height:0 auto;
		
	}
	.estoque{
		display: inline-block;
		direction: column;
		width: 99.9%;
		background-color:#A9F5A9;
		padding: 5px;
		}
		
	.w3-container1{
		width: 100%;
	}
	.chamado{
		display: inline-block;
		width: 99%;
		background-color: #A9F5A9;
		padding: 10px;
		margin:3px 4px;
		height:0 auto;
	}
	.input{
		width: 100%;
		font-size: 15px;
	}
	
</style>