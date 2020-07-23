   <?php 
    include('../template/grafico.php');
    include_once('../persistence/grafico.php');

    date_default_timezone_set('America/Sao_Paulo');
      $dados = date('d-m-Y');
      
   ?>
      
     
 <html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['Regiao', 'Total'],
          <?php foreach ($var_regiao as $regiao) { ?>
            ['<?php 
               if ($regiao['regiao'] == 'C'){
                  echo "Centro";
                }if ($regiao['regiao'] == 'L'){
                  echo "Z.Leste";
                }if ($regiao['regiao'] == 'N'){
                  echo "Z.Norte";
                }if ($regiao['regiao'] == 'S'){
                  echo "Z.Sul";
                }if ($regiao['regiao'] == 'O'){
                  echo "Z.Oeste";
                }if ($regiao['regiao'] == 'I'){
                  echo "Interior";
                };?>', <?php echo $regiao['total'];?>,],
         <?php } ?>
        ]);

        var options = {
          title: 'Chess opening moves',
          width: 950,
          legend: { position: 'none' },
          chart: { title: 'Total de atendimentos por regiao',
                   subtitle: '' },
          bars: 'vertical', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'botton', label: 'Total de atendimentos'} // Top x-axis.
            }
          },
          bar: { groupWidth: "20%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        chart.draw(data, options);
      };
    </script>
  </head>
  <body>
          <div class = "container">
        <form action="#" method="">
        <div class="dataini">
            <label class="label_data">Data Inicio</label><br>
           <input class="input_data" type="date" value="<?php echo date('Y-m-d',strtotime($dados)) ?>" name="datain" >
        </div>
          
        <div class = "datafim">
           <label class="label_data">Data Fim</label></br>
          <input  class="input_data" type="date" value="<?php echo date('Y-m-d',strtotime($dados)) ?>" name="datafim">
        </div>
        <div class="btn-enviar">
            <input class="botao-enviar" type="submit" name=""Value="OK">
           <!--<button class="botao-enviar" >Buscar</button>-->
        </div >
        </form>
      </div>
      <div style="color: gray;font-size: 14px;">
            <?php echo "Periodo apuração ".date('d/m/Y', strtotime($data1))." A ";?>
            <?php echo date('d/m/Y', strtotime($data2));?>

      </div >
      <div class = "resultado">
          <?php foreach ($var_total_loja as $total) { ?>
               <?php echo  $total['calc_loja']." atendimentos"." - ";?>     
          <?php } ?>

         <?php foreach ($var_qtde_loja as $qtde) { ?>
            <?php echo  $qtde['calc_loja']." lojas atendidas";?>     
               
          <?php } ?>
      </div>

      <div id="top_x_div" style="width: 1400px; height: 400px;"></div>
      
       <div class="resultado1">
        <?php foreach ($var_regiao_total as $regiao) { ?>
             <div class="nome"><?php 

              // echo $regiao['regiao'];
                if ($regiao['regiao'] == 'C'){
                  echo "Centro";
                }if ($regiao['regiao'] == 'L'){
                  echo "Leste";
                }if ($regiao['regiao'] == 'N'){
                  echo "Norte";
                }if ($regiao['regiao'] == 'S'){
                  echo "Sul";
                }if ($regiao['regiao'] == 'O'){
                  echo "Oeste";
                }if ($regiao['regiao'] == 'I'){
                  echo "Interior";
                }
                ?>      
             </div>
             <div class="total"> <?php echo $regiao['total'];?> </div>
        <?php } ?>
         
      </div>
  </body>
  <style>
    #top_x_div{
      width: 1000px; height: 350px;
    }
    .container{
      display: inline-block;
      direction: column;
      width: 99%;
      padding:10px 0;
      background-color: lavender;
      margin:0.5% ;
    }
    .label_data{
      padding: 0 10px;
    }
     .dataini{
      width: 125px;
      display: inline-block;
      direction: column;
      margin:0;
    }
    .datafim{
      display: inline-block;
      direction: column;
      width: 123px;
    }
    .input_data{
     width:110px;
     font-size: 12px;
     margin: 0 10px;
    }
    .btn-enviar{
     display: inline-block;
     direction:column;
     width: 80px;
     padding:2px 0;
     margin: 0 5px;
    
    }
    .botao-enviar{
     display: inline-block;
     direction:column;
     width: 100%;
     border-radius:10px;
     font-size: 130%;
     font-family: Poppins;
     background-color: #008B8B;
     color: white;
    }
    
     .resultado{
      display: inline-block;
      direction: column;
      margin-left: 0px;
      padding: 0 5px;
      width:90%;
      font-size: 14px;
      color:gray;
     }
     .resultado1{
      display: inline-block;
      direction: column;
      margin-left: 89px;
      padding: 0 5px;
      width:90%;
      font-size: 14px;
      color:gray;
     }
    .nome{
      margin-left: 0px;
      display: inline-block;
      direction: column;
      width: 8%;
    }
    .total{
      display: inline-block;
      direction: column;
      width: 5%;
    }
@media screen and (min-width: 1024px){
  .container{
      display: inline-block;
      direction: column;
      width: 99%;
      padding:10px 0;
      background-color: lavender;
      margin:0.5% ;
    }
    
     .resultado1{

      margin-left: 15%;
   
     }
  .input_data{
     width:125px;
     font-size: 12px;
     /*margin: 0 10px;*/
    }
    .btn-enviar{
      margin: 0 10px;
    }
    .nome{
      margin-left: 0px;
      display: inline-block;
      direction: column;
      width:4%;
    }
    .total{
      display: inline-block;
      direction: column;
      width: 5%;
    }
}
  
  </style>
</html>

</html>
