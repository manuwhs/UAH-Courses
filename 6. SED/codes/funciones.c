#include <LPC17xx.h>
#include "definiciones.h"
#include <string.h>
#include <stdlib.h>

void config(unsigned int leds,  float tiempo_s, int baudrate){

 configGPIO(leds);
 configRIT(tiempo_s);
 configUART0(baudrate);
 tx_cadena_UART0("Bienvenidos al frecuencimetro: \n\r", buffer_tx[0], &tx_completa, &pos_cadena);
 tx_cadena_UART0("HAPPY XMAS !!!\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
 tx_cadena_UART0("Teclear H para ver los comandos \n\r", buffer_tx[0], &tx_completa, &pos_cadena);

 }



void estadoflags(int *pcUART0, char *pcomunUART0, int *pcLED, char *pconmuta){
  if((*pcUART0) >= 5000){				       //Si han pasado 500ms = 0,5s
 (*pcomunUART0) = 1;						   //Activamos el indicador de comunicacion asincrona
  (*pcUART0) = 0; }					       //Ponemos a 0 el contador del UART0

  if((*pcLED) >= 1000){					   //Si han  pasado 200ms = 0,2s
  (*pconmuta) = 1;						    //Activamos el indicador de comunicacion asincrona
  (*pcLED) = 0; }					       //Ponemos a 0 el contador del UART0
 }

void obtfrec(float tiempo_s, float *pfrec, int *pcRIT,int *pcSIG, int calidad){
        int nc = 1;							    //Numero de ciclos de la señal a la que esperamos
        float amplitud = 0;			           //Variable en la que pondremos la amplitud de la señal
   											   //Iniciamos a 1 como base para la siguiente instruccion
	   	while(amplitud == 0){                 //De esta funcion no se sale hasta que no calcula la amplitd de la señal
											  //con un minimo de 5 ciclos de accuaricy                    		         
       (*pcRIT) = 0;				           //Ponemos nuestro contador del RIT a 0
       (*pcSIG) = 0;		                //Ponemos nuestro contador de la señal a 0


	    while ((*pcSIG) < nc){               //Esperamos a "nc" interrupciones de la señal
			  if (*pcRIT >= 5000*nc){         //Si la frecuencia va a ser menor que 5 HZ
			     *pfrec = 0;                //Damos por hecho que no hay frecuencia
	             tx_cadena_UART0("N0 SIGNAL\n\r", buffer_tx[0], &tx_completa, &pos_cadena);    //Decimos por UART0 que no hay señal
				 return; }}                                    //salimos de la funcion
	    
	   amplitud = 1000*(tiempo_s * (*pcRIT)/nc);	//Obtenemos el periodo a partir de los datos
													// EL 1000 es para evitar numeros decimales tan pequeños
													// que no se guardarian en el float
	   if((*pcRIT) <= calidad){ 				       //Si no tenemos "calidad" ciclos de exactitud
	      nc *= 10;							   //Esperamos 10 veces mas interrupciones de la señal
		                                       //A tan alta frecuencia dicho tiempo es despreciable
		  amplitud = 0;	}						//Indicamos que la acuare no la pedida
		
	    }                                    
       *pfrec = 1000/amplitud;		             //Escribimos el resultado en la variable externa "frecuencia"
	}


 void visionleds(int escala, float fecuencia, char *pconmuta){  //Le damos la escala, la frecuencia y el puntero al flag
       int i = 0;
	   int div = 100;                                 //variable para ver en que escala estamos				                             
	   if ((LPC_GPIO2->FIOPIN & (1<<11))==0){        //Si esta pulsado el interruptor que muestra la escala
	     	for(i=0; escala%div==0; i++){			  //Mientras el resto de dividir por 10 sea 0
		     div *= 10;								  //Multiplicamos el divisor por 10
			}										  //Cuando el resto sea 1, nos dara el numero de la escala (1 al 7 ) 
			                                          //Siendo 100 -> i = 1
			LPC_GPIO1->FIOPIN  &= ~ (leds - conv10leds(i));		          //Apaga los leds que no usaremos
          	LPC_GPIO1->FIOPIN  |= conv10leds(i);						  //Enciende leds correspondientes
			LPC_GPIO1->FIOPIN  &= ~ (conv10leds(i-1));              //Apaga los leds por detras del ultimo
         																  //Para que sepamos que estamos viendo la escala
			}		                  
         
                 

	   else{                                       		   //Si el pulsador no esta pulsado
       int numactivos =  frecuencia / (escala/10 );         //Calculamos numero de leds a encender
														   //En numacticos solo estara la parte entera de la division
	   if((numactivos==0) && (*pconmuta == 1)){             //Si por debajo de frecuencia minima y ha pasado el tiempo necesario 
		  LPC_GPIO1->FIOPIN  &= ~ (leds - conv10leds(1));		  //Apaga los leds que no usaremos
		  LPC_GPIO1->FIOPIN ^= conv10leds(1);					   //Conmuta el led 1    
		   (*pconmuta)=0;	                     			   //Apagamos el flag de conmutacion
	                         }
	   if((numactivos>10) && (*pconmuta == 1)){		       //Si por encima de frecuencia maxima y ha pasado el tiempo necesario
			LPC_GPIO1->FIOPIN  |= (conv10leds(9));          //Encendemos todos los leds menos el ultimo que conmutara
			LPC_GPIO1->FIOPIN ^= 1<<29;			           //Conmuta led 10	
			*pconmuta=0;								   //Apagamos el flag de conmutacion
				}

	   if((numactivos<= 10) && (numactivos>0)){		       //Si la frecuencia esta en el rango
	   LPC_GPIO1->FIOPIN  &= ~ (leds - conv10leds(numactivos));		  //Apaga los leds que no usaremos
	   LPC_GPIO1->FIOPIN  |= (conv10leds(numactivos));     	//Enciende los leds que indican la frecuencia
	   
	   }
	 }
	 }
	 	                          
	   



 void vision7seg(int escala, float fecuencia, char *pconmuta){  //Le damos la escala, la frecuencia, el puntero al flag, y la variable con los pines
 		
	   int i = 0;
	   int div = 100;                                 //variable para ver en que escala estamos				                             
	   if ((LPC_GPIO2->FIOPIN & (1<<11))==0){        //Si esta pulsado el interruptor que muestra la escala
	     	for(i=0; escala%div==0; i++){			  //Mientras el resto de dividir por 10 sea 0
		     div *= 10;								  //Multiplicamos el divisor por 10
			}										  //Cuando el resto sea 1, i contentra el numero de la escala
			LPC_GPIO1->FIOPIN  &= ~ (segment7 - conv7s(i));  //Apaga los leds que no queremos encender	
         	LPC_GPIO1->FIOPIN  |=conv7s(i);           //Enciende leds necesarios
                 }

	   else{                                       		   //Si el pulsador no esta pulsado
       int numactivos =  frecuencia / (escala/10 );         //Calculamos numero de leds a encender
														   //En numacticos solo estara la parte entera de la division
	   if((numactivos==0) && (*pconmuta == 1)){             //Si por debajo de frecuencia minima y ha pasado el tiempo necesario
           LPC_GPIO1->FIOPIN  &= ~ (segment7 - conv7s(0));  //Apaga los leds que no queremos encender
		   LPC_GPIO1->FIOPIN ^= conv7s(0);					   //Conmuta el  0    
		   (*pconmuta)=0;	                     			   //Apagamos el flag de conmutacion
	                         }
	   if((numactivos>10) && (*pconmuta == 1)){		       //Si por encima de frecuencia maxima y ha pasado el tiempo necesario
		  LPC_GPIO1->FIOPIN  &= ~ (segment7 - conv7s(9));  //Apaga los leds que no queremos encender
		  LPC_GPIO1->FIOPIN ^= conv7s(9);			           //Conmuta el 9	
			*pconmuta=0;								   //Apagamos el flag de conmutacion
				}

	   if((numactivos<= 10) && (numactivos>0)){		       //Si la frecuencia esta en el rango
	    LPC_GPIO1->FIOPIN  &= ~ (segment7 - conv7s(numactivos));  //Apaga los leds que no queremos encender
		LPC_GPIO1->FIOPIN  |=conv7s(numactivos);              //Enciende el numero
	   }
	 }
	 }

 int conv10leds(int numero){
     	int i;
		int result = 0 ;
		int exp = 1;
		for (i=0;i<numero;i++){		 //Calcula el numero equivalente para "numero" de 1's seguidos
		   result += exp;
		   exp *=2; }
		return (result<<20);
   }


int conv7s(int numero){						  //Le das el numero a encender y te devuelve los pines k lo referencian
    switch (numero){						
          case 0: 							 
		   return (0x3F<<20);
           break;  
          case 1: 							 
		   return (0x06<<20);
           break;
	   	  case 2: 							 
		   return (0x5B<<20);
           break;
		  case 3: 							 
		   return (0x4F<<20);
           break;
		  case 4: 							 
		   return (0x66<<20);
           break;
		  case 5: 							 
		   return (0x6D<<20);
           break;
		  case 6: 							 
		   return (0x7D<<20);
           break;
		  case 7: 							 
		   return (0x07<<20);
           break;
		  case 8: 							 
		   return (0x7F<<20);
           break;
		  case 9: 							 
		   return (0x67<<20);
           break;
		  case 10: 					//Selecciona todos		 
		   return (0x7F<<20);
           break;

	};
}
 void tx_cadena_UART0(char *cadena, char *inicio_buffer, char *ptx_completa, int *ppos_cadena){		  //Envia cadena por UART0
  int i=0;

  for(i=0;i<=strlen(cadena);i++){ // Por cada caracter que se quiere enviar
  *(inicio_buffer + (*ppos_cadena) + i)=cadena[i];}	   //Se guarda la cadena en la posicion dada por ppos_cadena para que no se sobreescriban
  *(inicio_buffer + (*ppos_cadena) + i)=0;			   //Finalizamos cadena con un 0 para asegurarnos
  *(inicio_buffer + (*ppos_cadena) + i + 1)=0;		   //Ponemos un segundo 0 para nuestro protocolo
  (*ppos_cadena)+= strlen(cadena) + 1; 		//Indicamos que la primera posicion libre esta despues del 0 final de
											//la ultima cadena escrita, asi como indica el protocolo, con la siguiente cadena
											//se sobreescribira el segundo 0 puesto por la ultima cadena
  if((*ptx_completa)==1){	     //Si todas las cadenas del buffer se han enviado habra que empezar el envio
  LPC_UART0->THR=(*inicio_buffer);}	// Pone el primer dato en el buffer de tranmision TX para que cuando se transmita
                                 // segenere la interrupcion de dato transmitido y la atencion a la interrupcion
								 // se ocupara de enviar el resto de la cadena
  (*ptx_completa)=0;			 // Indicamos que se estan transmitiendo datos
}
//Protocolo:    cadena1..
//				cadena1.cadena2..
//              cadena1.cadena2.cadena3..





 void controlUART0(char *prx_completa, int *pescala, char *pcomunUART0, char *penviofrec, char *pmodo, int *pcalidad){
		char cadconv[10];						   //Cadena para usar con la funcion conversor de int a cadena
        int i = 0;
        int mul = 1;								   //Variable para modificar la escala
		char *pcadconv = cadconv;					   //Puntero a la cadena para enviar a la funcion

		if ((*prx_completa)==1)	{                //Si se ha recivido un nuevo dato, le atendemos
	       	(*prx_completa)=0;                 //Apagamos el flag de atencion al comando


	    if((buffer_rx[0]>='1')&&(buffer_rx[0]<='7')){      //Si el dato dado es un numero del 1 al 7
	      	for(i=0; i<=(buffer_rx[0]-48); i++){			//Mientras no encontremos la escala (48 = '0')
		     mul *= 10;								       //Multiplicamos el divisor por 10
			}
		 *pescala  = mul;                  //Igualamos la escala al valor querido
												//porque para cuando el resto sea 1, div valdra 10 veces la escala
		  conversor(*pescala, pcadconv);						 //Convierte la escala a Cadena
		  tx_cadena_UART0("Valor Maximo de Escala: ", buffer_tx[0], &tx_completa, &pos_cadena);	   
		  tx_cadena_UART0(pcadconv, buffer_tx[0], &tx_completa, &pos_cadena);	    //La envia (la escala)
		  tx_cadena_UART0("\n\r", buffer_tx[0], &tx_completa, &pos_cadena);	   	   //Salto de linea
		  return;}															   //Salimos de la funcion

        switch (buffer_rx[0]){						 //Vemos el valor del primer dato del buffer
      		
		  
         case 'H': 								  //Si es H damos las instrucciones disponibles
		  tx_cadena_UART0("Listado de Comandos:\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("(1 al 7) -> Establece Escala: min(10 - 100 Hz) \n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("H -> Muestra lista Comandos \n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("M -> Envia Frecuencia cada 0,5s\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("F -> Para de Enviar Frecuencia \n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("L -> Establece Modo 10 leds\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("D -> Establece Modo Display 7 segmentos\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("I -> Envia Estado Frecuencimetro\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("A -> Autoajusta la Escala\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("+ -> Aumenta Precision (10 - 1000) !!Realentiza!!\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		  tx_cadena_UART0("- -> Disminuye Precision\n\r (10 - 1000)", buffer_tx[0], &tx_completa, &pos_cadena);

           break;
		 case 'M': 					              		    //Si es M ponemos la escala a 10000
           *penviofrec = 1;			                        //Enviamos la frecuencia 
		   tx_cadena_UART0("Medidas Frecuencia\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
           break;
		 case 'F': 							    //Si es M ponemos la escala a 10000
           *penviofrec = 0;							//Paramos la frecuencia 
		   tx_cadena_UART0("Para envios\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
           break; 
		 case 'L': 							    //Si es L lo ponemos en modo leds
           *pmodo = 1;							
		   tx_cadena_UART0("Modo 10 leds\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
		   break;
         case 'D': 							    //Si es D lo ponemos en modo display 7s
           *pmodo = 2;						
		   tx_cadena_UART0("Modo Display 7 segmentos\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
           break;
		 case 'A': 							    //Si es D lo ponemos en modo display 7s
		  *pescala = 100;						//Empezamos por la escala mas baja
           while( frecuencia >= *pescala){      //Mientras la frecuencia sea mayor que la escala
		        *pescala *= 10; }			   //Multiplicamos por 10 la escala
		  conversor(*pescala, pcadconv);					                   	 //Convierte la escala a Cadena
		  tx_cadena_UART0("Valor Maximo de Escala: ", buffer_tx[0], &tx_completa, &pos_cadena);	   
		  tx_cadena_UART0(pcadconv, buffer_tx[0], &tx_completa, &pos_cadena);	    //La envia (la escala)
		  tx_cadena_UART0("\n\r", buffer_tx[0], &tx_completa, &pos_cadena);	   	   //Salto de linea
		  break;

		  case '+': 							    //Si es + Aumentamos la calidad
		   if(*pcalidad< 1000 ){					//Si la calidad	es menor que la maxima
          (*pcalidad)*=10;	}					//Aumentamos la calidad, aumenta tambien el tiempo de espera
		  else { 
		    tx_cadena_UART0("!!!Calidad Maxima!!!\n\r", buffer_tx[0], &tx_completa, &pos_cadena);	}   
		  break;

		  case '-': 							    //Si es + Aumentamos la calidad
		   if(*pcalidad> 1 ){					//Si la calidad	es mayor que la miniama
          (*pcalidad)/=10;	}					//Disminuimos
		   else { 
		    tx_cadena_UART0("!!!Calidad Minima!!!\n\r", buffer_tx[0], &tx_completa, &pos_cadena);	}   
		  break;

		 case 'I': 							    //Si es I nos da la informacion del estado
            tx_cadena_UART0("Informacion del Frecuencimetro: \n\r", buffer_tx[0], &tx_completa, &pos_cadena);
								
	   	 conversor(*pescala, pcadconv);					                   	 //Convierte la escala a Cadena
		  tx_cadena_UART0("Valor Maximo de Escala: ", buffer_tx[0], &tx_completa, &pos_cadena);	   
		  tx_cadena_UART0(pcadconv, buffer_tx[0], &tx_completa, &pos_cadena);	    //La envia (la escala)
		  tx_cadena_UART0("\n\r", buffer_tx[0], &tx_completa, &pos_cadena);	   	   //Salto de linea

		  switch(modo){
	        case 1:
		     tx_cadena_UART0("Modo de Trabajo: 10 leds\n\r", buffer_tx[0], &tx_completa, &pos_cadena);
	         break;
		    case 2:
		     tx_cadena_UART0("Modo de Trabajo: Display 7 segmentos \n\r", buffer_tx[0], &tx_completa, &pos_cadena);
	         break;
	    	};
		  conversor(frecuencia, pcadconv);								        //Convierte la frecuencia a Cadena
		  tx_cadena_UART0("Frecuencia: ", buffer_tx[0], &tx_completa, &pos_cadena);	   
		  tx_cadena_UART0(pcadconv, buffer_tx[0], &tx_completa, &pos_cadena);	    //La envia (la frecuencia)
		  tx_cadena_UART0("\n\r", buffer_tx[0], &tx_completa, &pos_cadena);		//Retorno de carro

		  conversor(*pcalidad, pcadconv);								        //Convierte la frecuencia a Cadena
		  tx_cadena_UART0("Calidad: ", buffer_tx[0], &tx_completa, &pos_cadena);	   
		  tx_cadena_UART0(pcadconv, buffer_tx[0], &tx_completa, &pos_cadena);	    //La envia (la frecuencia)
		  tx_cadena_UART0("\n\r", buffer_tx[0], &tx_completa, &pos_cadena);		//Retorno de carro


           break;		  
		  default:
		   tx_cadena_UART0("Comando desconocido\n\r", buffer_tx[0], &tx_completa, &pos_cadena);	 //Si no coincide
		   break;

                 };                           //Fin del Switch	de recepcion
	       	   
 	   } 
	 
	 if((*pcomunUART0)&&(*penviofrec==1)){	   //Si ha pasado el tiempo necesario para volver transmitir y hay que hacerlo
	      (*pcomunUART0)=0;
		  conversor(frecuencia, pcadconv);								        //Convierte la frecuencia a Cadena
		  tx_cadena_UART0("Frecuencia: ", buffer_tx[0], &tx_completa, &pos_cadena);	    //La envia (la frecuencia)
		  tx_cadena_UART0(pcadconv, buffer_tx[0], &tx_completa, &pos_cadena);	    //La envia (la frecuencia)
		  tx_cadena_UART0("\n\r", buffer_tx[0], &tx_completa, &pos_cadena);		//Retorno de carro
		  }
		}  







	
  void conversor(int numero, char * cadnum){			  //Convierte entero a cadena y la guarda en cadnum
	       int i = 0, j = 0;
		   char aux[10];							 
		   char convertir = 1;
		   while(convertir){					   //Mientras quede cifra por convertir
		      aux[i] = numero % 10 + 48;			   //Igualamos la posicion i del array a la unidad mas pequeña de la cifra
		      numero = numero / 10;				   //Dividimos por 10 la cifra
		      i++;									   //Aumentamos la posicion donde gruardarmos la proxima cifra
		      if (numero == 0 ){					   //Si ya no hay mas numero por corvertir se indica pasa salir
		      convertir = 0; }}
		   
		   for (j=0; j<i ;j++){						//Copiamos en la cadena dada, la obtenida dada la vuelta
		       *(cadnum+j) = aux[i-j-1];}			
			  *(cadnum+i) = 0;                       //Ponemos un 0 en la ultima como fin de cadena               	
		 }



    





                           

	
