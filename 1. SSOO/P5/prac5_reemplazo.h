/* NO MODIFICAR ESTE ARCHIVO!!! */

/* Archivo de cabecera con las funciones que debe implementar el alumno	*/

/* init_gestion_marcos																	*/
/* Esta función será llamada desde main() para inicializar el sistema	*/
/* de gestión de marcos de página implementado por el alumno, por lo		*/
/* debe implementar las inicializaciones necesarias que el alumno			*/
/* considere oportunas.																	*/

void init_gestion_marcos( void);

/* asignar_marco( marco)																*/
/* Esta función añadirá un marco a la lista de marcos asignados a un 	*/
/* proceso. 																				*/

void asignar_marco( int marco);

/* reemplazar_marco																		*/
/* Esta función será llamada cuando en el sistema no haya marcos libres */
/* para asignar a un proceso y sea necesario reemplazar un marco de los	*/
/* que dicho proceso ya tiene. La función elegirá un marco a descartar  */
/* empleando para ello un algoritmo particulari( p.e. FIFO), 				*/
/* des-proyectará la página que estuviera empleando el marco, y 			*/
/* devolverá dicho número de marco para que el manejador de fallo de 	*/
/* página pueda utilizarlo.															*/

int reemplazar_marco( void);

/* imprimir_gestion_marcos																
 * Esta función imprimirá información de estado del sistema de gestión 
 * de marcos de página del proceso; la lista de marcos, la página que
 * está proyectada sobre ellos, etc.												*/

void imprimir_gestion_marcos( void);

