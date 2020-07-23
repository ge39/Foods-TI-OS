
    window.onload = function () {
        //todo conteúdo ficará aqui
        var largura = 500;
        var altura = 300;
     
        var quadro = document.getElementById("quadro");
        quadro.setAttribute("width", largura);
        quadro.setAttribute("height", altura);
         
        var ctx = quadro.getContext("2d");
         
        var desenhando = false;
        quadro.onmousedown = function (evt) {
          ctx.moveTo(evt.clientX, evt.clientY);
          desenhando = true;
        }
        quadro.onmouseup = function () {
          desenhando = false;                
        }
        quadro.onmousemove = function (evt) {
        if (desenhando) {
            ctx.lineTo(evt.clientX, evt.clientY);
            ctx.stroke();
          }
        }
  }
