<?php
session_start();
//require_once('../template/adm_template.php');
require_once('../conexao/conexao.php');
 //echo 'inicio'.'<br>';
$email = $_POST['email'];
$senha = sha1($_POST['senha']);
 
//validar se usuario tem acesso
$valida = $pdo->prepare("Select  id,email , senha,nome From tecnico where email = :m");
$valida->bindValue(":m", $email);
$valida->Execute();
	//echo '<br>'.'lendo o banco';
?>
<?php foreach ($valida as $var) {
	$var['email'];
	$var['senha'];
	$var['nome'];
	//'<br>'.'result  do banco';

}if($email != $var['email'] or $senha != $var['senha']){
	$_SESSION['msg'] = "usuario ou email incorretos";
	header('Location: ../adm/login.php');
}else{
	$_SESSION['id']= $var['id'];
        $_SESSION['nome'] = $var['nome'];
	$_SESSION['email'] = $var['email'];
	$_SESSION['psw'] = $var['senha'];
	$_SESSION['msg'] = '';
	header('location: ../public/index.php');
}