<div class = "containerbutton">
	<div class = "novo">
		<a href="../public/abertura.php"><button class="button">Novo</button>
		</a>
	</div>
	<div class = "inicio">
		<a href="../public/index.php"><button class="button">Inicio</button>
		</a>
	</div>
	<div class = "fechado">
		<a href="../public/encerrado.php"><button class="button">Fechado</button>
		</a>
	</div>
</div>
<style>
	.containerbutton{

		display: inline-block;
		direction: column;
		/*background-color: lavender;*/
		text-align: right;
		width: 100%;
	}
	.novo{
		width: 20%;
		display: inline-block;
		direction: column;
		/*background-color: lightgreen;*/
		margin-left: 2px;
		text-align: center;
	}
	.inicio{
		width: 20%;
		display: inline-block;
		direction: column;
		/*background-color: lightblue;*/
		margin-left: 2px;
		text-align: center;
	}
	.fechado{
		width: 20%;
		display: inline-block;
		direction: column;
		/*background-color: gray;*/
		margin-left: 2px;
		text-align: center;
		margin-right: 10px;
	}
	.button{
		border-radius: 10px;
		padding: 2%;
		margin-bottom: 3px;
		align-items: center;
		width: 90%;
		font-size: 70%;
		background-color: lightblue;	
	}
@media screen and (min-width: 1024px){
		.containerbutton{
			display: none;
		}
	

}

</style>