#include<stdio.h>
#include<windows.h>
#include<string.h> 
#include"cabecera.h"


void LeerFicha (ficha_alum * pficha){
	    char palabra[20];
		printf("Nombre: ");
		scanf("%s",palabra);

		pficha->nombre = (char *)malloc(sizeof(palabra)); //Reserva memoria para almacenar la cadena de caracteres
		                                                  //haciendo que el puntero de la estructua apunte a esa memoria
		strcpy(pficha->nombre, palabra);        //Copia la cadena en la memoria reservada
		printf("Nota: ");
		scanf("%f",&pficha->nota);         //Lee la nota del alumno y la guarda en la estructura
}

void VisualizarDatos (ficha_alum * palumnos, int nal){
	int i; 
        printf("Alumno\t\tNombre\t\tNota\n");
		printf("======\t\t======\t\t====\n");

	for (i=0;i<nal;i++){			             //Imprime los datos de cada alumno
		printf("%i\t\t%s\t\t%.2f\n",i+1,(palumnos+i)->nombre,palumnos[i].nota);
	}
}

void CalcularNM (ficha_alum * palumnos, int nal){
	     float total=0;
		 int i;
		 for (i=0;i<nal;i++){                       //Suma las notas de todos los alumnos
			 total+= (palumnos + i)->nota;}
		 total = total / nal;                     //Lo divide entre el numero de alumnos
		 printf("La media es: %.2f\n",total);
}
