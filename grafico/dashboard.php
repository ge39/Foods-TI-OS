   <?php 
    include('../template/grafico.php');
    include_once('../persistence/grafico.php');

    date_default_timezone_set('America/Sao_Paulo');
      $dados = date('d-m-Y');
     ?> 
       
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
         
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load Charts and the corechart and barchart packages.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart and bar chart when Charts is loaded.
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'REGIAO');
        data.addColumn('number', 'TOTAL');
        data.addRows([
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

        var piechart_options = {title:'TICKET: ATENDIMENTO POR REGIÃO DA CIDADE DE SÃO Paulo',
                       width:400,
                       height:300};
        var piechart = new google.visualization.PieChart(document.getElementById('REGIAO_div'));
        piechart.draw(data, piechart_options);
      
      }
</script>

<!-- /grafico 2 -->

 <script type="text/javascript">

      // Load Charts and the corechart and barchart packages.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart and bar chart when Charts is loaded.
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'GRUPO');
        data.addColumn('number', 'TOTAL');
        data.addRows([
        <?php foreach ($var_total_grupo as $grupo) { ?>
          ['<?php echo $grupo['descgrupo'];?>', <?php echo $grupo['totalgrupo'];?>,],
         <?php } ?>
        ]);

        var piechart_options = {title:'TICKET: ATENDIMENTO DO GRUPO IPANEMA FOODS',
                       width:400,
                       height:300};
        var piechart = new google.visualization.PieChart(document.getElementById('GRUPO_div'));
        piechart.draw(data, piechart_options);
      
      }
</script>
<!-- <script type="text/javascript">

      // Load Charts and the corechart and barchart packages.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart and bar chart when Charts is loaded.
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'GRUPO');
        data.addColumn('number', 'TOTAL');
        data.addRows([
        <?php foreach ($var_total_grupo as $grupo) { ?>
          ['<?php echo $grupo['descgrupo'];?>', <?php echo $grupo['totalgrupo'];?>,],
         <?php } ?>
        ]);

        var barchart_options = {title:'Barchart: ATENDIMENTO DO GRUPO IPANEMA FOODS',
                       width:400,
                       height:300,
                       legend: 'none'};
        var barchart = new google.visualization.BarChart(document.getElementById('barchart_div'));
        barchart.draw(data, barchart_options);
      }
</script> -->


<!-- /grafico 3-->

<script type="text/javascript">

      // Load Charts and the corechart and barchart packages.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart and bar chart when Charts is loaded.
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'TÉNICOS');
        data.addColumn('number', 'TOTAL');
        data.addRows([
         <?php foreach ($var_tecnico as $tecnico) { ?>
          ['<?php echo $tecnico['nome'];?>', <?php echo $tecnico['total'];?>,],
         <?php } ?>
        ]);

        var piechart_options = {title:'TICKET: ATENDIMENTO TÉCNICOS',
                       width:400,
                       height:300};
        var piechart = new google.visualization.PieChart(document.getElementById('TECNICO_div'));
        piechart.draw(data, piechart_options);
      
      }
</script>


<!-- /grafico 4-->

<script type="text/javascript">

      // Load Charts and the corechart and barchart packages.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart and bar chart when Charts is loaded.
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'DESCRIÇÃO');
        data.addColumn('number', 'TOTAL');
        data.addRows([
          <?php foreach ($var_atend as $atend) { ?>
            ['<?php echo $atend['descricao'];?>', <?php echo $atend['total'];?>,],
         <?php } ?>
        ]);

        var piechart_options = {title:'TICKET: TIPO DE ATENDIMENTO',
                       width:400,
                       height:300};
        var piechart = new google.visualization.PieChart(document.getElementById('ATEND_div'));
        piechart.draw(data, piechart_options);
      
      }
</script>


<!-- /grafico 5 LOJAS-->

<script type="text/javascript">

      // Load Charts and the corechart and barchart packages.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart and bar chart when Charts is loaded.
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'LOJAS');
        data.addColumn('number', 'TOTAL');
        data.addRows([
         <?php foreach ($grafico_loja as $loja) { ?>
            ['<?php echo $loja['loja'];?>', <?php echo $loja['cal_loja'];?>,],
         <?php } ?>
        ]);

        var piechart_options = {title:'TICKET:TOP 10 - LOJAS MAIS ATENDIDAS',
                       width:400,
                       height:300};
        var piechart = new google.visualization.PieChart(document.getElementById('LOJA_div'));
        piechart.draw(data, piechart_options);
      
      }
</script>

<!-- /grafico 5 EQUIPAMENTOS-->

<script type="text/javascript">

      // Load Charts and the corechart and barchart packages.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart and bar chart when Charts is loaded.
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'DISPOSITIVO');
        data.addColumn('number', 'TOTAL');
        data.addRows([
         <?php foreach ($var_total_equipa as $equipa) { ?>
            ['<?php echo $equipa['descricao'];?>', <?php echo $equipa['total'];?>,],
         <?php } ?>
        ]);

        var piechart_options = {title:'TICKET:TOP 10 - DISPOSITIVOS',
                       width:400,
                       height:300};
        var piechart = new google.visualization.PieChart(document.getElementById('EQUIPA_div'));
        piechart.draw(data, piechart_options);
      
      }
</script>

<!-- /grafico 6 ESTATUS CHAMADO-->

<script type="text/javascript">

      // Load Charts and the corechart and barchart packages.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart and bar chart when Charts is loaded.
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'CHAMADOS');
        data.addColumn('number', 'TOTAL');
        data.addRows([
         <?php foreach ($var_status_chamado as $status) { ?>
            ['<?php echo $status['descricao_chamado'];?>', <?php echo $status['total'];?>,],
         <?php } ?>
        ]);

        var piechart_options = {title:'TICKET:TOP 10 - DISPOSITIVOS',
                       width:400,
                       height:300};
        var piechart = new google.visualization.PieChart(document.getElementById('STATUS_CHAMADO_div'));
        piechart.draw(data, piechart_options);
      
      }
</script>

<body>
    <!--Table and divs that hold the pie charts-->
 <!--    <table class="columns">
      <tr>
        <td><div id="REGIAO_div" style="border: 1px solid #ccc;display: inline-block;direction: column;"></div></td>
        <td><div id="GRUPO_div" style="border: 1px solid #ccc;display: inline-block;direction: column;"></div></td>
        <td><div id="TECNICO_div" style="border: 1px solid #ccc;display: inline-block;direction: column;"></div></td>
        <td><div id="barchart_div1" style="border: 1px solid #ccc;display: inline-block;direction: column;"></div></td>
        
      </tr>
    </table> -->
      <div class="chart">
        <div id="REGIAO_div" style="border: 1px solid #ccc;display: inline-block;direction: column"></div>
        <div id="GRUPO_div" style="border: 1px solid #ccc;display: inline-block;direction: column"></div>
        <div id="TECNICO_div" style="border: 1px solid #ccc;display: inline-block;direction: column"></div>
        <div id="ATEND_div" style="border: 1px solid #ccc;display: inline-block;direction: column"></div>
        <div id="LOJA_div" style="border: 1px solid #ccc;display: inline-block;direction: column"></div>
        <div id="EQUIPA_div" style="border: 1px solid #ccc;display: inline-block;direction: column"></div>
        <div id="STATUS_CHAMADO_div" style="border: 1px solid #ccc;display: inline-block;direction: column"></div>
      </div>
  </body>
</html>

     
   
      <div id="top_x_div" ></div>

      <div class="resultado">
        <?php foreach ($var_tec as $tecnic) { ?>
             <div class="nome"> <?php echo $tecnic['nome'];?>      
             </div>
             <div class="total"> <?php echo $tecnic['total'];?> </div>
        <?php } ?>
         
      </div>
    
  </body>
  <style>
    .chart{
      padding: 5px -5%;
    }
    #top_x_div{
      width: 100px; height: 250px;
    }
    .container{
      display: inline-block;
      direction: column;
      width: 99%;
      padding:5px;
      background-color: lavender;
      
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
  .chart{
      padding: 5px 10px;
      margin-left: 30px;

    }
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
     .resultado{
      display: inline-block;
      direction: column;
      margin-left: 0px;
      padding: 0 5px;
      width:90%;
      font-size: 14px;
      color:gray;
     }
}
  
  </style>
</html>
