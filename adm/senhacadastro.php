<title>Relatório Cidades</title>
  <link rel="stylesheet" type="text/css" href="../css/style.css">


  <link rel="stylesheet" type="text/css" href="../css/modal.css">
  <meta charset="utf-8">
<body onload="myBtn">

<!--<h2>Animated Modal with Header and Footer</h2>-->

<!-- Trigger/Open The Modal 
<button id="myBtn">Open Modal</button>-->

<!--<script type="text/javascript">
    $(window).on('load',function(){
        $('#myModal').modal('show');
    });
</script>

 The Modal -->
<!--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">-->
<div id="myModal" class="modal">

    <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Escolha o dia do culto</h2>
    </div>
    <div class="modal-body">
      <div>
        <form action="../mapas/dia_culto.php"  method="get"target = "_self">
            <label for="fcity">Escolha o dia de Culto</label>
                        
            </div>
            <div> 
              <input class="cidade" type="text" name="dia_culto" size="80%" required ="" placeholder="ex:DM,2N,3T,4N,5N,6N,S,D">
              <input type="submit" value="Enviar">
            </div>
          </form>
      </div>
    </div>

    <div class="modal-footer">
      <h3>Modal Footer</h3>
    </div>
  </div>
</div>
<div class="footer" >
  <div style="padding:5px; text-align:center; color:black;">
        
  <p>Todo os direitos reservados</p>
  </div>
</div>

<style>

    /*popup*/
      #conteiner {
        color:      #FFF;
        position:absolute;
        top:        10%;
        left:       10% ;
        visibility:     hidden;
        border:       1px solid black;
        /*background-color: #006699 ;
        background-color:#008CBA;*/
        height:       10%;
        padding:      10px;
        width:        60%;
        }
  
        .location{
        display:block;
        padding: 5px;
        width:60%;
        height:100%;
        overflow: auto; /* Enable scroll if needed */
        opacity: 1;
        align-items: center;
        background-color:none;
        position:absolute;
        z-index:1;
        top:19%;
        margin-left: 45%;
        
        }
      .botao{
        width:45%;
        border: none;
        color: white;
        padding: 10px 14px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 11px;
        font-family: Arial,times,tahoma,;
        margin:5px 1px;
        transition-duration: 0.4s; /* Safari */
        background-color: white; 
        color: black; 
        border: 2px solid #008CBA;
        }
         a:link 
            { 
            text-decoration:none; 
            }
            .botao{
            background-color: white; 
            color: black; 

            }   
            .botao:hover {
              background-color: #008CBA;
              color: white;
             cursor: pointer;
            }  
        

       /*media menor que 1000px*/
      @media screen and (max-width: 1023px){
       .location{
        /*conteiner*/
        display:block;
        padding: 5px;
        width:98%;
        height:88%;
        opacity: 1;
        align-items: center;
        /*background:#008CBA;*/
        position:absolute;
        z-index:1;
        top:18%;
        margin-left: 1%;
        }
      .botao{
        width:98%;
        border: none;
        color: white;
        padding: 10px 14px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 200%;
        font-family: Arial,times,tahoma,;
        margin-left:5px;
        cursor: pointer;
        transition-duration: 0.4s; /* Safari */
        background-color: lightblue; 
        color: black; 
        border: 2px solid #008CBA;
        }
    } 
    
      
 </style>