// Librerias estándar de C
#include <stdio.h>
#include <stdlib.h>

// Librerias de llamadas al sistema de Unix
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include "practica2.h"

int revisanotas( int fd){

	size_t size_evaluacion = sizeof(evaluacion);
	struct stat fd_properties;	/* Estructura predefinida en la que guardaremos 
					datos relevantes al archivo
					por medio de la funcion "fstat()" --> Obtenemos su tamaño */
        size_t bytes_fichero;	/* Tamaño del fichero  */
	int num_estruct,i;	/* Numero de estructuras del archivo*/
	int modificadas = 0;	/* Contador del numero de notas modificadas */

	evaluacion *p_evaluX,*p_aux;	/* Puntero donde se colocará el inicio de la proyeccion */
	ssize_t errores;	/* Para ver si hay errores (-1) y fin de arvhivo (0)*/
	
	/* Obtenemos el tamaño del archivo a poner en memoria dinamica */
	errores = fstat(fd, &fd_properties);
		if (errores ==-1) {
			perror("Error al obtener datos del arvhivo:");
			exit(1);
		}
	bytes_fichero = fd_properties.st_size;	/*Ya tenemos el tamaño del archivo */

	/* Reservamos memoria dinamica suficiente para albergar el archivo
	 p_evalux será la posición de memoria donde empieza nuestro array de estructuras */
	p_aux = (evaluacion *)malloc(bytes_fichero);
	if (p_aux==NULL) {	/* Si falla la reserva */
		printf("Fallo de reserva de memoria dinamica");
		exit(1);
	}
	p_evaluX = p_aux; 

	/*Leemos todo el archivo de golpe en memoria dinamica  */
	errores = read(fd, p_evaluX, bytes_fichero); 
	if (errores ==-1) {
		perror("Error al leer el archivo:");
		exit(1);
	}

	num_estruct = bytes_fichero/size_evaluacion; /*Numero de estructuras del archivo */

	for(i=0;i<num_estruct;i++){	/* Por cada estructura guardada comprobamos la nota */
		if((p_evaluX[i].notamedia >4.5)&&(p_evaluX[i].notamedia <5.0)) {/*Comprobamos nota media*/

			p_evaluX[i].notamedia = 5.0;		/* Escribimos en la estructura y archivo */
 			
			modificadas++;			/*Aumentamos el contador de las modificadas */
			
		}
		if (errores ==-1) {
			perror("Error al escribir el archivo:");
			exit(1);
		}
	}
	
	/* Posicionamos el cursor en el sitio exacto para escribir
	con SEEK_SET indicamos que el offset es desde el origen del archivo */
	errores = lseek(fd, 0, SEEK_SET); 
	errores = write(fd, p_evaluX, bytes_fichero); 

	free(p_evaluX);		//Liberamos memoria dinamica
	return modificadas;
}



