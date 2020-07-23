<?php 
	require_once('../template/adm_template.php');
	require_once('../persistence/conhecimento.php');
		
?>

<link rel="stylesheet" type="text/css" href="../css/conhecimento.css">
<div class="titulo">Base de Conhecimento</div>

<div class="container">
	<div class="busca">
		<form action = "#" method="GET">
			<input type="hidden" name="code" value= "1">
			<select name="material">
				<?php foreach ($sql as $row) { ?>	
					<option  value = "<?php echo $row['id_equip'];?>"><?php echo $row['desc_equip'];?></option>
				<?php } ?>
	     	</select>
		
		<div class="botao">
					<input class="button" type="submit" name="" value="Pesquisar">
				</form>
		</div>
	</div>
	<div class="esquerda">
		<?php foreach ($equip as $tools) { ?>
			<p> Id : <?php echo $tools['id'];?></p>
		    <p>Item : <?php echo $tools['desc_equip'];?></p>
			<p style="color: red;">Reclamado : <?php echo ucfirst($tools['reclamado']);?></p>
			<p>Avaliação : <?php echo $tools['avaliacao_tecnico'];?></p>
		 
		  <div > 
		    <p style="background-color: DarkSlateGray;color: white;margin: 5px 0;padding: 5px;" > Solucao: <?php echo ucfirst($tools['descricao']);?></p>
		    <!-- <hr style="margin: 5px -1px;"> -->
			<?php } ?>	
		</div>
	</div>
</div>