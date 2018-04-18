#include <LPC17xx.h>
#include "delay.h"
#include "math.h"
#define DAC_BIAS	0x00010000  // Settling time a valor 2,5us
int32_t contadorejes = 0;		//variable  que cuenta el numero de ejes


#define ESPERANDO		0
#define DETECTANDO_EJES 1
#define CALCULANDO 2
#define ERROR_EJES		3
#define MUESTRA_VEL 4
#define MUESTRA_DIR 5
#define MUESTRA_EJES 6



#define D1toD2		0
#define D2toD1		1

int contadorejes,last,velocidad; 
int event;
volatile uint32_t sTicks = 0;
uint32_t contador_ms = 0;	// Esta variable incrementara su valor cada ms durante toda la ejecucion del programa.
uint8_t modo = ESPERANDO;
uint32_t tiempos_ejes_d1[100];	// Array para ir colocando los tiempos de llegada de los ejes del tren en d1
uint32_t tiempos_ejes_d2[100];	// Array para ir colocando los tiempos de llegada de los ejes del tren en d2
uint32_t retardo_medio_ms;	
uint16_t d1_cont;				// Cuenta el numero de ejes que ha detectado d1
uint16_t d2_cont;				// Cuenta el numero de ejes que ha detectado d2
uint8_t direccion = 0;			// Direccion del tren
uint32_t Alarma[64];
int i;
uint32_t delay_2s = 0;				// Esta variable es usada de la siguiente manera:
		// Cuando se quiera introducir un retardo de 2s, tenemos que hacer delay_2s = contador_ms + 2000;
		// Y en la interrupccion del timer se combrobara siempre si el contador_ms == delay_2s, de ser asi, hace lo que debe.
uint32_t delay_10s = 0;			// Hace lo mismo pero con un delay de 10s.
uint32_t delay_20s = 0;			// Hace lo mismo pero con un delay de 20s.



	for (i = 0; i < 64; i++){
		Alarma[i]=((uint16_t)(511 + 512*(sin(2*PI*((float)i/num_samples_cycle))))<<6);
		Alarma[i]|=DAC_BIAS;
	}
	
	
void configuracion_manual_Systick(){
	
	//	NVIC_SetPriority(SysTick_IRQn,0x02);
	
		SysTick->VAL = (SysTick->CALIB)/(10*64);	// Ponemos interrupccion del timer a 64Kbps.(CURRENT)
		SysTick->LOAD = (SysTick->CALIB)/(10*64);	   // Valor con el que se cargara el contador cuando llegue a 0	(RELOAD)
		SysTick->CTRL = (0x1 << 1)	// Systick Enable
						|(0x1 << 1)	// Interrupt when counter = 0 Enabled
						|(0x1 << 1); // Select internal CPU clock as CLK signal
						
	}
	
void SysTick_Handler (void)			// Rutina (ISR) de atención...
                                    //... a la excepción 15 -del SYSTICK-
{
  sTicks++;

  if(sTicks==64)	// A frecuencia de 64 kbps
  {
  	sTicks=0;
  	contador_ms++;
  	
  }
  else {
    if (modo == ERROR_EJES){
  		LPC_DAC->DACR = ( Alarma[sTicks]<< 6) | DAC_BIAS;
  }	
  }
  
   if (contador_ms == delay_20s){  // Si se cumple el timeout de 20 s
 	modo = ESPERANDO;  
}
     if (contador_ms == delay_2s){  // Si se cumple el timeout de 2 s
  		if (modo == MUESTRA_VEL){
  			modo = MUESTRA_DIR;
  			delay_2s = timepo_ms + 2000;
  		}
    	if (modo == MUESTRA_DIR){
  			modo = MUESTRA_EJES;
  			delay_2s = timepo_ms + 2000;
  		}
    	if (modo == MUESTRA_EJES){
  			modo = ESPERANDO;
  		}  
	}
  
  
   if (contador_ms == delay_10s){  // Si se cumple el timeout de 10 ms
   		modo = CALCULANDO;
   		if (d1_cont == d2_cont){	// SI no ha habido error y cada sendor ha detectado el mismo numero de ejes
   			if (direccion == D1toD2){	// Calculamos retardo medio para una direccion
   				
   				retardo_medio_ms = 0;
   				for (i = 0; i < d1_cont; i++){
   					retardo_medio_ms += tiempos_ejes_d1[i]-tiempos_ejes_d2[i];	
   					if (tiempos_ejes_d1[i]<tiempos_ejes_d2[i]){
   						modo = ERROR_EJES;
   						delay_20s = contador_ms + 20000;
   						return;
   					}
   				}
   				retardo_medio_ms = retardo_medio/d1_cont;
   				
   			}
   		   	else if (direccion == D2toD1){	// Calculamos retardo medio para la otra direccion
   				
   				retardo_medio_ms = 0;
   				for (i = 0; i < d1_cont; i++){
   					retardo_medio_ms += tiempos_ejes_d2[i]-tiempos_ejes_d1[i];
					if (tiempos_ejes_d2[i]<tiempos_ejes_d1[i]){
   						modo = ERROR_EJES;
   						delay_20s = contador_ms + 20000;
   						return;
   					}	
   				}
   				retardo_medio_ms = retardo_medio/d1_cont;
   				
   			}	
   			modo = MUESTRA_VEL;
   			delay_2s = contador_ms + 2000;
   			
   		}
   		else {
   			modo = ERROR_EJES;
   			
   		}
   		d1_cont = 0;
   		d2_cont = 0;
   }
	 
}	
	
//DAC
void DACInit(void){

  LPC_PINCON->PINSEL1 &= ~(3 << 20);	
  LPC_PINCON->PINSEL1 |= (2 << 20);  		/* set p0.26 to DAC output */  

  LPC_DAC->DACCTRL = 0;	 			// Disable all options
  LPC_DAC->DACR = (0x0<<6)|DAC_BIAS;			// Set voltage to minimum and set BIAS.	 3FF is max
}

uint32_t buffer_DAC[100];
uint32_t num_samples_cycle = 10;
uint32_t time_DAC = 0;



// Dentro de la interrupcion periodica
		time_DAC++;
		LPC_DAC->DACR = buffer_DAC[time_DAC%num_samples_cycle];

void Config_pulsadores (void)
 {
 
    LPC_PINCON->PINSEL1 &= ~(3 << 12);	 		/* Para interrupcion normal -> EINT3 */
   	LPC_GPIO0->FIODIR &= ~(1 << 22);		   	/* Direction = Input */
	LPC_GPIOINT->IO0IntEnF |= (1 << 22);		/* Falling edge interrupt in P0.22 */
  
    LPC_PINCON->PINSEL1 &= ~(3 << 14);	 		/* Para interrupcion normal -> EINT3 */
   	LPC_GPIO0->FIODIR &= ~(1 << 23);		   	/* Direction = Input */
	LPC_GPIOINT->IO0IntEnF |= (1 << 23);		/* Falling edge interrupt in P0.23 */
	
	NVIC_SetPriority(EINT3_IRQn, 0x06);	  //configuramos la prioridad de la interrupcion y la activamos
	NVIC_EnableIRQ(EINT3_IRQn);
}


// FUNCION DE ATENCION A LA INTERRUPCION

void EINT3_IRQHandler(void) {

	
	if (((LPC_GPIOINT->IO2IntStatF >> 10) & 0x01)==1) { // if P0.22 falling edge 
		// BOTON QUE SIMULA DETECCION DE EJES de D1
		if (modo = ESPERANDO){
			modo = DETECTANDO_EJES;
			direccion = D1toD2;
		}
		// Poner Codigo para generar señal de 5 ms
		tiempos_ejes_d1[d1_cont] = contador_ms;   // Guardamos tiempo de la deteccion en el array
		d1_cont++;
		delay_10s = contador_ms + 10000;		// Vuelve a introducir retardo de 10 s desde este momento
		
		LPC_GPIOINT->IO0IntClr |= 1 << 22;		//Clear interrupt	
	}	
	
	if (((LPC_GPIOINT->IO2IntStatF >> 11) & 0x01)==1) { 	// if P0.23 falling edge 
		// BOTON QUE SIMULA DETECCION DE EJES de D2
		if (modo = ESPERANDO){
			modo = DETECTANDO_EJES;
			direccion = D2toD1;
		}
		// Poner Codigo para generar señal de 5 ms
		tiempos_ejes_d2[d1_cont] = contador_ms;   // Guardamos tiempo de la deteccion en el array
		d2_cont++;
		delay_10s = contador_ms + 10000;	// Vuelve a introducir retardo de 10 s desde este momento
		
		LPC_GPIOINT->IO0IntClr |= 1 << 23;		//Clear interrupt	
	}
	}



//funcion display
void display(int numero)
{
switch(numero){

case 0: 					
return (0x3F<<20);	  // Pone un 0
           break;  
case 1: 							 
return (0x06<<20); // Pone un 1
           break;
case 2: 					
return (0x5B<<20);	 // Pone un 2
           break;
case 3: 							 
return (0x4F<<20);		//pone un 3
           break;
case 4: 							 
return (0x66<<20);	  //pone un 4
           break;
 case 5: 							 
return (0x6D<<20);	  //pone un 5
           break;
case 6: 							 
return (0x7D<<20);	   //pone un 6
           break;
case 7: 							 
return (0x07<<20);		//pone un 7
           break;
case 8: 							 
return (0x7F<<20);		//pone un 8
           break;
case 9: 							 
return (0x67<<20);		// pone un 9
           break;
case 10: 							 
return (0x40<<20);		  // Seleciona "- -"
           break;

}
}

void main(void)
{
config();
Config_botones();
display();
DACInit();
 
 
  while(1)
  {
	switch (modo){
		case MUESTRA_VEL:  // Poner funcion que muestra cada cosa.
		
		case MUESTRA_DIR:
			
		case MUESTRA_EJES:
			
		case DETECTANDO_EJES:
	}




  }
}




void config (void)
{

 LPC_PINCON->PINSEL4 |= (1 << (10*2)); // Configuración de la interrupcion EINT2 P2.10 --> PINSEL4.24 y PINSEL4.25
  LPC_SC->EXTMODE |= (1<<2); // Configuración activa por flanco de bajada	 --> EXTMODE.2 
  NVIC_SetPriority(EINT2_IRQn, 0x02); // Configuramos prioridad 2 a la interrupción EINT2 (IRQ20) --> IPR5
  NVIC_EnableIRQ(EINT2_IRQn); // Habilitar la interrupción EINT2 --> ISER0.20

//entradas
LPC_GPIO2->FIODIR &= ~(1<<10);	// P2.10 definido como entrada	pulsador1
LPC_GPIO2->FIODIR &= ~(1<<11); // P2.11 definido como entrada   pulsador2

//salidas
  LPC_GPIO1->FIODIR |= 0x1 << 8;	 //p1.8 definido como salida, segmento a del display
  LPC_GPIO1->FIODIR |= 0x1 << 9;	 //p1.9 definido como salida, segmento b del display
  LPC_GPIO1->FIODIR |= 0x1 << 10;	 //p1.10 definido como salida, segmento c del display
  LPC_GPIO1->FIODIR |= 0x1 << 14;	 //p1.14 definido como salida, segmento d del display
  LPC_GPIO1->FIODIR |= 0x1 << 15;	 //p1.15 definido como salida, segmento e del display
  LPC_GPIO1->FIODIR |= 0x1 << 16;	 //p1.16 definido como salida, segmento f del display
  LPC_GPIO1->FIODIR |= 0x1 << 17;	 //p1.17 definido como salida, segmento g del display

  LPC_GPIO1->FIODIR |= (0x3<<18);      // Configuracion las 2 señales de seleccion de display P.18 y P1.19
  LPC_GPIO1->FIOSET |= (0x1<<18)       //P1.18 para las decenas
  LPC_GPIO1->FIOCLR |= (0x1<<19)       //P.19 para las unidaes   


 
  
 void vision7seg(int num){  
                             //variable para ver en que escala estamos				                             										  //Cuando el resto sea 1, i contentra el numero de la escala
	LPC_GPIO1->FIOSET  = segment7;  //Apaga todos los leds del 7s	
    LPC_GPIO1->FIOCLR  = conv7s(num);  //Enciende leds necesarios
    }
   



  
void muestra_vel(int num){	
    uint8_t decenas = num/10;
	uint8_t unidades = num%10;	   
	
	 LPC_GPIO1->FIOPIN ^= (0x3<<18);// Activar el display de las unidades
	 vision7seg(decenas); //(decenas desactivado)

	LPC_GPIO1->FIOPIN ^= (0x3<<18);// Activar el display de las decenas (unidades desactivado)
	vision7seg(unidades);  }	




void muestra_ejes(int num){	
    uint8_t decenas = num/10;
	uint8_t unidades = num%10;	   
	
	 LPC_GPIO1->FIOPIN ^= (0x3<<18);// Activar el display de las unidades
	 vision7seg(decenas); //(decenas desactivado)

	LPC_GPIO1->FIOPIN ^= (0x3<<18);// Activar el display de las decenas (unidades desactivado)
	vision7seg(unidades); }



void muestra_sentido(int num){	
    uint8_t decenas = num/10;
	uint8_t unidades = num%10;	   
	
	 LPC_GPIO1->FIOPIN ^= (0x3<<18);// Activar el display de las unidades
	 vision7seg(decenas); //(decenas desactivado)

	LPC_GPIO1->FIOPIN ^= (0x3<<18);// Activar el display de las decenas (unidades desactivado)
	vision7seg(unidades);	 }



 
}

