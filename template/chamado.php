<?php  
        session_start();
        if(!isset($_SESSION['nome'])){ 
	   	header('location: ../adm/login.php ');
	}
 
?>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        
<nav>
	<div class="burguer">
		<div class="line1"></div>
		<div class="line2"></div>
		<div class="line3"></div>
	</div>
	<ul class="nav-links">
		<li>
			<a href="../public/index.php">Inicio</a>
		</li>
		<li>
			<a href="../public/abertura.php?id=1">Novo</a>
		</li>
		<li>
            <a href="../public/encerrado.php">Fechado</a>
        </ul>
	<div class="logo">
		<!--<h5>IpanemaFoods: Tecnologia </h5>-->
	</div>

</nav>
<div class="sessao">
	<?php
	  echo 'login :'. ucfirst($_SESSION['nome']);
	 ?>
        <a href="../adm/logout.php"> Sair</a>
</div>

<script src="../js/app.js"></script>
<script src="../js/busca.js"></script>

<style>
       .sessao{
        /*color: rgb(0, 51, 0);/*cor do logo*/
        color:green;
        text-transform: lowercase;
        letter-spacing: 1px;
        font-size: 14px;
        list-style: none;
        margin-left: 0px;
        text-align: center;
        }
@media screen and (min-width: 1024px){
       .sessao{
	/*color: rgb(0, 51, 0);/*cor do logo*/
	text-align: right;
	margin-right: 10px;
        }     
       
}
</style>



