<?php
session_start();

#require_once('..\template\main_template.php');
//Botao enviar
/*
if(isset($_POST['btn-click'])):
	SESSION_START();
	$_SESSION['nome'] = 'logado por :'.ucfirst('jeremias');
	$_SESSION['email'] = 'ge39.medeiros@gmail.com';
	$_SESSION['psw'] = '7c4a8d09ca3762af61e59520943dc26494f8941b';
	//echo $_SESSION['email'] .'<br>';
	//echo $_SESSION['psw'] .'<br>';

endif;
*/

?>

<link rel="stylesheet" type="text/css" href="../css/style.css">
<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
<script src="../js/app.js"></script>


<div id="divFlutuante">
	<div>
		<p class="par">CADASTRE SUA NOVA SENHA</p>
		<form action="../persistence/crud.php" method="GET">
			<div class="label"><label>Matricula</label></div>
			<div class="divFlutuante">
				<input type="text" name="matricula" maxlength="10" placeholder="Digite sua matricula" required="">
				<input type="hidden" name="code" value="9">
			</div>

			<div class="label"><label>Senha</label></div>
			<div class="divFlutuante">
				<input type="password" name="senha" maxlength="8" placeholder="" required="">
			</div>

			<div class="label"><label>Repita a Senha</label></div>
			<div class="divFlutuante">
				<input type="password" name="senha2" maxlength="8" placeholder="" required="">
			</div>
			<button class="button" type="submit" name = 'btn-click' value="Submit">Enviar</button>
		</form> 
	</div>
	<br />
	<a class="link" href="#" onclick="document.getElementById('divFlutuante').style.display='none';">Fechar</a>

	<br />
	   
</div>

<div class="container">
	<div class="header">.</div>
		<p>Login</p>
		<form action="../adm/valida.php" method="POST">
                    <div class=" campos">
                        <input type="text" name="email" required = "" placeholder="informe seu login">
                    </div>
                    <div class=" campos">
                        <input type="password" name="senha" maxlength="8" required = "" placeholder="informe sua senha">
                    </div>
                    <?php
	                    if(!isset($_SESSION['nome'])){
	                    	//echo $_SESSION['msg'];
							'<div class = "msg"></div>';
							}else{
								header('location: ../public/index.php');
						}
					?>
                    <button class="button" type="submit" name = 'btn-click' value="Submit">Enviar</button>
                    <div class = "sessao">
                    	<?php if(!empty($_SESSION['msg'])) { ?>
                    		<?php echo $_SESSION['msg'];
                    	//unset($_SESSION['msg']);
                        ?>
                    	<?php } ?>	
                    </div>
        </form>
        <div class="footer">
                <!--<a href="../adm/senhacadastro.php">Cadastrar</a>-->
				<a href="#" onclick="document.getElementById('divFlutuante').style.display='block';">Cadastrar-me</a>
                <a href="">esqueci a senha</a> 
        </div>
        <div class="titulo">FoodsTI-Tecnologia da Informação e Comunicação</div>
</div>

<style>
	.sessao{
		text-align: center;
		color:red;
		font-size: 14px;
		width: 100%;
		padding: 0 10px;
	}
	.Par{
		margin-top: 20px;
		padding: 10px 0;
		font-size: 48px;
	}
	#divFlutuante{
		display: inline-block;
		direction: column;
		font-size: 70px;
		width: 100%;
		height: 1460px;
		padding: 100px;
		margin: 10% 5%;
		background-color: white;
		border-style: groove;
		display: none;
		position: absolute;
		z-index: 3;
		opacity: 1.0;
	}
	.divflutuante{
		display: inline-block;
		direction: column;
		width: 100%;	
	}
	.div-button{
		margin: 0 auto;
		display: inline-block;
		direction: column;
		width: 20%;
	}
	.titulo{
		color:lightgray;
		font-size: 38px;
		padding:  0;
	}
	.msg{
		margin:1% 35%;
		color:red;
	}
	a:link{
		text-decoration: none;
	}
	p{
		font-family: poppins;
		 font-size:120px;
		 text-align: center;
         padding:0 0 10%;
	}
	.header{
		padding: 1% 0;
		margin-bottom:  15%;
		/*background-color:#008B8B;*/
		font-family: verdana;
		text-align: left;
		width: 100%
	}
	.campos{
		padding: 2% 0;
           
	}
	input[type = text]{
		width: 100%;
        font-size:60px;
		font-family: poppins;
        background-color:lavender;
     }
	input[type = password]{
		width: 100%;
		font-size: 60px;
		font-family: poppins;
         background-color:lavender;
           
	}
		
	.container{
		margin: 20% 5%;
		width: 100%;
		padding: 2% 10px 0px;
		display: inline-flex;
		flex-direction: column;
		border: solid #008B8B 1px;
		text-align: center;		
	}
	.interno{
		margin-top: 0px;
		padding: 0px;
		width: 100%;
    }
    
	.button {
	  margin: 20% 0 10% ;
	  margin-bottom: 0;
	  padding: 30px 42%;
	  border-radius: 8px;
	  background-color: #008B8B;
	  border: none;
	  color: white;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 50px;
	}
	.button1 {
	  margin: 20% 0 10% ;
	  margin-bottom: 0;
	  width: 250px;
	  padding: 30px 0;
	  border-radius: 8px;
	  background-color: #008B8B;
	  color: white;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 50px;
	}
    .footer{
     font-family: poppins;
     font-size:60px;
     padding: 10px;
     word-spacing: 20px;
}
@media screen and (min-width: 1024px){
	.Par{
		font-size: 14px;
	}
	#divFlutuante{
		font-size: 30px;
		width: 30%;
		height: 410px;
		padding: 2% 10px;
		margin: 8% 35%;
		position: absolute;
		z-index: 2;
		
	}
	.divflutuante{

		display: inline-block;
		direction: column;
		width: 100%;	
	}
	.button {
	  margin: 20% 0 10% ;
	  margin-bottom: 0;
	  padding: 50px 42%;
	  border-radius: 8px;
	  background-color: #008B8B;
	  border: none;
	  color: white;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 50px;
	}
	.button1 {
	  margin: 20% 0 10% ;
	  margin-bottom: 0;
	  width: 150px;
	  padding: 10px 0;
	  border-radius: 8px;
	  background-color: #008B8B;
	  color: white;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 20px;
	}
	.link{
		font-size: 14px;
	}
	.titulo{
		font-size: 14px;
		padding:  0;
	}
	p{
		font-family: poppins;
		 font-size:100px;
		 text-align: center;
         padding:0 0 10%;
	}
	.container{
		margin: 8% 35%;
		width: 30%;
		padding:  0 2%;
		border: solid #008B8B 1px;
		height: 65%;
	}
	.header{
		margin-bottom:  -25px;

	}
	.button{
		padding: 10px 32%;
		font-size: 14px;
		margin:20px 10%;
	}
	.footer{
		font-size: 14px;
	}
	input[type=text]{
		font-size: 14px;
	}
	input[type = password]{
		font-size: 14px;
	}
}	 
</style>
