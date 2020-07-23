   <?php include('../templates/template_admin.php');
        include_once('../conexao.php');?>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     
  </head>
  <body>
      <p style="margin-right: 10px; text-align: right"><a href="/geo/grafico_pizza.php">Atualizar Página</a></p>
      
        <?php
         $count_area = "SELECT  sigla,cdsupress, count(cdsupress) as contador, count(categoria) as category FROM banco group by sigla, cdsupress order by sigla asc";
         $resultado_area = mysqli_query($conn, $count_area);

          while ($row_count = mysqli_fetch_assoc($resultado_area))
        {
          echo '<tr>';
             echo "</br>".'<td>'. "Assistente:------" . $row_count['sigla'] . '</td>' . "</br>" ;
             echo '<td>'. "Cd Supress:-----" . $row_count['cdsupress'] . '</td>'."/<br>";
             echo '<td>'. "Total Cd Supress:--" . $row_count['contador'] . '</td>'."</br>";
          echo '</tr>';
        
          if ($row_count['cdsupress'] =='ASSIST')
          {
          $cont_assist= $row_count['contador'];
          }
          elseif ($row_count['cdsupress'] == 'FAVCOM')
          {
          $cont_favcom = $row_count['contador'];
          }
          elseif ($row_count['cdsupress'] == 'FAVSEC')
          {
          $cont_favsec= $row_count['contador'];
          } 
          elseif ($row_count['cdsupress'] =='POPULAR')
          {
          $cont_popular= $row_count['contador'];
          }
          elseif($row_count['cdsupress'] =='PREDPR')
          {
          $cont_predpr = $row_count['contador'];
          }
          elseif($row_count['cdsupress'] =='PUBCOM'){
          $cont_pubcom = $row_count['contador'];
          }
          elseif($row_count['cdsupress'] =='PUBLICA'){
          $cont_publica = $row_count['contador'];
          }
        }
      ?>
      
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
          google.charts.load("current", {packages:["corechart"]});
          google.charts.setOnLoadCallback(drawChart);
        
         function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Task', 'Hours per Day'],
              ['Assist', <?php echo ['$row_assist'] ;?>,
              ['Comum',  <?php echo ['$row_comum'] ;?>,
              ['Favcom', <?php echo ['$row_favcom'] ;?>,
              ['Favsec', <?php echo ['$row_favsec'] ;?>,
              ['Pubcom', <?php echo ['$row_pubcom'] ;?>,
              ['Popular',<?php echo ['$row_popular'] ;?>,
            ]);

            var options = {
              title: 'CENÁRIO DAS ÁREAS - SABESP',
              is3D: true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
          }
         </script>
            <div class = "chart" id="piechart_3d" > </div>
  </body>
        <style>
        /*for width smaller than 400px;*/
          .chart  {
            width:500px; 
            height:200px;
            }
            /*for width 400px and lager;*/
            @media only screen and (min-width: 400px){
          .chart {
            width:1000px; 
            height:700px;
            }
          }
        </style>
</html>