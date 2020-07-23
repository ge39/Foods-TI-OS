<?php  
        session_start();
        if(!isset($_SESSION['nome'])){ 
	   	header('location: ../adm/login.php ');
	}

    if (empty($_SESSION)) session_start();

    if (empty($_SESSION['lastAccess'])) $_SESSION['lastAccess'] = time();
    else {
        $_SESSION['lastAccess'] -= time();
    }

    if ($_SESSION['lastAccess'] > time()+5) {
        session_destroy();
        echo('session timeout');
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
                <a href="../public/abertura.php?id=1">Chamado</a>
         </li>
		
         <li>
        	   <a href="../template/adm_template.php">Cadastro</a>
        </li>
        <li>
		      <a href="../template/adm_relatorio.php">Relatorio</a>
	    </li>
         <li>
                <a href="../grafico/grafico_lojas.php">Grafico</a>
         </li>
         <li>
                <a href="../adm/loja.php?cad=Loja#abrirModal">Fone</a>
        </li>
        <li>
                <a href="../adm/conhecimento.php?code=1&material=0#">Conhecimento</a>
        </li>
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



