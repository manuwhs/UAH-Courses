// Librerias estándar de C
#include <stdio.h>
#include <stdlib.h>

// Librerias de llamadas al sistema de Unix
#include <unistd.h>
#include <sys/types.h>		
#include <sys/stat.h>		// Para conseguir propiedades del fichero
#include <sys/mman.h>		// mmap
#include "practica2.h"


int revisanotas( int fd){

	size_t size_evaluacion = sizeof(evaluacion);
	struct stat fd_properties;	/* Estructura predefinida en la que guardaremos 
					datos relevantes al archivo
					por medio de la funcion "fstat()" --> Obtenemos su tamaño */
	off_t offset = 0;	 /*Desplazamiento dentro del archivo a proyectar */
        size_t bytes_fichero;	/* Tamaño del fichero a proyectar */
	int num_estruct,i;	/* Numero de estructuras del archivo*/
	int modificadas = 0;	/* Contador del numero de notas modificadas */

	evaluacion *p_evaluX;	/* Puntero donde se colocará el inicio de la proyeccion */
	ssize_t errores = 7;	/* Para ver si hay errores (-1) y fin de arvhivo (0)
				 en funcion de lo que devuelvan las funciones */
				/* Inicializado a 7 por poner un numero que no sea 0 o -1*/

	/* Obtenemos el tamaño del archivo a proyectar */
	errores = fstat(fd, &fd_properties);
		if (errores ==-1) {
			perror("Error al obtener datos del arvhivo:");
			exit(1);
		}
	bytes_fichero = fd_properties.st_size;	/*Ya tenemos el tamaño del archivo */

	/* Proyectamos archivo en memoria */
	/*	1)start = NULL: Hace que el sistema Operativo elija el lugar de la proyeccion
		2)length = bytes_fichero: Proyectamos un numero de bytes igual al fichero
		3)prot = PROT_READ|PROT_WRITE  Los derechos de las paginas proyectadas
			No debe estar en conflicto con las de apertura del archivo.
			Elegimos LECTURA + ESCRITURA
		4)flags = MAP_SHARED : Flags sobre el comportamiento de la proyeccion.
			El mapping es visible por otros procesos y al cambiar los datos proyectados
			se cambia el dato original pero no especifica cuando.
		5)fd = fd: Descriptor del archivo
		6)offset = 0: Desplazamiento dentro del archivo a partir del cual se preyecta.
			En nuestro caos es 0, debe estar alineado con el tamaño de pagina
			valor que devuelve la funcion "sysconf(_SC_PAGE_SIZE)" */
	p_evaluX = mmap(NULL, bytes_fichero, PROT_READ|PROT_WRITE, MAP_SHARED, fd, offset);
	if (p_evaluX == MAP_FAILED){
		printf("Error al mapear");
		exit(1);
	}

	num_estruct = bytes_fichero/size_evaluacion; /*Numero de estructuras del archivo */
	/* Hacemos un barrido de las estructuras modificando las que sean necesarias */
	for(i=0;i<num_estruct;i++){	/* Por cada estructura comprobamos la nota */

		if((p_evaluX[i].notamedia >4.5)&&(p_evaluX[i].notamedia <5.0)) {/*Comprobamos nota media*/

			p_evaluX[i].notamedia = 5.0;		/* Escribimos en la estructura y archivo */
			modificadas++;			/*Aumentamos el contador de las modificadas */
		}
	}
	//Liberamos la memoria proyectada
	if (munmap(p_evaluX, bytes_fichero)==-1){
		printf("Error al liberar memoria proyectada");
		exit(1);
	}
	return modificadas;
}
	
	



