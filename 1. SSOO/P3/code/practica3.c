#include <pthread.h>	//Para los Hilos POSIX
#include <stdio.h>	//Para el printf() y perror()
#include <stdlib.h>	//Para el atoi() (Conversion a entero) y abs()
#include "practica3.h"

double pi = 0;  /* Variable global donde se iran almacenan los resultados de los hilos */
pthread_mutex_t pi_m;	/* Mutex para los accesos a la variable global pi */
	int n_hilos;
	int n_divisiones;

void* trapecista (void* param) { 	/* Funcion de los hilos */
	int c;
	double area_hilo = 0;		/* Area particular que calcula cada hilo */
	double d_min,d_max, d_aux;		/* Valores min y max en de los limites del area */
	data_hilo *p_datos = (data_hilo *)param;  /*Le damos tipo al puntero de datos*/

	for (c = p_datos->inicio; c < p_datos->fin; c++) {	/* Por cada trapecio a calcular */
		d_max = fx((double)c/n_divisiones);		// Dato con valor absoluto maximo
		d_min = fx((double)(c+1)/n_divisiones);

		if (abs(d_max) < abs(d_min)) {		//Vemos cual de los 2 en verdad tiene mayor valor absoluto
			d_aux = d_min;
			d_min = d_max;
			d_max = d_aux;
		}
		area_hilo += d_min + (d_max - d_min)/2;		/* Area normalizada a distancia de x = 1 */
	}
	area_hilo = area_hilo / n_divisiones;		/* Desnormalizamos */

	/* Bloqueamos el mutex ya que accederemos ahora a la variable global pi */
	pthread_mutex_lock (&pi_m); 		
	pi += area_hilo;
	pthread_mutex_unlock (&pi_m); 		/* Desbloqueamos */	
	pthread_exit(NULL); /*Salimos sin devolver nada */
}

int main (int argc, char **argv) {
	int i=0;
	int min_job_hilo, resto; /* Minimo numero de calculos por hilo y el resto*/
	
	pthread_t* hilos_ID;	/* Puntero donde dinamicamente pondremos el array de ID's */
	data_hilo* job_hilo;	/* Puntero donde pondremos dinamicamente las estructuras de datos que
				pasamos a los hilos */


	/* Comprobamos que los parametros pasados sean coherentes*/
	if ((argc >= 3)) { 
		n_hilos = atoi(argv[1]);
		n_divisiones = atoi(argv[2]);
	}
	else {
		printf("Parametros insuficientes. \n");
		exit(0);
	}
	
	if(n_hilos > n_divisiones){
		printf("Parametros malos. \n");
		exit(0);
	}



	hilos_ID = (pthread_t *)malloc(n_hilos*sizeof(pthread_t));  /* Reserva memoria para los IDs de hilos */
	job_hilo = (data_hilo *)malloc(n_hilos*sizeof(data_hilo)); /* Reserva memoria para los datos a hilos */

/* Lo que haremos sera primero repartir las trapecios equitativamente entre los hilos 
y los trapecios que sobran se reparten entre los primeros de los hilos (1 por hilo) */
	min_job_hilo = (int) n_divisiones/n_hilos;
	resto = n_divisiones % n_hilos;
	
	if(resto != 0) {
		for(i=0; i< resto; i++){	//Por cada hilo que queramos crear
			/* Damos valores a su estructura de datos */
			job_hilo[i].inicio = i * (min_job_hilo+1);
			job_hilo[i].fin = (i+1) * (min_job_hilo+1);
			/* Creamos hilo */
			pthread_create (&hilos_ID[i], NULL, &trapecista, &job_hilo[i]);
		}
	}

	for(i=i; i< n_hilos; i++){	//Por cada hilo que queramos crear
		/* Damos valores a su estructura de datos */
		job_hilo[i].inicio = i * min_job_hilo;
		job_hilo[i].fin = (i+1) * min_job_hilo;
		/* Creamos hilo */
		pthread_create (&hilos_ID[i], NULL, &trapecista, &job_hilo[i]);
	}


	for(i=0; i< n_hilos; i++){ /* Esperamos a que se terminen todos los hilos */
		pthread_join (hilos_ID[i], NULL); /* Los hilos no devuelven nada */
	}
	/*En este punto ya todos los hilos han acabado y tenemos pi/4 en pi */
	free(hilos_ID);		/* Liberamos el trabajo de los hilos */
	free(job_hilo);
	pi = pi*4;
	printf(" \n %.20f \n",pi);
	return 0;
}

