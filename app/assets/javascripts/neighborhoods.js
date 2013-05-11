
    function startDrawing() {
      C=document.getElementById("eraser")
      D=[];
      document.getElementById("svg-doc").setAttribute("onmousemove","draw(evt)")
      document.getElementById("player").play();
    }
    function draw(evt) {
    pair = evt.clientX + "," + evt.clientY
    D.push(pair)
    new_points = D.join(" ")
    C.setAttributeNS(null,"points", new_points)
    }
    function stopDrawing() {
    document.getElementById("svg-doc").setAttributeNS(null, "onmousemove",null)
    }
  