<?php
require_once('../template/main_template.php');
require_once('../persistence/controller.php');

?>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/encerrado.css">


<div class="container">
	<div class="header">
		<div class="H0">id</div>
		<div class="H1">Loja</div>
		<div class="H2">Defeito Reclamado</div>
		<div class="H3">Status</div>
		<div class="H4">Abertura</div>
		<div class="H8">Encerrado</div>
		<div class="H5">Prioridade</div>
		<div class="H6">Atribuido</div>
		<div class="H7">Editar Chamados</div>
	</div>
	<!--<form action="../public/reabrir_chamado.php" method="GET">-->
	      
	<?php foreach ($var_select_close as $row) {?>
	<div class="titulo">
		<p>CHAMADO ENCERRADO <?php echo "Nº ".$row['id'];?></p>
	</div>	

	<div style="border:solid 1px lightgray;">
	
		<div class="id">
			<?php echo '<div class="label">ID </div>'." ".$row['id'];?>
		</div>
		<div class="loja">
			<?php echo '<div class="label">Loja</div>'." ".$row['loja'];?>
		</div>
		<div class="defeito_reclamado" >
			<?php echo '<div class="label1">Defeito Reclamado </div>'." ".strtolower($row['reclamado']);?>	
		</div>
		<div class="status">
			<?php echo '<div class="label">Status</div>'." ".$row['descr'];?>
		</div>
		<div class="abertura">
			<?php echo '<div class="label">Chamado Aberto</div>'." ".date('d/m/Y', strtotime($row['data_abertura_chamado']));?>
		</div>
		<div class="abertura">
			<?php echo '<div class="label">Chamado Fechado </div>'." ".date('d/m/Y', strtotime($row['data_fecha_chamado']));?>
		</div>
		<div class="prioridade <?php echo $row['prioridade'];?>">
			<?php echo '<div class="label">Prioridade </div>'." ".strtolower($row['prioridade'])."<br>";
				echo "<style>";
				echo   ".prioridade.alta ";
				echo   ".prioridade.normal";
				echo   ".prioridade.media";
				echo "</style>";
			?>
		</div>
		<div class= "atribuido">
                       	<?php echo '<div class="label">Atribuido para </div>'." ".$row['nome']."<br>";?>
		</div>
		<div class= "edicao">
				<div class="link2">
					<!--<form action="../public/reabrir_chamado.php" method="GET">-->
                                         <form action="../persistence/crud.php" method="GET">
						<input type="hidden" name="id_chamado" value= '<?php echo $row['id'];?>'>
                                                <input type="hidden" name="code" value="7">
						<input type="submit" class="button-link2" value="Reabrir Chamado">
					</form>
				</div>
		</div>
		<!--<ul class="line">
		     <li style="list-style-type: none;">
		     	<hr style="height:2px;width: 100%; border:none; color:#000; background-color:#000; margin-top: 0px; margin-bottom: 0px;"/>
		     </li>
		</ul>-->
	</div>
<?php }?>
</div>

<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>
