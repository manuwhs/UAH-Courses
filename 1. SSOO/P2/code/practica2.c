// Librerias estándar de C
#include <stdio.h>
#include <stdlib.h>

// Librerias de llamadas al sistema de Unix
#include <unistd.h>
#include <fcntl.h>		
#include <sys/types.h>	
#include <sys/stat.h>		
#include <sys/time.h>		//Temporales (gettimeofday)

#include "practica2.h"

int main (int argc, char **argv) {

	char* archivo = "datos.bin"; 
	int errores = 0;	/* Para ver si se producen errores */
	int fd;			/* Descriptor del fifhero */
	int modificadas, duracion;
	struct timeval tiempo_antes,tiempo_despues; /*Estructuras donde se colocaran los tiempos */
		
	/* Abrimos modo lectura y escritura, comprobamos si ha habido error */
	fd = open (archivo, O_RDWR ,0644);  
	if (fd==-1) {
		perror("Error al abrir fichero:");
		exit(1);
	}

	/* Llamamos a la función de tratamiento del fichero y calculamos los tiempos */
	errores = gettimeofday( &tiempo_antes, NULL);
	if (errores==-1) {
		perror("Error al llamar a la fecha:");
		exit(1);
	}

	modificadas = revisanotas(fd); /*Llamamos a la funcion */

	errores = gettimeofday( &tiempo_despues, NULL);
	if (errores==-1) {
		perror("Error al llamar a la fecha:");
		exit(1);
	}

	duracion = (int)(tiempo_despues.tv_usec - tiempo_antes.tv_usec);

	/* Imprimimos en pantalla los resultados, cerramos el archivo y salimos*/
	printf("Notas modificadas: \t %i \n", modificadas);
	printf("Tiempo empleado: \t %i us\n", duracion);
	errores = close(fd);
	if (errores==-1) {
		perror("Error al cerrar el archivo:");
		exit(1);
	}
	return 0;
}
