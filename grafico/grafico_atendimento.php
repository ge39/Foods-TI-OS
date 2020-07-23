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
          ['descricao', 'Total'],
          <?php foreach ($var_atend as $atend) { ?>
            ['<?php echo $atend['descricao'];?>', <?php echo $atend['total'];?>,],
         <?php } ?>
        ]);

        var options = {
          title: 'Chess opening moves',
          width: 400,
          legend: { position: 'none' },
          chart: { title: '',
                   subtitle: '' },
          bars: 'vertical', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'bottom', label: 'Total de atendimentos'} // Top x-axis.
            }
          },
          bar: { groupWidth: "50%" }
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
     
      </div>

       <div class="resultado">
          <?php foreach ($var_total_atend as $total) { ?>
               <div class="nome"> <?php echo  " Total ". $total['total']." atendimentos";?>      
               </div>
               
         <?php } ?>
        </div>
        
      <div id="top_x_div" style="width: 400px; height: 400px;"></div>
  
  </body>
  <style>
    #top_x_div{
      width: 400px; height: 350px;
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
    .nome{
      color:gray;
      font-size: 12px;
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
  .input_data{
     width:125px;
     font-size: 12px;
     /*margin: 0 10px;*/
    }
    .btn-enviar{
      margin: 0 10px;
    }
   
}
  
  </style>
</html>

</html>
