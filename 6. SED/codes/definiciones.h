
#ifndef _definiciones_h_
#define _definiciones_h_
		           ////////       UART0          \\\\\\\


#define UART_ACCEPTED_BAUDRATE_ERROR    3			 // Accepted Error baud rate value (in percent unit)

#define CHAR_8_BIT                      (3 << 0)
#define STOP_1_BIT                      (0 << 2)
#define PARITY_NONE                     (0 << 3)
#define DLAB_ENABLE                     (1 << 7)
#define FIFO_ENABLE                     (1 << 0)
#define RBR_IRQ_ENABLE                  (1 << 0)
#define THRE_IRQ_ENABLE                 (1 << 1)
#define UART_LSR_THRE   				(1 << 5)
#define RDA_INTERRUPT                   (2 << 1)
#define CTI_INTERRUPT                   (6 << 1)

                  ////////       RIT         \\\\\\

#define RIT_RITINT   (1<<0)					// Bit RITINT del registro RICTRL 	(Bit que borra la fuente de la interrupcion con un 1 )
#define RIT_RITENCLR (1<<1)					// Bit RITENCLR del registro RICTRL	 (Hace que RIT = 0 cuando RIT = RITCOMPVAL)	)
#define RIT_RITEN    (1<<3)					// Bit RITEN del registro RICTRL	 (Bit de habilitacion, 1->habilitado)
#define PCONP_RIT_ON (1<<16)				// Bit de habilitación alimentación RIT	 (Bit de alimentacion)

		 ///VARIABLES\\\\

#define m1 20
#define m2 50


extern char conmuta;
extern char comunUART0;

extern float frecuencia;	         //Frecuencia de la señal
extern int contRIT;			 //Contador del RIT (Cada vez que RIT = RITCOMPVAL) 
extern int *pcRIT;		 //Puntero al contador del RIT para poder modificarlo desde funciones

extern int contSIG;			  //Contador de la señal (Cada vez que hay un flanco de bajada de la señal)
extern int *pcSIG;		 //Puntero al contador de señal para poder modificarlo desde funciones

extern int contLED;
extern int *pcLED;

extern int contUART0;
extern int *pcUART0;

extern int leds;
extern int segment7;		   //Pines para configurar como salidas para el 7 segmentos
extern char modo;
extern int calidad;

extern float tiempoRIT;
extern unsigned int baudrate;
extern int escala;
extern int *pescala;

extern char buffer_rx[30];		    // Buffer de recepción de 30 caracteres
extern char buffer_tx[m1][m2];      // Buffer de salida de m * n  caracteres

extern int pos_cadena;
extern char *pcad_rx;			// Puntero de recepción
extern char rx_completa;		// Flag de recepción de cadena que se activa al recibir la tecla return CR(ASCII=13)
extern char *pcad_tx;			// Puntero de transmisión
extern char tx_completa;		// Flag de transmisión de cadena que se activa al transmitir el caracter null
extern char enviofrec;               //Flag que indica si hay que enviar la frecuencia

//FUNCIONES
//Principales
void config(unsigned int leds,  float tiempo_s, int baudrate);				      //Establece la configuracion
void obtfrec(float tiempo_s, float *pfrec, int *pcRIT,int *pcSIG, int calidad);	  //Obtiene la frecuencia
void visionleds(int escala, float fecuencia, char *pcon);						  //Enciende los leds en version 10 leds
void vision7seg(int escala, float fecuencia, char *pconmuta);					  //Enciende los leds en version display 7 segmentos
void controlUART0(char *prx_completa, int *pescala, char *pcomunUART0, char *penviofrec,  char *pmodo, int *pcalidad);	  //Se encarga de gestionar los comandos recibidos
void estadoflags(int *pcUART0, char *pcomunUART, int *pcLED, char *pconmuta);	 //Controla el estado de las flags
			
//Configuraciones
void configRIT( float tiempo_s ) ;					   //Configura el RIT
void configGPIO(unsigned int leds);					   //Configura los pines exepto los del UART0
void configUART0(int baudrate);						   //Configura el UART0
int uart0_set_baudrate(unsigned int baudrate);		   //Establece el baudrate dado

//Herramientas

void conversor(int numero, char * cadnum);				//Convierte entero a cadena y la guarda en cadnum	
int conv7s(int numero);									//Le das el numero que quieres que se vea y devuelve los pines
int conv10leds(int numero);								//Le das los leds que quires que se encienda y devuelve los pines
void tx_cadena_UART0(char *cadena, char *inicio_buffer, char *ptx_completa, int *ppos_cadena); 
														//Envia por UART0 la cadena dada por "cadena"

#endif

