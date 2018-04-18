
function pagina_motores(){

	document.body.innerHTML = "<h1 >Control de los motores</h1>"+
	"<div id='screen' name = 'pantalla'>  </div>";
	
	num_bars = 0;
	num_texts = 0;	
	
	menu = "motores";
	
	var ox = screenX + screenW;
	var oy = screenY + screenH;
	
	/*
	CreateDiv(screenX,screenY,"");	
	document.getElementById("div0").class = "screen";	
	*/
	CreateDiv(screenX+det_X,screenY+det_Y,"");
	CreateDiv(screenX+det_X,screenY+det_Y,"X");
	document.body.innerHTML += "<h1 >Control de la camfefeara</h1>"+
	"<div id='screen' name = 'pantalla'>  </div>";	
	
	CreateBar(screenX - 30, screenY + 20, 20,screenH -40,1);
	CreateBar(screenX + 20, screenY + screenH + 10, screenW-40,20,0);
	CreateDiv(ox+10,screenY + 10, "<form method='post' action='this'>"+
	"<h3> Configuración de Detección:</h3>"+
	"<div style='margin-left:30px;text:20px'><input name='Deteccion' type='checkbox' />Deteccion<br>"+
	
	"<input type='radio' name='Seg' value='1'>Seguimiento <br>"+
	"<input type='radio' name='Seg' value='2'>Movimiento Manual</div>"+
	"</form>");
	
	CreateDiv(screenX,screenY - 30, "<form method='post' name = 'pos_motores'>"+ ////////////////////////
	" Posición de los motores: "+
	" X: <input type='text' id='x' name = 'x' class = 'coord' value = '50' readonly>"+
	" Y: <input type='text' id='y' class = 'coord' value = '50' readonly>"+
	"</form>");
	Draw_detected(20,20);
	

	
}


function pagina_camara(){

	document.body.innerHTML = "<h1 >Control de la camara</h1>"+
	"<div id='screen' name = 'pantalla'>  </div>";
	
	num_bars = 0;
	num_texts = 0;	
	
	menu = "camara";
	
	var ox = screenX + screenW;
	var oy = screenY + screenH;

	for (i = 0; i < 3; i++){
	
		CreateBar( ox + 20 + 40*i, screenY + 20,15,150,1);
		CreateDiv(ox + 20 + 40*i,screenY, textos[i])
	}
	
	for (i = 0; i < 3; i++){
	
		CreateBar( ox + 20 + 40*i + 200, screenY + 20, 15,150,1);
		CreateDiv(ox + 20 + 40*i + 200,screenY, textos[3+i])
	}
	
	CreateBar( screenX + 20 , oy + 20, 15,100,1);	
	
	CreateDiv(screenX,screenY - 30,
	" Número de FPS recibidos: "+
	"  <input type='text' id='fps' name = 'fps' class = 'coord' readonly>"+
	"</form>");
	
	
	CreateDiv(ox+10,oy - 60, "<form method='post' action='agente.php'>"+
	"Ganancia RGB"+
	"<div style='margin-left:30px;text:20px'>"+
	"<input type='radio' name='RGB' value='1'>Manual <br>"+
	"<input type='radio' name='RGB' value='2'>Automatico</div>"+
	"</form>");
	
	CreateDiv(ox+210,oy - 60, "<form method='post' action='agente.php'>"+
	"Brillo, Contraste y Luminosidad"+
	"<div style='margin-left:30px;text:20px'>"+
	"<input type='radio' name='BLC' value='1'>Manual <br>"+
	"<input type='radio' name='BLC' value='2'>Automatico</div>"+
	"</form>");
	
	CreateDiv(screenX+50,oy +20,"Umbral de deteccion"+
	"<div id='color_detected' style = 'position:absolute;left:25px; top:35px;"+
	"width:40px;height:40px; border:1px black solid;background:red'>  </div>"
	);	
	
	
	
	
	CreateDiv(screenX - 130,screenY,"<form method='post' action='agente.php'>"+
	"Número de FPS"+
	"<div style='margin-left:50px;text:20px'>"+
	"<input type='radio' name='transporte' value='1'>1 <br>"+
	"<input type='radio' name='transporte' value='2'>2 <br>"+
	"<input type='radio' name='transporte' value='3'>3 <br>"+
	"<input type='radio' name='transporte' value='5'>5 <br>"+
	"<input type='radio' name='transporte' value='10'>10 <br>"+
	"<input type='radio' name='transporte' value='15'>15 <br>"+
	"<input type='radio' name='transporte' value='20'>20 <br>"+
	"<input type='radio' name='transporte' value='30'>30 <br>"+		
	"<input type='radio' name='transporte' value='40'>40 <br>"+	
	"</form>");
	
	


}


