#include "definiciones.h"
#include <LPC17xx.h>

void configGPIO(unsigned int leds){

  LPC_GPIO1->FIODIR |= leds;                // Configuracion de P1.xx definidos como salidas 
  LPC_GPIO1->FIOPIN &= ~(leds);             //Apagamos todos los leds
  LPC_GPIO2->FIODIR &= ~(1 << 11);	        //Configuracion de P2.11 como entrada

  LPC_PINCON->PINSEL4 |= 1 << (12*2);		// Configuracion del P2.12 como EINT2
  LPC_SC->EXTMODE |= 1<< 2;                 // Interrupción activa por flanco de bajada	 --> EXTMODE.2 
  NVIC->IP[EINT2_IRQn] = 0x02 << 3;			// Configuramos prioridad 2 a la interrupcion EINT2 (IRQ20)
  NVIC->ISER[0] = 1 << EINT2_IRQn;	        // Habilitar la interrupcion EINT2  --> ISER0.20

  LPC_PINCON->PINSEL4 |= 1 << (13*2);		// Configuracion del P2.13 como EINT3
  LPC_SC->EXTMODE |= 1<< 3;				    // Interrupción activa por flanco de bajada	 --> EXTMODE.3
  NVIC->IP[EINT3_IRQn] = 0x03 << 3; 		// Configuramos prioridad 3 a la interrupcion EINT3 (IRQ21)	
  NVIC->ISER[0] = 1 << EINT3_IRQn;			// Habilitar la interrupcion EINT3  --> ISER0.21
  		      
}

void configUART0(int baudrate) {
    
    LPC_PINCON->PINSEL0 |= (1 << 4);        // Configuracion del P0.2 como RX0
   	LPC_PINCON->PINSEL0 |= (1 << 6);        // Configuracion del P0.3 como TX0
    LPC_UART0->LCR |= CHAR_8_BIT|STOP_1_BIT|PARITY_NONE;   // Tipo de transmision (8 bits/dato, sin pariad, y 1 bit de stop)

    uart0_set_baudrate(baudrate);                  // Configura Velocidad transmision
    
    LPC_UART0->IER |= THRE_IRQ_ENABLE;      // Habilita la interrupcion para TX
	LPC_UART0->IER |= RBR_IRQ_ENABLE; 		// Habilita la interrupcion para RX 
    NVIC_EnableIRQ(UART0_IRQn);             // Habilita la interrupcion UART0(for Cortex-CM3 NVIC)
   
}

void configRIT( float tiempo_s ) {	
  
  unsigned int ticks;
  unsigned int velocidadRIT =  25000000;
  ticks = tiempo_s * velocidadRIT;		//Calcula el numero de ciclos necesarios para esperar tiempo_s segundos
  LPC_SC->PCONP   	|= PCONP_RIT_ON;	// Power Control: Alimenta el RIT

  LPC_RIT->RICTRL 	&= ~RIT_RITEN;		// Deshabilita RIT para programarlo, pone un 0 en  RIT_RITEN
  LPC_RIT->RICTRL 	&= ~RIT_RITENCLR;	// Pone un 0 en RIT_RITENCLR
  LPC_RIT->RICTRL 	&= ~RIT_RITINT;      // Bit que cuando a 1 borra la fuente de interrupcion puesto a 0  

  LPC_RIT->RICOUNTER = 0;			    // Inicializa contador del RIT a 0
  LPC_RIT->RICOMPVAL = ticks;       	// Da valor al registro de comparacion 	RITCOMPVAL
  NVIC_EnableIRQ(RIT_IRQn);			    // Habilita la interrupcion del RIT

  LPC_RIT->RICTRL 	|= RIT_RITENCLR;	// Pone un 1 en RIT_RITENCLR
  LPC_RIT->RICTRL 	|= RIT_RITINT;
  LPC_RIT->RICTRL 	|= RIT_RITEN;		// Habilita RIT, pone un 1 en  RIT_RITEN
}

int uart0_set_baudrate(unsigned int baudrate) {
    int errorStatus = -1; //< Failure

    // UART clock (FCCO / PCLK_UART0)
   // unsigned int uClk = SystemFrequency / 4;
    unsigned int uClk =SystemCoreClock/4;
    unsigned int calcBaudrate = 0;
    unsigned int temp = 0;

    unsigned int mulFracDiv, dividerAddFracDiv;
    unsigned int divider = 0;
    unsigned int mulFracDivOptimal = 1;
    unsigned int dividerAddOptimal = 0;
    unsigned int dividerOptimal = 0;

    unsigned int relativeError = 0;
    unsigned int relativeOptimalError = 100000;

    uClk = uClk >> 4;  // Divide por 16

     // Ecuacion:  BaudRate = uClk * (mulFracDiv/(mulFracDiv+dividerAddFracDiv) / (16 * DLL)
     
     // Los valores de mulFracDiv y dividerAddFracDiv deberian estar entre los rangos:
     // 0 < mulFracDiv <= 15, 0 <= dividerAddFracDiv <= 15
     
    for (mulFracDiv = 1; mulFracDiv <= 15; mulFracDiv++) {
        for (dividerAddFracDiv = 0; dividerAddFracDiv <= 15; dividerAddFracDiv++) {
            temp = (mulFracDiv * uClk) / (mulFracDiv + dividerAddFracDiv);

            divider = temp / baudrate;
            if ((temp % baudrate) > (baudrate / 2))
                divider++;

            if (divider > 2 && divider < 65536) {
                calcBaudrate = temp / divider;

                if (calcBaudrate <= baudrate) {
                    relativeError = baudrate - calcBaudrate;
                } else {
                    relativeError = calcBaudrate - baudrate;
                }

                if (relativeError < relativeOptimalError) {
                    mulFracDivOptimal = mulFracDiv;
                    dividerAddOptimal = dividerAddFracDiv;
                    dividerOptimal = divider;
                    relativeOptimalError = relativeError;
                    if (relativeError == 0)
                        break;
                }
            }
        }

        if (relativeError == 0)
            break;
    }

    if (relativeOptimalError < ((baudrate * UART_ACCEPTED_BAUDRATE_ERROR) / 100)) {

        LPC_UART0->LCR |= DLAB_ENABLE; 	// importante poner a 1
        LPC_UART0->DLM = (unsigned char) ((dividerOptimal >> 8) & 0xFF);
        LPC_UART0->DLL = (unsigned char) dividerOptimal;
        LPC_UART0->LCR &= ~DLAB_ENABLE;	// importante poner a 0

        LPC_UART0->FDR = ((mulFracDivOptimal << 4) & 0xF0) | (dividerAddOptimal & 0x0F);

        errorStatus = 0; //< Success
    }

    return errorStatus;
}
