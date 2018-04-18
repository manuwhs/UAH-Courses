
function coordenadas(event) {
 	ratonx = event.pageX;
 	ratony = event.pageY;

 }
 
function Draw_detected(detX,detY) {
	document.getElementById("div1").style.left = (detX + screenX).toString()+"px";	
	document.getElementById("div1").style.top = (detY + screenY).toString()+ "px";	

 } 

function getBarValue(elemento,tipo){

	anchura = parseInt(window.getComputedStyle(elemento).getPropertyValue('width'));
	altura = parseInt(window.getComputedStyle(elemento).getPropertyValue('height'));
	origenx = parseInt(window.getComputedStyle(elemento).getPropertyValue('left'));
	origeny =  parseInt(window.getComputedStyle(elemento).getPropertyValue('top'));
	
	num_bar =parseInt(elemento.name);
	
	if (tipo == 0){
		valor = 100*(ratonx - origenx)/anchura;
	}
	if (tipo == 1){
		valor = 100*(ratony - origeny)/altura;
	}
	if (valor > 100) valor = 100;
	
	Valor_bar = valor*BAR_RANGE/100;
	value_bars[num_bar] = Valor_bar;
	
	if (menu == "motores"){
		document.getElementById("x").value = value_bars[1];	
		document.getElementById("y").value = value_bars[0];	
	}

	//Draw_detected(value_bars[1],value_bars[0]) ///////////////////////////////////////QUITAR ES DE PRUEB	
	return valor;

}

/* Valor ponderado de 0 a 100 */
 
function DrawBar(elemento,valor,tipo) {

	/* Select the 2 bars */
	lleno = elemento.getElementsByTagName("div")[0];
	vacio = elemento.getElementsByTagName("div")[1];

	/* Get the height and width of the main bar */
	anchura = parseInt(window.getComputedStyle(elemento).getPropertyValue('width'));
	altura = parseInt(window.getComputedStyle(elemento).getPropertyValue('height'));
	
	if (tipo == 0){	/* Horizontal */
	
		valor = anchura*valor/100;
			
		lleno.style.height = altura.toString()+"px";
		vacio.style.height = altura.toString()+"px";
		
		vacio.style.left = valor.toString()+"px";	
		lleno.style.width = valor.toString()+"px";
		vacio.style.width = (anchura-valor).toString()+"px";

	
	}
	if (tipo == 1){	/* Vertical */
	
		valor = altura*valor/100;	
		vacio.style.top = valor.toString()+"px";	
		lleno.style.height = valor.toString()+"px";
		vacio.style.height = (altura-valor).toString()+"px";
		
		lleno.style.width = anchura.toString()+"px";
		vacio.style.width = anchura.toString()+"px";
	
	}	
}


function CreateBar(x,y,w,h,tipo) {

	var barra = document.createElement("div");

	barra.id = "barra" + num_bars.toString();
	barra.name = num_bars.toString();
	
	//alert(barra.id);
	barra.innerHTML = "<div class='lleno'></div>"+
					 "<div class='vacio'></div>";
	
	//alert(barra.innerHTML);	
	barra.style.position = "absolute";	
	
	barra.style.left = x.toString()+"px";
	barra.style.top = y.toString()+"px";
	barra.style.height = h.toString()+"px";
	barra.style.width = w.toString()+"px";

	
	type_bars[num_bars] = tipo;
			
	barra.onclick= function(event){ 
		//alert(parseInt(this.name));
		coordenadas(event);
		DrawBar(this,getBarValue(this,type_bars[parseInt(this.name)]),type_bars[parseInt(this.name)]);
		
		// Here we check which bar has been pressed and whick form we are in and we sent the right form
		
		if(menu == "caca") {
			document.pos_motores.submit();
		}
		
		
	}
	
	document.body.appendChild(barra);

	
	
	DrawBar(barra,50,tipo);		
	num_bars++;
} 

function CreateDiv(x,y,str) {

	var texto = document.createElement("div");

	texto.id = "div" + num_texts.toString();
	texto.name = num_bars.toString();
	
	texto.innerHTML = str;
	
	texto.style.position = "absolute";	
	
	texto.style.left = x.toString()+"px";
	texto.style.top = y.toString()+"px";

	document.body.appendChild(texto);
		
	num_texts++;
} 




