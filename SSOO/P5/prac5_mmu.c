#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "prac5_mmu.h"
#include "prac5_sys.h"
#include "prac5_reemplazo.h"

extern struct tdp_entry * tdp;


int mmu_sim(int dir_virtual,char operacion )
{
	int dir_fisica=0;
	//char operacion='r';
	int mascara1=0xFF00, mascara2=0x00FF;
	int pagina=0, desplazamiento=0, aux=0;
	
	desplazamiento = dir_virtual & mascara2;
	aux = dir_virtual & mascara1;
	pagina = aux >> 8;

	//printf("\ndesplazamiento %d \n",desplazamiento);
	//printf("\npagina %d \n",pagina);

	if(tdp[pagina].presencia == 0){
	
		fallo_de_pagina(dir_virtual);
		//tdp[pagina].presencia = 1;
		tdp[pagina].referencia = 1;

		
		/*if( operacion == 'w')
			tdp[pagina].modificado = 1;
		else
			tdp[pagina].modificado = 0;*/
	return 	((tdp[pagina].marco)<<8)+desplazamiento;	
	
	}


	else{
		
		if((operacion == 'w') || (operacion =='r')){
			tdp[pagina].referencia=1;}
		if(operacion=='w'){
			tdp[pagina].modificado=1;}
		return ((tdp[pagina].marco)<<8)+desplazamiento;
	}
	
	//return -1;

}
