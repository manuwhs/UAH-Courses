// Punteros 4            Asignacion dinamica de memoria
#include<stdio.h>
#include<windows.h>
#include<string.h>                    
                         //Existen funciones: calloc,malloc,realloc que reservan memoria en tiempo de ejecucion,
                         //al final del programa debemos liberar esa memoria con la funcion free(puntero).

void main(){              //malloc(tamaño bytes). Reserva un bloque de memoria del tamaño indicado
	                      // y devuelve un puntero apuntando a ese bloque de memoria
	                      //Devuelve un puntero NULL en caso de no haber podido reservar la memoria
	                      // Hay que indicar el tipo de dato al que apunta el puntero mediante un cast
	                      // ya que el puntero devuelto en si no tiene tipo
	 int n,i,*pi;
	 int *paux;
	 printf("Introduzca numero de elementos : ");
	 scanf("%i",&n);
	 pi = (int *) malloc(n*sizeof(int));
	 if(pi!=NULL){
		 for(i=0;i<n;i++){
			 scanf("%i",pi+i);}
		 for(i=0;i<n;i++){
			 printf("%i ",pi[i]);}}
	      free(pi);
	                       //calloc(nelementos,tamaño elementos). Hace lo mismo que malloc pero en vez de darle
	                       // directamente el numero de bytes a reservar le damos el numero de elementos del
	                       // del tipo de dato que queremos reservar y el numero de bytes que ocupa ese tipo
	                  
	   pi = (int *)calloc(5,sizeof(int));
	   pi[0] = 34;
	   *(pi + 1) = 4;
	   printf("\nNuevos datos %i %i \n",*(pi + 0), pi[1]);
	   
	                        //realloc(puntero al bloque,tamaño bytes). Modifica el tamaño de un bloque de memoria
	                        //Se le da el puntero del bloque a modificar y el nuevo numero de bytes que ocupara
	                        //Devuelve un puntero al bloque nuevo
	                        //Quita o añade los ultimos bytes del bloque
	                        //Si no hay sufificente espacio a continuacion del bloque, traslada todos los datos
	                        //a una nueva posicion de memoria
	                        //Si no encuentra espacio libre para añadir el numero de elementos, devuelve NULL
	                        //y entonces perderiamos el puntero inicial del bloque por lo que creamos un puntero auxiliar
	  
	   paux = (int *)realloc(pi,10*sizeof(int));
	   if (paux!=NULL){
		   pi = paux;
		   printf("Aumento de memoria exitoso\n");}
	   else{printf("No se pudo aumentar la memoria\n");}

	 


	 system("pause");
}