<?php

//$host = "fdb22.awardspace.net";
//$username = "3156816_servicodb";
//$pass  = "Crw671500";
//$dbname = "3156816_servicodb";
// $host = "sql213.epizy.com";
// $username = "epiz_25831377";
// $pass = "EjJC3SLyqD";
// $dbname = "epiz_25831377_servico_db";
$host = "localhost";
$username = "root";
$pass = "root";
$dbname = "servico_db";

try{
	$pdo = New pdo("mysql:host=$host;charset=utf8;dbname=".$dbname,$username,$pass);

}catch(PdoException $e)
{
	die('Não foi possivel se conectar ao banco'.$e->getMessage());
}