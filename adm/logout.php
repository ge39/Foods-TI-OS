<?php
session_start();
	if(isset($_SESSION['nome'])){
		unset($_SESSION["nome"]); 
		unset($_SESSION['email']);
		header('location: ./login.php');
	}
	else{
		echo '<a href="./login.php">Logar</a>';
	}
?>