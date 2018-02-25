#include <LPC17xx.H>
#include <string.h>
#include "definiciones.h"

                          /////   VARIABLES  \\\\


//Contadores con sus punteros
int contRIT = 0;			       //Contador del RIT (Cada vez que RIT = RITCOMPVAL) 
int *pcRIT = &contRIT;		       //Puntero al contador del RIT para poder modificarlo desde funciones
int contSIG = 0;			       //Contador de la señal (Cada vez que hay un flanco de bajada de la señal)
int *pcSIG = &contSIG;		       //Puntero al contador de señal para poder modificarlo desde funciones
int contLED;    		           //Contador del LED para conmutarlo 
int *pcLED = &contLED;					       //Puntero al contador del LED para poder modificarlo desde funciones
int contUART0;			   	       //Contador del UART0 para enviar la informacion 
int *pcUART0 = &contUART0;				       //Puntero al contador del UART0 para poder modificarlo desde funciones

//Variables generales
int leds = (0x3FF<<20);			       //Pines a configurar como salidas para los leds
int segment7 = (0xFF<<20);			   //Pines para configurar como salidas para el 7 segmentos
char modo = 1;						   //Modo de enseñar frecuencia
float tiempoRIT = 0.00001;		       //Tiempo en segundos que tarda para que RIT = RITCOMPVAL
unsigned int baudrate = 19200;	   //Velocidad de transmision asincrona en bits/seg
int escala = 1000;				   //Escala en la que estamos (inicializada 10 - 100)
int *pescala = &escala;			   //Puntero a la escala para usarla con otras funcines
float frecuencia;	               //Frecuencia de la señal 
char conmuta = 0;			       // Flag que indica si hay que conmutar el led
char comunUART0 = 0;			       // Flag que indica si se envia la informacion por el UART0
char enviofrec = 0;                                //Flag que indica si hay que enviar la frecuencia
int calidad = 10;

//Variables para UART0
char buffer_rx[30];	           	   // Buffer de recepción de 30 caracteres
char buffer_tx[m1][m2];                   // Buffer de envio de 10 cadenas de 30 caracteres
int pos_cadena = 0;                    //Posicion de la ultima cadena enviada + 1, Posicion donde de escribira la siguiente
char *pcad_rx = buffer_rx;			           // Puntero de recepción
char rx_completa = 0;		           // Flag de recepción de cadena que se activa al recivir un caracter
char *pcad_tx = buffer_tx[0];			 // Puntero de transmisión
char tx_completa = 1;	    	   // Flag de transmisión que es 1 cuando se puede transmitir

int main(void){

  config(leds,tiempoRIT,baudrate);                                             //Configura todo

  while (1){	  

  estadoflags(pcUART0, &comunUART0 , pcLED, &conmuta);                         //Comprueba si hay que activar algun flag 

  obtfrec(tiempoRIT, &frecuencia, pcRIT, pcSIG, calidad);	                           //Obtiene frecuencia

  switch(modo){												  //Veamos en que modo queremos mostrar los leds
    case 1:													 //Muestra los leds, en cualquier situacion
    visionleds(escala, frecuencia, &conmuta);
    break;
	case 2:													 //Muestra el display, en cualquier situacion
    vision7seg(escala, frecuencia, &conmuta);
    break; 
};                                    

  controlUART0(&rx_completa, pescala, &comunUART0, &enviofrec, &modo, &calidad);	               //Ejecuta las operaciones del UART0                                          //Se ocupa de la comunicacion asincrona 
}
}






