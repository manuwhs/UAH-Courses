// Punteros 4            Asignacion dinamica de memoria
#include<stdio.h>
#include<windows.h>
#include<string.h> 
#include"cabecera.h"


int main(){
   int n, i;          //numero de estudiantes y contador
   char opcion;      
   ficha_alum *palumnos, *paux; //puntero a estructura y auxiliar

   printf("Introducir numero de alumnos: ");  //Obtener numero de alumnos
   scanf("%i",&n);
   palumnos = (ficha_alum *)malloc(n*sizeof(ficha_alum)); //Reservar memoria para el array de estructuras

   if (palumnos == NULL){                             //Si ha salido mal salir
	   printf("No hay suficiente espacio en memoria");
	   exit (-1);}
  
  for(i=0;i<n;i++){                       //Obtener datos de cada alumno
	  printf("Alumno %i: \n",i+1);
	  LeerFicha(palumnos + i);}

  VisualizarDatos(palumnos,n);      //Visualizar los datos
   CalcularNM(palumnos,n);

   printf("Desea añadir algun alumno mas ? (n)no - (s)si:  ");  //Preguntar si queremos añadir mas o no
   do {
		opcion  = getchar();
		if (opcion == 'n') {           //liberar memoria y salir si no se quiere añadir mas
			for(i=0;i<n;i++){
	           free(palumnos->nombre);}
           free(paux);
           free(palumnos);
			exit(0);}

		if (opcion == 's') {
		n = n+1;                        //Incrementar numero de alumnos
		paux = (ficha_alum *)realloc(palumnos,n*sizeof(ficha_alum));  //Aumentar espacio de memoria reservada

		if (paux==NULL){exit(-1);}  //Si no se ha podido, salir
		palumnos = paux;             //Si se ha podido, se iguala el puntero normal al puntero auxiiar
		printf("Alumno %i: \n",n);
		LeerFicha(palumnos + (n-1));

   VisualizarDatos(palumnos,n);  
   CalcularNM(palumnos,n);
   printf("Desea poner algun alumno mas ? (n)no - (s)si:  ");}}
   while (opcion!='n');
                                    
   for(i=0;i<n;i++){                       //liberar memoria
	   free(palumnos->nombre);}
   free(paux);
   free(palumnos);
   

   }


