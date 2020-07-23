<?php
require_once('../template/adm_relatorio.php');

			date_default_timezone_set('America/Sao_Paulo');
			$dados = date('d-m-Y');
			echo $dados;


?>
<div class="titulo">
		<p> RELATÓRIO DE ATENDIMENTOS</p>
</div>

<div class = container>
	<div class="data">
		<label>Data Inicio</label>
		<input type="date" max="<?php echo $dados; ?>" value="2000-01-01" >
	</div>
	<div class="data">
		<label>Data Fim</label>
		<input type="date"  value="<?php echo $dados; ?>" >
	</div>
</div>


<style>
	.container{
		width: 99%;
		padding:10px;
		background-color: lavender;
		display: inline-block;
		direction: column;
		margin:0.5% 0.5%;
	}
	.titulo{
		margin:0 0.5%;
		font-weight: bold;
		font-family: Poppins;
		background-color: #2E8B57;
		text-align: center;
		width: 99%;
		height: 50px;
		padding: 10px 0;
		letter-spacing: 10px;
	}
	.data{
		width: 11%;
		display: inline-block;
		direction: column;
		
	}
</style>