/* NO MODIFICAR ESTE ARCHIVO!!! */

/* Tamaño de página en bytes	*/

#define PAGE_SIZE 256

/* Estructuras de datos */

/* La estructura tdp_entry describe una entrada de la Tabla de Páginas */

struct tdp_entry {
	int marco;			/* Marco sobre el que está proyectada la página				*/
	char presencia;	/* Representa el "bit" de presencia								*/
	char referencia;	/* Representa el "bit" de referencia							*/
	char modificado;	/* Representa el "bit" de modificación							*/
};

/* La estructura mdp_desc es un descriptor de marco de página			  			*/
/* El sistema operativo emplea esta estructura para la gestión interna 			*/
/* de los marcos de página															  			*/

struct mdp_desc {
	int pagina;						/* Página proyectada sobre el marco.				*/
	struct mdp_desc * next;		/* Campo para construir listas enlazadas			*/
};

/* Estructuras de gestión de páginas y marcos de página								*/

/* tdp representa la Tabla de páginas. Es un array cuyo tamaño depende			*/
/* del tamaño de la memoria virtual (4096 bytes) y el tamaño de la página		*/
/* (256 bytes).																					*/

/* mdp_table es un array de estructuras mdp_desc que sirve para administrar	*/
/* los marcos de página; por ejemplo para mantener un alista de marcos libres	*/
/* o para implementar algoritmos de reemplazo como FIFO								*/


extern struct   tdp_entry * tdp;
extern struct   mdp_desc * mdp_table;

/* Funciones exportadas por la biblioteca													*/

/* init_system inicializa la TDP y el array de descriptores de marco de			*/
/* página. El parámetro recibido es la cantidad de memoria física especificado
 * en número de marcos de página.
 */

/* fallo_de_pagina es la función que implementa el manejador de fallo de		*/
/* página. Debe ser llamada por la MMU cuando se detecta una página no			*/
/* presente. Esta función obtiene un marco y lo proyecta en la TDP en la		*/
/* página correspondiente a la dirección virtual que recibe como parámetro.	*/
/* Para obtener un marco, o bien lo consigue de entre los marcos libres del	*/
/* sistema, o bien emplea el algoritmo de reemplazo de páginas (que debe		*/
/* implementar el alumno) para conseguir dicho marco.									*/

/* page_out es la función que debe ser invocada para salvar a disco una página
 * modificada. En este caso sólo se lleva una estadística del número de
 * páginas que se habrían llevado a disco.
 */

void fallo_de_pagina( int dir_virtual);
void page_out( int pagina);



/* Estas funciones son de uso interno 	*/
/* El alumno no debe necesitar usarlas */


void init_system( int tam_memoria);
void init_tdp( int total_paginas);
void init_mdp( int total_marcos);
void imprimir_estado( void);
int obtener_marco( void);
int obtener_marco_libre( void);
void devolver_marco_libre( int marco);
void page_in( int pagina);

