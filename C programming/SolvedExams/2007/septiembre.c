#include <stdio.h>
#include <stdlib.h>
#include <Windows.h>
#include <string.h>
#include "definiciones.h"

void LiberarMemoria(instalacion * p_instal ,int num_instal, piezas * p_almacen);

int NumPiezasDisponibles (piezas * p_almacen, int tam_almacen,
                         tipo_pieza tipo,char * referencia, char * fabricante);

unsigned long BuscarHueco (tarea * p_tareas, int num_tareas,
                           unsigned long duracion, unsigned long desde);

double CalcularPorcentajeUtilizacion (instalacion * p_instal,
                                      unsigned long desde, unsigned long hasta);




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


int NumPiezasDisponibles (piezas * p_almacen, int tam_almacen,
                          tipo_pieza tipo,char * referencia, char * fabricante){
						int i, npiezas = 0;

						for(i=0;i<tam_almacen;i++){         //Si la pieza es del tipo dado
							if(p_almacen[i].tipo == tipo){

								if((referencia==NULL)&&(fabricante==NULL)){  //Si no se ha especificado mas, se suma 1 al contador
									npiezas += 1;}                           

								if((referencia!=NULL)&&(fabricante==NULL)){  //Si se ha especificado referencia, se compara y si coincide
								     if(strcmp(referencia,p_almacen[i].referencia)==0){  //se suma 1 al contador
										 npiezas += 1;}}
									
								if((referencia==NULL)&&(fabricante!=NULL)){   //Si se ha especificado fabricante, se compara y si coincide
								   if(strcmp(fabricante,p_almacen[i].fabricante)==0){  //se suma 1 al contador
									   npiezas +=1;}}
								
								if((referencia!=NULL)&&(fabricante!=NULL)){   //Si se han especificado los dos, se compara si pa ver si los dos 
								   if(strcmp(fabricante,p_almacen[i].fabricante)==0){ //coinciden y si lo hacen se suma 1 al contador
								   if(strcmp(referencia,p_almacen[i].referencia)==0){
									   npiezas += 1;}}}
								
							}
						}
	return npiezas;
}

 unsigned long BuscarHueco (tarea * p_tareas, int num_tareas,
                            unsigned long duracion, unsigned long desde){

                unsigned long inicio;
                int i;
                inicio = desde;
                i = 0;
                       
                while ((i < num_tareas) &&                                  //Avanza hasta la tarea que empieza despues del instante
					(inicio >= p_tareas[i].inicio + p_tareas[i].duracion)){  //especificado por desde
					i ++;}

				if(duracion <= (p_tareas[i].inicio - desde)){           //Si la duracion del hueco cabe entre "desde" y el comienzo de la
					inicio = desde;                                     //de la primera tarea despues del desde, ya lo hemos encontrado
					}
				else {                                               //Sino

				for (i;i<num_tareas;i++){                            //Por cada tarea restante buscamos un hueco entre el final de una tarea y el comienzo de la siguiente
					 if(p_tareas[i+1].inicio - (p_tareas[i].inicio + p_tareas[i].duracion)>= duracion){
						 inicio = p_tareas[i].inicio + p_tareas[i].duracion;}
				}
				}
				return inicio;                                 //Devolvemos el comienzo del hueco encontrado
 }
					 

double CalcularPorcentajeUtilizacion (instalacion * p_instal,
	                                  unsigned long desde, unsigned long hasta){

		int i = 0;
		unsigned long periodo, porciento, atareado = 0;   
		periodo = hasta - desde;                   //Periodo es el tiempo total que damos a la funcoin

       
		 while (desde <= p_instal->p_tareas[i].inicio){      //Avanza hasta la primera tarea que este total o parcialmente
			 i++;                                            //dentro del periodo de tiempo dado
		} 
			if(desde <= p_instal->p_tareas[i].inicio + p_instal->p_tareas[i].duracion){     //Añade la parte de la primera tarea que esta dentro del periodo
				   atareado += p_instal->p_tareas[i].inicio + p_instal->p_tareas[i].duracion - desde;}
			else{ p_instal->p_tareas[i].duracion;}
			i++;

		for (i;i<p_instal->num_tareas;i++){                     //Añade el tiempo que ocupan cada de una de las tareas que estan
			if(hasta >= p_instal->p_tareas[i].inicio + p_instal->p_tareas[i].duracion){ //totalmente dentro del periodo
				atareado += p_instal->p_tareas[i].duracion;}

			if((hasta >= p_instal->p_tareas[i].inicio)&&   //Añade el tiempo que esta dentro del periodo de la ultima tarea
			   (hasta <= p_instal->p_tareas[i].inicio + p_instal->p_tareas[i].duracion)){
			   atareado += hasta - p_instal->p_tareas[i].inicio;
			}
		}porciento = atareado/periodo*100; //Halla el porcentaje
		return porciento; // Lo devuelve

}


	
