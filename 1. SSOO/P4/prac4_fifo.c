#include "prac4_reemplazo.h"
#include "prac4_sys.h"

#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

	/* En el algoritmo FIFO elegimos como macro a liberar aquella que contenga la pagina 
	que se cargo hace más tiempo. Para saber dicha página directamente, lo que haremos será
	hacer una lista enlazada utilizando el campo "next" de las estructuras de tipo mdp_desc.
		-> Suponemos que el programa principal se encarga de poner a cada macro
		   la pagina que lleva asociada es decir, rellena mdp_table[macro].pagina 
		   y rellena tambien la tdp[pagina].macro

	Crearemos 2 punteros "antiguo" y "nuevo" donde antiguo apunta a la macro cuya pagina lleve más tiempo
	cargada en memoria y "nuevo" apuntara a la macro con el elemento que se cargo hace menos tiempo.
	Las paginas entran y salen de la lista enlazada de macros de forma FIFO, para ello,
	cada macro, en su variable "next" apunta a la macro más nueva despues de ella misma, y la última
	de todas apunta a NULL.

	Cuando de desee cargar una nueva pagina en una macro, la anterior mas nueva debe apuntar a esta
	y el puntero "nuevo" apuntara a esta ultima pagina en ser cargada en macro.

	Si esta pagina esta reemplzadando a otra, entonces la pagina que va a ser remplazada es la que estaba
	siendo apuntada por "antiguo", por lo que ahora "antiguo" debe apuntar a la siguiente macro, que
	como digimos debe apuntar a la siguiente macro más nueva que sera ahora la mas antigua.
	
 */


struct mdp_desc *antiguo = NULL;
struct mdp_desc *nuevo = NULL; 

void init_gestion_marcos(void){ }

int reemplazar_marco(void) {

	/* Indicaremos cual es el marco a liberar y lo quitaremos de la lista enlazada */

	int pag_elim;			/* Pagina asociada a la macro que reemplazaremos */
	int mal;			/* Macro A Liberar */

	pag_elim = antiguo->pagina;	/* Obtenemos la pagina que vamos a quitar de la RAM */
	mal = tdp[pag_elim].marco;	/* Obtenemos la macro donde esta la pagina que queremos quitar de
					la RAM ya que esta es la macro a liberar */


	if(tdp[pag_elim].modificado== 1){	/* Si la pagina que vamos a quitar de la RAM fue modificada */
		page_out(pag_elim);	/* Guardamos la pagina en disco */
	}				
				
	tdp[pag_elim].presencia = 0;		/* Ponemos en la tabla del paginas todos los bits de estado a 0 */
	tdp[pag_elim].modificado = 0;

	antiguo = antiguo->next;	/* Como vamos a quitar dicha macro, que se convertira en la mas nueva,
					el siguiente elemento más antiguo será aquel al que apuntaba
					el anterior elemento más antiguo */

	return mal;			/* Devolvemos la macro a liberar */

}


void asignar_marco( int marco) {
	
/* Lista enlazada normal donde vamos poniendo el nuevo elemento despues del anterior mas nuevo 
Esta funcion solo hace eso, añadir el nuevo elemento a la lista enlazada,
la funcion de reemplazar se encargara en cualquiera de los casos de elimnar
de la lista la macro que haya quedado liberada */

	if(antiguo == NULL) {			/* Si la cola está vacía */
		antiguo = &mdp_table[marco];	/*El antiguo y el nuevo elemento apuntarán al marco que
						nos estén dando */
		nuevo = antiguo;	
		antiguo->next = NULL;		/* Ponemos a NULL para indicar que no hay siguiente elemento */	
	}
	else {					/* Cuando ya hay elementos en la lista */
		nuevo->next = &mdp_table[marco];/* Enlazamos el nuevo elemento despues del anterior mas nuevo */
		nuevo = nuevo->next;		/* Indicamos que el más nuevo es que tiene esta ultima
						página cargada */	
		nuevo->next = NULL;		/* Ponemos a NULL para indicar que no hay siguiente elemento */
	}		
}


void imprimir_gestion_marcos()  {
	struct mdp_desc *aux = antiguo;		/* Haremos un barrido de el marcos que hay en la FIFO */

	int pos = 1;
	int marco = 0;
	int pagina = 0;
	printf("\nInforme de gestion de marcos mediante Algoritmo FIFO\n");
	printf("\nLista de marcos en uso:\n");
	printf("-----------------------\n");
	printf("\n\nPos. en el FIFO\tNum. Marco\tPagina\tReferencia\tModificado\n");
	while(aux != NULL){			/* Hasta que no nos encontremos con el elemento mas nuevo 
						de la FIFO, el ultimo, con "next=NULL" */
		pagina = aux->pagina;		/* Obtenemos su pagina asociada y su macro */
		marco = tdp[pagina].marco;
		printf("%d\t",pos);
		printf("\t%d\t",marco);
		printf("\t%d\t",pagina);
		printf("\t%d\t",tdp[pagina].referencia);
		printf("\t%d\n",tdp[pagina].modificado);
		aux = aux->next;
		pos++;
	}
	printf("\n-FIN DEL INFORME-\n");
}




