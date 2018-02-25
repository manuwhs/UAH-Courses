// Librerias estándar de C
#include <stdio.h>
#include <stdlib.h>

// Librerias de llamadas al sistema de Unix
#include <unistd.h>
#include <sys/types.h>
#include "practica2.h"

int revisanotas( int fd){

	size_t size_evaluacion = sizeof(evaluacion);
	int posicion_notamedia = (16+3*32)*sizeof(char)+2*sizeof(float);
	int count = 0, 	/* Contador para saber el numero de estructuras leidas y asi
			saber donde colocar el puntero del archivo */
	modificadas = 0;	/* Contador del numero de notas modificadas */
	char mov_cursor = 0;	/* Va a ser un flag para saber si en la estructura anterior
				hemos tenido que modificar la nota ya que en tal caso, tendremos
				que recolocar el cursor al inicio de la proxima estructura */
	evaluacion evaluX; 	/*Esctructura de la evaluación*/
	ssize_t errores;	/* Para ver si hay errores (-1) y fin de arvhivo (0)*/


	errores = read(fd, &evaluX, size_evaluacion); /*Leemos la primera vez ahora*/

	/*Lanzamos bucle que mientras no se haya un error de lectura ni escritura ni lleguemos 
	al fin del archivo,vamos procesando, reescribiendo las estructuras y volviendo a leer */
	while((errores != -1)&&(errores != 0)) {
		if((evaluX.notamedia >4.5)&&(evaluX.notamedia <5.0)) {/*Comprobamos nota media*/
			evaluX.notamedia = 5.0;		/* Escribimos en la estructura y archivo */

 			/* Posicionamos el cursor en el sitio exacto para escribir
			con SEEK_SET indicamos que el offset es desde el origen del archivo */
			errores = lseek(fd, count*size_evaluacion + posicion_notamedia, SEEK_SET); 
			errores = write(fd, &evaluX.notamedia, sizeof(float)); 
			mov_cursor = 1;	/*Indicamos que hemos modificado el cursor*/
			modificadas++;	/*Aumentamos el contador de las modificadas */
		}
		count++;		/*Aumentamos el contador de estructuras leidas*/
		if (mov_cursor == 1){	/* Si hemos sobreescrito*/
			errores = lseek(fd, count*size_evaluacion, SEEK_SET); /*Recolocamos cursor */
			mov_cursor = 0;
		}
		errores = read(fd, &evaluX, size_evaluacion); /*Leemos*/
	}
	if (errores ==-1) {
		perror("Error al leer o escribir el archivo:");
		exit(1);
	}
	return modificadas;
}



	
