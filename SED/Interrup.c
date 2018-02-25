#include "definiciones.h"
#include <LPC17xx.h>

void UART0_IRQHandler(void) {
	
   switch(LPC_UART0->IIR&0x0E) {     //Cuando hay una interrupcion UART0
									 //Hace un AND entre los flags de interrupciones y el numero en binario 1111
									 //Para ver si alguno esta activado y por tanto atender a esa interrucion
									 //RECEPCION
   case 0x04:				         //Si se ha recibido un dato en el buffer   
     *pcad_rx=LPC_UART0->RBR;        //lee el dato recibido y lo almacena en la direccion en memoria a la que apunte  
	                                 //pcad_rx quien apunta al array buffer_rx por lo que se guarda en el mismo
	  pcad_rx =buffer_rx; 			 //Se pone el puntero de recepcion pcad_rx al comienzo del array buffer
	                                 //Para que el proximo dato transmitido se guarde tambien al principio
	  rx_completa = 1;                //Indica que se ha recibido un dato y hay que atenderlo
     break;							 //Facil de modificar para recibir cadenas !!!!!

										//TRANSMISION\\ (ya iniciada por la funcion tx_cadena_UART0 )
   case 0x02:					       	//Si el registro de transmision esta vacio por lo que se ha enviado un dato
     if((*pcad_tx)!=0){			   	    //Si la cadena a enviar no ha acabado por lo que hay mas datos por transmitir
	   pcad_tx++;					    //Se incrementa el puntero de la cadena para que apunte al siguiente dato a transmitor
       LPC_UART0->THR=(*pcad_tx);	    //Se carga el nuevo dato (caracter) en el registro de transmision,
	                                    //cuando se transmita generara otra interrupcion del mismo tipo al haberlo enviado
		}								//y esta funcion seguira asi hasta que sea el fin de la cadena
	   			
	   else {							 //Si se llega al final de una cadena (un 0 )
	    pcad_tx++;                        //Incrementamos al siguiente punto
		if((*pcad_tx)!=0){				  //Si el siguiente caracter no es 0, significa que hay mas cadenas por enviar
                                          //pcad_tx ya apunta al principio de la siguiente cadena
		LPC_UART0->THR=(*pcad_tx); }       //Cargamos el nuevo dato para que continue el ciclo de interrupciones

		else {							  //Si tambien es 0 incica segun nuestro protocolo el final de las cadenas
		                                  //Por lo que todas las cadenas en el buffer han sido enviadas
		tx_completa=1;				   	  //Indicamos que no se esta transmitiendo nada
	    pcad_tx = buffer_tx[0];   		  // Ponemos el puntero al principio del bufer de salida	
		pos_cadena = 0;	}				  //Inicializamos posiciones para que las nuevas cadenas
		}                     			  //Sobreescriban a las anteriores							   
				
     break;								
   };                                      //Fin del Switch
  }


	   
void RIT_IRQHandler (void) {  
  LPC_RIT->RICTRL |= RIT_RITINT;	// Borra fuente de la interrupción (sino se ejecutaria permanentemente)
  (*pcRIT)++;					     	//Incrementa en 1 el contador del RIT
  (*pcLED)++;					    	//Incrementa en 1 el contador del conmutador
  (*pcUART0)++;				        //Incrementa en 1 el contador del UART0
}							    //No poner mas codigo para no sobrecargar ya que es una interrupcion muy usual
    

	
void EINT2_IRQHandler(void)	{	     //Funcion de interrupcion EINT2
  									//Conectado a la señal para contar ciclos
  LPC_SC->EXTINT |= (1 << 2);         // Borrar el flag de la EINT2 --> EXTINT.2
  (*pcSIG)++;							//Aumenta en 1 el contador de ciclos
}

void EINT3_IRQHandler(void){		//Funcion de interrucion EINT3
									//Utilizada para cambiar la escala
  LPC_SC->EXTINT |= (1 << 3);	    	// Borrar el flag de la EINT3 --> EXTINT.3
  if(*pescala == 10000000){  *pescala = 100;} 	 //Si se ha llegado a la escala final, se inicializa
  else {(*pescala) *= 10;}		             //Sino se pasa a la siguiente escala
}
