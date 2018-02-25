#include "prac4_reemplazo.h"
#include "prac4_sys.h"

#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

	/* El algoritmo FIFO con segunda oportunidad lo que hace es ver desde el mas antiguo al mas nuevo
	quien los macros cuya pagina tiene el bit de referencia a 1.
	Si lo tienen lo que hace es ponerlo a 0 y ponerlas como elemento más nuevo.
	Si se encuentran un bit de referencia a 0, esta es la macro a liberar y si no,
	se aplica el algoritmo FIFO normal.


	En cuanto al almacenamiento y liberacion de las macros en una lista enlazada FIFO, seguimos igual,
	simplemente vamos enlazando la más nueva en el campo "next" de la anterior más nueva y al eliminar
	ponemos la más vieja como la que tenia en el campo "next" la anterior mas vieja.

 */


struct mdp_desc *antiguo = NULL;
struct mdp_desc *nuevo = NULL; 

void init_gestion_marcos(void){ }

int reemplazar_marco(void) {

	/* Indicaremos cual es el marco a liberar y lo quitaremos de la lista enlazada */

	int pag_elim;			/* Pagina asociada a la macro que reemplazaremos */
	int mal;			/* Macro A Liberar */
	char bit_R;			/* Contendra el bit de referencia de las paginas en las macros */

	/* Tendremos que hacer un barrido desde la macro con la pagina más antigua hasta la más nueva,
	viendo los bits de referencia hasta que encontremos uno con el bit a 0, esta será la página cuya
	macro se liberara. Inicialmente ponemos dicha macro como la de "antiguo" ya que si en el barrido
	todas las paginas tenian el bit a 1, tenemos que poner dicha macro a liberar */

	pag_elim = antiguo->pagina;	/* Obtenemos la posible pagina que vamos a quitar de la RAM */
	bit_R = tdp[pag_elim].referencia; /*Inicialmente el bit de refencia será el del elemento antiguo */

	while (bit_R == 1){			/* Mientras demos 2da oportunidad, reordenamos la FIFO */
		tdp[antiguo->pagina].referencia = 0; 	/* Bit de referencia a 0 */

		nuevo->next = antiguo;		/* Ahora el elemento más nuevo es el que antes era el antiguo */
		nuevo = nuevo->next;		/* Ahora nuevo apunta al que antes era el antiguo */
		antiguo = antiguo->next;	/* El antiguo es el antes era el siguiente mas antiguo */

		nuevo->next = NULL;		/* Indicamos que es el mas nuevo con NULL */
		bit_R = tdp[antiguo->pagina].referencia;	/* Actualizamos el bit de referencia */
	}
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

	/* Para hacer la asignacion lo que haremos será, dado una macro a reemplazar lo que se hace es que su 
	campo "next" apunte a la */

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
	struct mdp_desc *aux = antiguo;		/* Haremos un barrido de la macros que hay en la FIFO */

	int pos = 1;
	int marco = 0;
	int pagina = 0;
	printf("\nInforme de gestion de marcos mediante Algoritmo FIFO Segunda Oportunidad\n");
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






