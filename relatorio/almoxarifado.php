<?php
if (!isset($_SESSION['nome'])){ 
	  	
}
require_once('../template/adm_relatorio.php');
require_once('../persistence/rel_atores.php');
/*require_once('../persistence/select_report.php');*/
/*
	date_default_timezone_set('America/Sao_Paulo');
	$dados = date('d-m-Y');
	echo $dados;
*/
?>


<div class="titulo">
	<p class="p"> MATERIAIS UTILIZADOS EM ATENDIMENTOS</p>
</div>
<div class="header">
	<div class="tecnico"><label>Tecnico</label></div>
	<div class="loja"><label>Loja</label></div>
	<div class="desc"><label>Descricao</label></div>
	<div class="qtde"><label>Qtde</label></div>
	<div class="valor"><label>Valor</label></div>
	<div class="data"><label>Data</label></div>
</div>


<!-- Modal -->
<div id="abrirModal" class="modal">
  <a href="#fechar" title="Fechar" class="fechar">x</a>
   <div class="footer-modal">
  		 <h4>Baixa Estoque</h4>
        <div class="paragrafo"> OBS: Antes de clicar no botão continuar, certifique - se que a relação dos materiais foram enviadas para o Sr.Antonio dar baixa no estoque</div>
        <a href="#fechar"><button type ="button" class="botao-cancela">Cancelar</button></a>
        
        <form action="../persistence/update_report.php" method="GET">
                <input type="hidden" name="code" value="0">
                <input type="hidden" name="id_tecnico" value="<?php echo $varid;?>">	
                <input type ="submit" class="botao-baixa" value = "Continuar">
        </form>
	  
   </div>
  </div>
<div class = container>
		<?php foreach ($almox as $row) { ?>
			<div class="conteudo-nome">
				<?php echo $row['nome'];?>
			</div>
			<div class="conteudo-loja">
				<?php echo $row['loja'];?>
			</div>
			<div class="conteudo-descricao">
				<?php echo $row['item'];?>
			</div>
			<div class="conteudo-qtde">
				<?php echo $row['total'];?>
			</div>
			<div class="conteudo-valor">
				<?php echo $row['soma'];?>
			</div>
			<div class="conteudo-data">
				<?php echo $row['data_fecha_chamado'];?>
			</div>
		<?php } ?>
</div>
<!-- Botão para acionar modal -->
<div class="footer">
	<a href="#abrirModal">
		<button type ="button" class="botao-enviar">Dar Baixa</button>
	</a>
</div>

<style>
	.modal {
	  position: fixed;
	  top: 0;
	  right: 0;
	  bottom: 0;
	  left: 0;
	  width: 100%;
	  height: 90%;
	  margin: 68px  0px;
	  font-family: Arial, Helvetica, sans-serif;
	  background: seashell;
	  z-index: 2;
	  opacity:0;
	  -webkit-transition: opacity 400ms ease-in;
	  -moz-transition: opacity 400ms ease-in;
	  transition: opacity 400ms ease-in;
	  pointer-events: none;
	}
	.modal:target {
	  opacity: 1;
	  pointer-events: auto;
	}
	.modal > div {
	 
	}
	.paragrafo{
		display: inline-block;
		direction: column;
		font-family: Poppins;
		text-align: center;
		padding: 20px;
		margin: 10px;
		color: red;
	}
	.fechar {
	  position: absolute;
	  width: 30px;
	  right: -15px;
	  top: -5px;
	  text-align: center;
	  line-height: 30px;
	  margin-top: 5px;
	  background: #ff4545;
	  border-radius: 50%;
	  font-size: 16px;
	  color: #8d0000;
	  margin: 0 10%;
	}
	.footer-modal{
		display: inline-block;
		direction: column;
		width: 100%;
		padding: 10px;
		
	}
	.botao-baixa{
		font-family: Poppins;
		display: inline-block;
		direction: column;
		width: 30%;
		margin: -34px 50%;
		border-radius: 10px;
		font-size: 14px;
		padding: 5px 10px;
		background-color:#00BFFF;
		color: white;
	}
	.botao-cancela{
		font-family: Poppins;
		display: inline-block;
		direction: column;
		width: 30%;	
		border-radius: 10px;
		font-size: 14px;
		margin: 0 10%;
		padding: 5px 10px;
		background-color:#FF4500; 
		color: white;
	}
	.titulo{
		padding: 2px;
		letter-spacing: 10px;
		font-size: 50%;
		font-weight: bold;
		text-align: center;
		font-family: Poppins;
		color: white;
		background-color: #2E8B57;
		
	}
	.header{
		display: inline-block;
		direction: column;
		width:100%;
		padding: 2px 10px ;
		margin:  2px 5px ;
		font-family: Poppins;
		font-size: 10px;
	}
	.tecnico{
		display: inline-block;
		direction: column;
		margin: 0px;
		width: 14.5%;
		font-size: 10px;
		}

	.loja{
		display: inline-block;
		direction: column;
		margin: 0px;
		width: 9%;
		font-size: 10px;
		}
		.desc{
		display: inline-block;
		direction: column;
		width: 22.5%;
		font-size: 10px;
		}
		.qtde{
		display: inline-block;
		direction: column;
		width: 9%;
		font-size: 10px;
		}
		.valor{
		display: inline-block;
		direction: column;
		width: 13%;
		font-size: 10px;
		}
		.data{
		display: inline-block;
		direction: column;
		width: 10%;
		font-size: 10px;
		}

	.container{
		width: 100%;
		padding:0 10px 5px;
		background-color: white;
		display: inline-block;
		direction: column;
		font-family: Poppins;
		font-size: 10px;
	}
	.conteudo-nome{
		display: inline-block;
		direction: column;
		width: 17%;
		font-family: Poppins;
		margin: 2px 0;
		padding: 0 2px ;
		font-size: 10px;
	}
	.conteudo-loja{
		display: inline-block;
		direction: column;
		width: 10%;
		font-family: Poppins;
		margin: 2px 0;
		padding: 0 2px ;
		font-size: 100%
	}
	.conteudo-descricao{
		display: inline-block;
		direction: column;
		width: 26%;
		font-family: Poppins;
		margin: 2px 0;
		padding: 0 2px ;
		font-size: 100%
	}
	.conteudo-qtde{
		display: inline-block;
		direction: column;
		width: 9%;
		font-family: Poppins;
		margin: 2px 0;
		padding: 0 2px ;
		font-size: 100%
		background-color:lavender;
	}
	.conteudo-valor{
		display: inline-block;
		direction: column;
		width: 14%;
		font-family: Poppins;
		margin: 2px 0;
		padding: 0 2px ;
		font-size: 100%
	}
	.conteudo-data{
		display: inline-block;
		direction: column;
		width: 16%;
		font-family: Poppins;
		margin: 2px 0;
		padding: 0 2px ;
		font-size: 100%
	}
	.footer{
		display: block;
		background-color: #2E8B57;
		margin: 0 12px;
		padding: 5px;
	}
	.footer-modal{
		width: 100%;
		margin: 50px 0;
	
	}
	.botao-enviar{
		 width: 50%;
		 display: inline-block;
		 margin: 0 160px;
		 direction:column;
		 border-radius:10px;
		 font-size: 100%;
		 font-family: Poppins;
		 background-color: #008B8B;
		 color: white;
		 padding: 2px;
	}
@media only screen and (min-width: 1024px){
	.modal {
	  position: fixed;
	  top: 0;
	  right: 0;
	  bottom: 0;
	  left: 0;
	  width: 100%;
	  margin: 0;
	  border:solid lightgray 1px;
	  font-family: Arial, Helvetica, sans-serif;
	  background: seashell;/*rgba(0,0,0,0.8);*/
	  z-index: 2;
	  opacity:0;
	  -webkit-transition: opacity 400ms ease-in;
	  -moz-transition: opacity 400ms ease-in;
	  transition: opacity 400ms ease-in;
	  pointer-events: none;
	}
	.modal:target {
	  opacity: 1;
	  pointer-events: auto;
	}
	.modal > div {
	  /*width: 400px;*/
	  /*position: relative;*/
	  /*margin: 10% auto;*/
	  /*padding: 15px 20px;*/
	  /*background: #fff;*/
	}
	.paragrafo{
		display: inline-block;
		direction: column;
		font-family: Poppins;
		text-align: center;
		padding: 20px;
		margin: 10px;
		color: red;
	}
	.fechar {
	  position: absolute;
	  width: 30px;
	  right: -15px;
	  top: -5px;
	  text-align: center;
	  line-height: 30px;
	  margin-top: 5px;
	  background: #ff4545;
	  border-radius: 50%;
	  font-size: 16px;
	  color: #8d0000;
	  margin: 0 10%;
	}
	.footer-modal{
		display: inline-block;
		direction: column;
		width: 50%;
	  	height: 50%;
	  	margin: 80px 300px ;
	  	border:solid lightgray 1px;
		
	}
	.botao-baixa{
		font-family: Poppins;
		display: inline-block;
		direction: column;
		width: 30%;
		margin: -34px 350px;
		border-radius: 10px;
		font-size: 14px;
		padding: 5px 10px;
		background-color:#00BFFF;
		color: white;
	}
	.botao-cancela{
		font-family: Poppins;
		display: inline-block;
		direction: column;
		width: 30%;	
		border-radius: 10px;
		font-size: 14px;
		margin: 0 10%;
		padding: 5px 10px;
		background-color:#FF4500; 
		color: white;
	}
	.container{
		font-size: 18px;
                width:90%;
	}
	.tecnico{
		font-size: 18px;
		}

	.loja{
		font-size: 18px;
		}
	.desc{
		font-size: 18px;
		}
	.qtde{
		font-size: 18px;
		}
	.valor{
		font-size: 18px;
		}
	.data{
		font-size: 18px;
		}

	.conteudo-nome{
		font-size: 18px;
	}
	.header{
		font-size: 18px;
	}
	.titulo{
		padding: 10px;
		font-size: 100%;
		background-color: #2E8B57;
		margin: 0 12px;
	}
	.footer{
		display: block;
		background-color: #2E8B57;
		margin: 0 12px;
		padding: 5px;
	}
	.botao-enviar{
		 width: 10%;
		 display: inline-block;
		 margin: 0 90%;
		 direction:column;
		 border-radius:10px;
		 font-size: 100%;
		 font-family: Poppins;
		 background-color: #008B8B;
		 color: white;
		 padding: 2px;
	}
	
}
</style>