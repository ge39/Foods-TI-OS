<?php
require_once('../template/adm_relatorio.php');
require_once('../persistence/rel_atores.php');// chamados por dados do tecnico / loja 
require_once('../persistence/select_report.php');

	date_default_timezone_set('America/Sao_Paulo');
	$dados = date('d-m-Y');
?>
<header>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../css/relatorio.css">
</header>

<div class="titulo">
	<p class="p"> RELATÓRIO DE ATENDIMENTOS</p>
</div>

<div class = container>
<!--../persistence/select_report.php-->
<form action="#" method="GET">
        <input type = "hidden" name="code" value = "1">
	<div class="data">
		<div class="label_data"><label>Data Inicio</label></div>
		<input type="date" value="<?php echo date('Y-m-d',strtotime($dados)) ?>" name="datain" >
	</div class="label">
	
	<div class="data">
		<div class="label_data"><label>Data Fim</label></div>
		<input type="date" value="<?php echo date('Y-m-d',strtotime($dados)) ?>" name="datafim">
	</div>
		
	<div  class="div-loja">
		<div><label>Loja</label></div>
		<select class="div-select" name = "id_loja">
                
			<option value = "0">Todos...</option>
                        
			<?php foreach ($loja_chamado as $lojas) { ?>
			<option value="<?php echo $lojas['id_loja'];?>"><?php echo $lojas['loja'];?></option>
			<?php } ?>
		</select>		
	</div>

	<div class="div-loja">
		<div ><label>Técnico</label></div>
		<select class="div-select" name = "id_tec">
        	<option value="0">Todos...</option>
                <?php foreach ($tec_chamado as $row_tec) { ?>	
                        <option value="<?php echo $row_tec['id_tecnico'];?>"><?php echo $row_tec['nome_tecnico'];?></option>
                <?php } ?>					
		</select>
	</div>
	<div class="div-loja">
		<div><label>Equipamento</label></div>
		<select class="div-select" name = id_prod>
			<option value = "0">Todos...</option>
			<?php foreach ($estoque as $lista) { ?>
				<option value = "<?php echo $lista['id_equip'];?>">
			<?php echo $lista['desc_equip']; echo " ( ". $lista['total']." )";?>
     			</option>
			<?php } ?>
		</select>	
	</div>
       
</div>		
	<div class="btn-enviar">
       <input class="botao-enviar" type="submit" name=""Value="Pesquisar">
	 <!--<button class="botao-enviar" >Buscar</button>-->
	</div >
</form>
<div class ="relatorio">
        <div class="id" style="font-weight: bold">ID</div>
        <div class="loja"style="font-weight: bold">Loja</div>
        <div class="abertura"style="font-weight: bold">Aberto</div>
        <div class="tecnico"style="font-weight: bold">Tecnico</div>
        <div class="data_abertura"style="font-weight: bold">Data Inicio</div>
        <div class="Item"style="font-weight: bold">Item</div>
        <div class="reclamado"style="font-weight: bold">Solicitação</div>
        <div class="data_fecha"style="font-weight: bold">Data Fim</div>
        <div class="sla"style="font-weight: bold">ATD</div>
        <div class="solucao"style="font-weight: bold">Solução</div>
</div>

<div class ="relatorio">
      <?php foreach($data_chamados as $row) { ?>
        <div class="id"><a href="../public/reabrir_chamado.php?id=<?php echo $row['id'];?>"><?php echo $row['id'];?></a></div>
        <div class="loja"><?php echo strtoupper($row['loja']);?></div>
        <div class="abertura"><?php echo $row['abertura'];?></div>
        <div class="tecnico"><?php echo $row['tecnico'];?></div>
        <div class="data_abertura"><?php echo date ('d/m/Y H:i',strtotime($row['data_abertura_chamado']));?></div>
        <div class="item"><?php echo strtolower($row['desc_equip']);?></div>
        <div class="reclamado"><?php echo strtolower($row['reclamado']);?></div>
        <div class="data_fecha"><?php if (!empty( $row['data_fecha_chamado'])) {echo date('d/m/Y H:i',strtotime($row['data_fecha_chamado']));} else { echo'00-00-0000';}?></div>
         <div class="sla"><?php echo $row['descricao'];?></div>
        <div class="solucao">
            	<!-- <button style="font-size: 10px;font-stretch: bold;color: white; background-color:olive;border-radius: 10px; width: 90%" onclick="document.getElementById('id01').style.display='inline-block'">Visualizar</button> -->

       <a href="#abrirModal<?php echo $row['id']; ?>" data-toggle="modal" data-target="#abrirModal<?php echo $row['id']; ?>"><button type ="button" class="botao-enviar" onclick="document.getElementbyid('id01') .style.display='inline-block'">Visualizar</button>
        </div>
     
<!-- Modal -->
	<div class="modal" id="abrirModal<?php echo $row['id']; ?>" id="abrirModal<?php echo $row['id']; ?>" >
	 <!-- <div class="modal fade" id="Modal<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="abrirModalLabel"> -->
 		 <a href="#fechar" title="Fechar" class="fechar">x</a>
	   	<div class="header-modal">

	  		<!-- <a href="#fechar"><button type ="button" class="botao-cancela">Cancelar</button></a> -->
	  			<H2> <?php echo "Solução Chamado: ". $row['id']; echo "   Loja: ". $row['loja']; ?></H2>
	    </div>
	     <div>
	  	<div class="conteudo">
	  			<textarea style="width: 100%;height: 100%;font-size: 14px ; padding: 10px" ><?php echo $row['solucao']; ?></textarea></div>
	  	</div>
	     <div class = "footer-modal">
	     	<H2> <?php echo "Técnico: ". $row['tecnico']; echo " - Data: ". date('d/m/Y',strtotime($row['data_fecha_chamado'])); echo  " - ATD ".$row['descricao']; ?></H2>
	     </div>   		  
	</div>
<!-- fim modal -->

 <?php }?>
  
 </div>  

