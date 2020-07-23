<?php
	session_start();
	if (!isset($_SESSION['nome'])){ 
	  	header('location: ../adm/login.php');
	}
?>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">

<nav>
	<div class="burguer">
		<div class="line1"></div>
		<div class="line2"></div>
		<div class="line3"></div>
	</div>
	<ul class="nav-links">
		<li>
			<a href="../adm/loja.php?cad=Loja">Loja</a>
		</li>
		<li>
        	<a href="../adm/funcionario.php?cad=Funcionarios">Tecnico</a>
        </li>
        <!--<li>
        	--<a href="../adm/fornecedor.php?cad=Fornecedor">Fornecedor</a>
        </li>-->
        <li>
			<a href="../adm/produto.php?cad=Produto">Produto</a>
		</li>
		
        <li>
			<a href="../public/index.php" target="_self">Voltar</a>
		</li>
	</ul>
	<div class="logo">
		<!--<h5>IpanemaFoods: Tecnologia </h5>-->
		
	</div>
</nav>
<div class="sessao">
	<?php
	   	echo 'login :'. $_SESSION['nome'];
	?>
 	<a href=".././adm/logout.php"> Sair</a>

</div>
<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>
<style>
	.burguer{
		display: block;
		margin: -150px;	
</style>

