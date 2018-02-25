#include <stdio.h>
#include <stdlib.h>
#include <Windows.h>
#include <string.h>
#include "definiciones.h"

void LiberarMemoria(instalacion * p_instal ,int num_instal, piezas * p_almacen);

void ListarTareas (instalacion * p_instal, unsigned long desde, 
	                unsigned long hasta, estado_tarea estado);

unsigned long BuscarHueco (tarea * p_tareas, int num_tareas,
                           unsigned long duracion, unsigned long desde);

unsigned long ElegirHueco (instalacion * p_instal, int num_instal,
                           int * p_eleccion, tipo_instalacion tipo,
                            unsigned long duracion, unsigned long desde);

int AnyadirTarea (instalacion * p_instal,tarea * p_tarea);



int main (){

instalacion * p_instal=NULL;
int num_instal=0;

piezas * p_almacen=NULL;
int tam_almacen=0;}


void LiberarMemoria(instalacion * p_instal ,int num_instal, piezas * p_almacen){
	int i;
	for (i=0;i<num_instal;i++){                             //Por cada instalacion                   
		free(p_instal[i].p_tareas);  }            //Se libera su array de tareas
	free(p_instal);                              //Se libera el array de instalaciones      
    free(p_almacen);                           //Se libera el array de piezas
}

void ListarTareas (instalacion * p_instal, unsigned long desde,
	               unsigned long hasta, estado_tarea estado){
	int i;
	for(i=0; i<p_instal->num_tareas;i++){                    //Por cada tarea de la instalacion
		if(p_instal->p_tareas[i].estado == estado){          //Comprobar que la tarea sea del tipo que elegimos al llamar a la funcion
			if((desde >= p_instal->p_tareas[i].inicio )&&    //Comprobar que la tarea de encuentra despues del tiempo que damos en desde
			   (hasta <= (p_instal->p_tareas[i].inicio + p_instal->p_tareas[i].duracion))){  //y antes del que damos en hasta para saber que esta dentro
				printf("%s \t %l \t %l \n",p_instal->p_tareas[i].matricula,                  //Imprimir los datos separados por tabuladores
					                       p_instal->p_tareas[i].inicio,p_instal->p_tareas[i].duracion);
			}}}}

unsigned long ElegirHueco (instalacion * p_instal, int num_instal,
                           int * p_eleccion, tipo_instalacion tipo,
                           unsigned long duracion, unsigned long desde){
				int i;                                              //Contador
				unsigned long inicio, *array_inicios;               //Instante inicio nueva tarea y array con los inicios de los huecos en cada instalacion
				array_inicios = (unsigned long *)malloc(num_instal*sizeof(unsigned long)); //Se reserva memoria para el array
				for (i=0;i<num_instal;i++){                         //Se busca un hueco en cada instalacion y se guarda en una variable del array
					if(p_instal[i].tipo==tipo){
					array_inicios[i] = BuscarHueco(p_instal[i].p_tareas,p_instal[i].num_tareas,duracion,desde);
					}}
				inicio = array_inicios[0];                     //Se inicializa el inicio de la tarea nueva como el primer array de inicion
				*p_eleccion = 1;                              // Se inicializa el numero de la instalacion a la primera
				for(i=1;i<num_instal;i++){                          //Se comparan todos los inicios de los huecos de las intalaciones para ver cual es el que empieza antes
					if(array_inicios[i] < inicio){
						inicio = array_inicios[i];           //Se iguala "inicio" al hueco que empiece antes
						*p_eleccion = i + 1;                 //Se pone el numero de la instalacion que contine ese hueco
					}}
				free(array_inicios);                         //Se libera el array creado
				return inicio;}                              //Se devuelve la posision de inicio del hueco encontrado


int AnyadirTarea (instalacion * p_instal, tarea * p_tarea){
	              int i,j,posicion;
				  
				  tarea * tareaux;
				  tareaux = (tarea *)realloc(p_tarea,sizeof(tarea)*(p_instal->num_tareas+1));  //Añadimos una nueva tarea mas al array
				  if (tareaux ==NULL){              //Si no se ha podido incrementar memoria se sale y se devuelve -1
					  return -1;}
				  p_instal->p_tareas = tareaux;
				  p_instal->num_tareas += 1;                                                   //Incrementamos en 1 el numero de tareas

				  if(p_tarea->inicio > p_instal->p_tareas[p_instal->num_tareas - 1].inicio){   //Si la nueva tarea empieza despues que todas las que ya habia:
				     p_instal->p_tareas[p_instal->num_tareas - 1] = *p_tarea;                  //Se guarda la nueva tarea en la ultima posicion y se
					 posicion = p_instal->num_tareas;                                          //devuelve el valor de su posicion
					 return posicion;
				  }
				  else {                                                                      //Si no, por cada tarea se comprueba si la tarea empieza antes que ella
				         for (i=0;i<p_instal->num_tareas;i++){                                //De ser asi, se mueven una posicion todas las estructuras desde esa hacia el final
					      if(p_tarea->inicio <= p_instal->p_tareas[i].inicio){                //y se pone la nueva estructura en la posicion de la tarea que empezaba
						        for(j=p_instal->num_tareas; j>i ;j--){                                              //despues de la nueva. Por ultimo se devuelve la posicion de la tarea y sale de la funcion             
									p_instal->p_tareas[j-2] = p_instal->p_tareas[j-1];}

								    p_instal->p_tareas[i]= *p_tarea;
									posicion = i;
									return posicion;
						  }
						 }
				  }
}

					  



 