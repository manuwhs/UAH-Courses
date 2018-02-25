#include "prac4_reemplazo.h"
#include "prac4_sys.h"

#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
	/* En el algoritmo LRU buscaremos entre las macros del sistema, aquella cuya pagina asociada
	que haya sido accedida la última, es decir:
	Buscamos aquella lista en la RAM con el "timestamp" más bajo. 
	Suponemos que la ultima macro tiene como parametro "next = NULL" 

	Seguimos usando una lista enlazada pero ya no sera FIFO, nos servira para hacer barridos de marcos
*/

	
struct mdp_desc *antiguo = NULL;
struct mdp_desc *nuevo = NULL; 

void init_gestion_marcos(void){}

int  reemplazar_marco(void){
	
	/* Indicaremos cual es el marco a liberar y lo quitaremos de la lista enlazada */
	
	unsigned int marca_tiempo = 0;	/* Marca de tiempo más alta de entre las paginas de las macros */
	struct mdp_desc *aux;		/* Estructura de macro para hacer el barrido de macros*/
	struct mdp_desc *ant;		/* Escturctura de marco para poner el elemento de la lista enlazada
					  anterior al que hay que eliminar */
	int pag_elim;			/* Pagina asociada a el marco */
	int mal;			/* Marco a liberar */

	/* Hacemos un barrido desde el elemento más antiguo hasta el final de la lista "next = NULL"
	viendo cual de las macros tiene la página con menor marca de tiempo, esta es el marco a liberar */

	aux = antiguo;				/* Empezamos el barrido por el primer elemento de la cola */
	pag_elim = antiguo->pagina;		/* Obtenemos la posible pagina que vamos a quitar de la RAM */
	marca_tiempo = tdp[pag_elim].timestamp;	/* Damos como primer valor a comparar la marca de tiempo
						del marco mas antiguo */
	mal = tdp[pag_elim].marco;
	while(aux->next!= NULL){		/* Hasta que no nos encontremos con el elemento mas nuevo 
						de la FIFO, el ultimo, con "next=NULL" */
		if (tdp[aux->next->pagina].timestamp <= marca_tiempo) { 
		/* Si el siguiente elemento de la lista a aux ha sido accedido hace mas tiempo */
				/* Actualizamos la marca de tiempo de referencia */
			marca_tiempo = tdp[aux->next->pagina].timestamp;
			ant = aux;				/* Elemento anterior al marco a eliminar */
			mal = tdp[aux->next->pagina].marco;	/* Indicamos que por ahora esta es el marco e elim */

		}
	aux = aux->next;		/* Avanzamos en la FIFO */
	}
/* Una vez sabemos el marco a quitar, lo que tenemos que hacer es que el anterior elemento de la lista enlazada
apunte al elemento al que apuntaba el marco a quitar. A menos que dicho marco sea el antiguo */
	if (mal == tdp[antiguo->pagina].marco) {	/* Si el marco a eliminar es el primer elemento */
		antiguo = antiguo->next;
	}
	else {
		pag_elim = ant->next->pagina;	/* Obtenemos la pagina que vamos a quitar de la RAM */
		ant->next = ant->next->next;
	}
	

	if(tdp[pag_elim].modificado== 1){	/* Si la pagina que vamos a quitar de la RAM fue modificada */
		page_out(pag_elim);	/* Guardamos la pagina en disco */
	}	
	tdp[pag_elim].presencia = 0;		/* Ponemos en la tabla del paginas todos los bits de estado a 0 */
	tdp[pag_elim].modificado = 0;

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

