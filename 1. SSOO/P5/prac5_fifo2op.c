#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "prac5_sys.h"
#include "prac5_reemplazo.h"

extern struct   tdp_entry * tdp;
extern struct mdp_desc *mdp_table;

struct mdp_desc *primero=NULL, *ultimo=NULL; 

void init_gestion_marcos(void){
}

int reemplazar_marco(void)
{
	int pagina=0, marco=0, bit_referencia=0;
	
	ultimo->next=primero;
	pagina=primero->pagina;
	bit_referencia=tdp[pagina].referencia;

	while(bit_referencia==1)
	{
		tdp[pagina].referencia=0;		//Damos una segunda oportunidad a la pagina
		ultimo=primero;				//Avanzamos al siguiente elemento de la lista
		primero=primero->next;
		pagina=primero->pagina;
		bit_referencia=tdp[pagina].referencia;	//Comprobamos el valor del bit de referencia del nuevo elemento
	}
	

	
	marco=tdp[pagina].marco;
	if(tdp[pagina].modificado==1)
		page_out(pagina);
	tdp[pagina].presencia=0;
	primero=primero->next;

	return (marco);
	
	
	
	


}

void asignar_marco( int marco)
{
	
	
	if(primero == NULL)			//Caso en el que la lista FIFO está vacía
	{	
		
		primero = &mdp_table[marco];
		primero->next = NULL;
		ultimo = primero;

	}
	else					//Caso en el que la lista no esta vacía
	{
	
		ultimo->next = &mdp_table[marco];
		ultimo = ultimo->next;
		ultimo->next = NULL;
	}		

}

void imprimir_gestion_marcos()
{
	struct mdp_desc *aux = mdp_table;

	int contador = 1;
	int marco = 0;
	int pagina = 0;
	printf("\nInforme de gestion de marcos mediante Algoritmo FIFO\n");
	printf("\nLista de marcos en uso:\n");
	printf("--------------------------\n");
	printf("\n\nPos en el FIFO\tNum. Marco\tPagina\tReferencia\tModificado\n");
	while(aux != NULL){
		printf("%d\t",contador);
		pagina = aux->pagina;	
		printf("\t%d\t",pagina);
		marco = tdp[pagina].marco;
		printf("\t%d\t",marco);
		printf("\t%d\t",tdp[pagina].referencia);
		printf("\t%d\n",tdp[pagina].modificado);
		aux = aux->next;
		contador++;
	}
	printf("\n-FIN de Informe-\n");



}
