/*  				SIMULACION MMU 
 Tenemos un sistema con:
	Páginas de 256 Bytes -->  0x00 a 0xFF
	Memoria Virtual: 4096 Bytes -->  Numero de Páginas = 16 --> 0x0 a 0xF
	Las direcciones posibles de memoria virtual van de 0x000 a 0xFFF


Suponemos que la tabla de paginas está inicializada 
*/


#include "prac4_sys.h"

#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int mmu_sim( dir_virtual, operacion){
	int num_pag;			/*Numero de Pagina a la que accedemos */
	int desp;			/*Desplazamoiento */
	int dir_real;			/* Direccion real de la macro + Desp de la direccion */
	
	num_pag = dir_virtual/256;
	desp = dir_virtual-num_pag*256;

	tdp[num_pag].timestamp = globalclk;	/* Escribimos el instante de acceso (Para el LRU)*/

	if (tdp[num_pag].presencia == 1){	/* Si la pagina está en una macro (RAM) */
		tdp[num_pag].referencia = 1;	/* Actualizamos el bit de Referencia (Para el FIFO2op) */

		if(operacion == 'w') {		/* Si es una operacion de escritura */ 
			tdp[num_pag].modificado = 1;	/*Indicamos que se ha modificado la pagina */
		}
	}
	else {					/* Si la pagina no está cargada en memoria. */
		fallo_de_pagina( dir_virtual);  /* Indicamos fallo de pagina, donde la pagina se colocara en memoria */
		tdp[num_pag].presencia = 1;	/* Ponemos bits de presencia y referencia a 1 */
		tdp[num_pag].referencia = 1;

		if(operacion == 'w') {			/* Si es una operacion de escritura */ 
			tdp[num_pag].modificado = 1;	/*Indicamos que se ha modificado la pagina */
		}
		else {
			tdp[num_pag].modificado = 0;	/*Indicamos que no se ha modificado la pagina */
		}
	}
	/* A partir de este momento asumimos que la pagina está en una macro y el valor de la macro es accesible
	a traves del numero de la pagina por el campo: tdp[num_pag].macro */

	dir_real = (tdp[num_pag].marco)*256 + desp;
	return dir_real;	/* Devolvemos la direccion fisica */
}

