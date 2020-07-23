<?php
require_once('../template/adm_relatorio.php');
require_once('../persistence/mapa_atendi.php');
			date_default_timezone_set('America/Sao_Paulo');
			$data = date('d-m-Y');
?>
<div class="titulo">
		<p> RELATÓRIO DE ATENDIMENTO À LOJAS</p>
</div>

<div class = container>
	<!-- formulario -->
		<form class = "class-form" action="#"  method="">
			
			<div class="data">
				<label>Data Inicio</label>
				<input type="date"  name = "datain" value = "<?php echo date('Y-m-d',strtotime($data));?>">
					
			</div>
			<div class="data">
				<label>Data Fim</label>
				<input type="date"  name = "datafim" value = "<?php echo date('Y-m-d',strtotime($data));?>">
			</div>

			<div class="div-button">
				<input class ="button-pesquisa" type="submit" name = "" value="Pesquisar">
			</div>
		</form>
		
		<div class="container_atendimento">
			<H2>Total de atendimentos - Remoto e Externo</H2>
			 
			<?php foreach ($cont_atend as $row)  { ?>
				<?php $soma = 0 ;?>
				<div class="atendimento">
					<?php echo "Atendimento : ".$row['descricao'];?>
					 <?php echo $row['total']." Lojas";?>
					 <!-- <div class="link"><link><a href="">detalhes...</a></div> -->
				</div>
			<?php } ?>
	 		<!-- <hr> -->
		</div>
	
		
		<div class="container-tecnico">
			<H2>Total de atendimentos por tecnico</H2>
			<?php foreach ($var_tecncio as $tecnico)  { ?>
		
			<div class="tecnico">
				<?php echo "Tecnico : ".$tecnico['nome']."</br>";?>
			    <?php echo $tecnico['total']." Atendimentos";?>
			 	<div class="link_tecnico"><link>
			 	<a href="../relatorio/relatorio.php?code=1&datain=<?php echo $data1;?>&datafim=<?php echo $data2;?>&id_loja=0&id_tec=<?php echo $tecnico['id_tecnico'];?>&id_prod=0#">Detalhes...</a>
			 	</div>
			</div>
		
		<?php } ?>
 		<!-- <hr> -->
		</div>	
		<div class ="container-loja">
			<h2>Total de atendimentos por Lojas</h2>

			<?php foreach ($var_loja as $lojas)  { ?>	
				<div class ="loja">
					<?php echo "Loja : ".$lojas['loja']." - ";?>
				 	<?php echo $lojas['calc_loja']." Atendimentos";?>
				 	<?php echo date("d/m/Y ",strtotime($data1));?><?php echo " - ". date('d/m/Y',strtotime($data2));?>
				 	<div class="link"><link><a href="../relatorio/relatorio.php?code=1&datain=<?php echo $data1;?>&datafim=<?php echo $data2;?>&id_loja=<?php echo $lojas['id_loja'];?>&id_tec=0&id_prod=0#">Detalhes...</a></div>
				</div>
			<?php } ?>
		</div>
		
	<div>
		<!-- <p>Total equipamentos</p> -->
	</div>
</div>

<style>
	h2{
		font-family: Poppins;
		color:  #0033000
	}

	.container{
		width: 99%;
		padding:10px;
		border: solid 1px gray;
		background-color: none;
		display: inline-block;
		direction: column;
		margin: 0 0.5%;
	}
	.class-form{
		background-color: lavender;
		width: 100%;
		padding: 0 10px;
	}
	.container-tecnico{
		display: inline-block;
		direction: column;
		border: solid 1px gray;
		width: 100%;
		padding: 10px;
		
	}
	.tecnico{
		display: inline-block;
		direction: column;
		padding:2px 10px;
		border: solid lightgray 2px;
		background-color:#ccffcc;
		width: 255px;
	}
	.p{
		width: 100%;
		padding: 10px;
		/*font-family: Poppins;*/
		letter-spacing: 2%;
		font-size: 110%;
		color:green;
	}
	.titulo{
		margin:0 0.5%;
		font-weight: bold;
		font-family: Poppins;
		letter-spacing: 10px;
		color:white;
		background-color: #2E8B57;
		text-align: center;
		width: 99%;
		display: inline-block;
		direction: column;s
		height: 50px;
		padding: 3px 0;
	}
	.data{
		width: 11%;
		display: inline-block;
		direction: column;
	
	}
	.link{
		display: inline-block;
		direction: column;
		font-size: 16px;
		text-align: right;
		
	}
	.link_tecnico{
		display: inline-block;
		direction: column;
		font-size: 16px;
		text-align: right;
		
		/*height: 30px;*/
		/*margin: 2px;*/
		width: 100px;
		
	}
	.div-button{
		display: inline-block;
		direction: column;
	  	width: 120px;
	  	font-size: 18px;
	  	padding: 5px;
	  	text-align: right;
	  	margin-left: 870px;
	}
	.button-pesquisa{
		font-size: 18px;
		border-radius: 10px;
		background-color: #008B8B;
		color: white;
		width: 120px;
		height: 30px;
	}
	.container_atendimento{
		display: inline-block;
		direction: column;
		border: solid 1px gray;
		width: 100%;
		padding: 10px;
		margin: 5px 0;

	}
	.atendimento{
		display: inline-block;
		direction: column;
		padding: 5px 10px;
		background-color:#ccffcc;
		border: solid lightgray 2px;
		margin: 2px;
		width: 255px;
	}
	.container-loja{
		display: inline-block;
		direction: column;
		border: solid 1px gray;
		width: 100%;
		padding: 10px;
		margin: 5px 0;

	}
	.container-tecnico{
		display: inline-block;
		direction: column;
		font-size: 14px;
		border: solid gray 1px;
		padding: 10px;
		margin: 5px 0;
	}
	.loja{
		display: inline-block;
		text-align: center;
		font-size: 16px;
		direction: column;
		padding: 10px;
		background-color: #ccffcc;
		border: solid lightgray 2px;
		margin: 2px 0;
		width: 255px;
	}
	.tot_lojas{
		display: inline-block;
		direction: column;
		padding:5px 10px;
		background-color: lavender;
		border: solid black 2px;
		margin: 2px;
		width: 170px;
	}
	

	@media screen and(min-width: 1024px){
		.titulo{
			padding: 2px 10px;
			letter-spacing: 10px;
			font-size: 100%;
		}
		.p{
		width: 100%;
		/*padding: 10px;*/
		font-family: Poppins;
		letter-spacing: 2%;
		font-size: 110%;
		font-weight: bold;
	}
	.div-button{
		display: inline-block;
		direction: column;
	  	width: 120px;
	  	font-size: 18px;
	  	padding: 5px;
	  	text-align: right;
	  	margin-left: 870px;
	}

	
}
</style>