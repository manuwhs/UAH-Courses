// Punteros 3               Punteros a punteros
#include<stdio.h>
#include<windows.h>
#include<string.h>                    

void main(){
	                   //Un puntero a puntero es una variable que contiene la direccion en memoria 
	                   //de otro punterom, se declara escribiendo "**" delante del nombre

          int numero = 4;     //Variable
		  int *pi;            //Puntero 
		  int **ppi;           //Puntero a puntero

		  int lista[5]={1,2,3,4,5}; //Array normal
		  int *punteros[4];         // Array de punteros
		  int i;
		                          // Arrays de punteros: Un array cuyas variables son punteros, por lo que 
		                          // por ejemplo el nombre del array seria un puntero a puntero


		  pi = &numero;
		  ppi = &pi;
		              
		  punteros[0] = pi;         //La primera posicion del array punteros contiene pi (posicion en memoria
		  punteros[2] = lista;      //de numero), la segunda posicion esta indefinida, en la tercera esta
		                            // la direccion de memoria del array lista y la cuarta esta indefinida 
		
		                  // ACCESO A DATOS. NOTACION DE ARRAY:
		                  // Para acceder a los datos de un array de punteros se puede utilizar 
		                  // la misma notacion que con los arrays normales.
		                  // Si uno de los punteros del array apunta a otro array, para acceder 
		                  // a los datos del segundo array simplemente escribimos una segunda posicion
		                  // entre corchetes que señalara a una posicion del segundo array.

		  punteros[2][2]= 100;   //Tercera posicion en memoria del array lista
		  for(i=0;i<5;i++){
			  printf("%i ",punteros[2][i]);
		  }
		  printf("\n");

		                  // ACCESO A DATOS. NOTACION DE PUNTEROS:
		                  // Lo mismo pero para acceder a las

		  *(punteros + 0) = pi;  
		  *(punteros + 2) = lista; 
		  *(*(punteros+2)+ 2)= 3;   //Tercera posicion en memoria del array lista
		                            // *(punteros + 2) + 0 seria la primera posicion del array lista
		  for(i=0;i<5;i++){
			  printf("%i ",*(*(punteros+2)+i));
		  }
		  printf("\n");
		               //ACCESO A DATOS. NOTACION MIXTA

		  *(punteros[2]+ 2)= 50;
		  for(i=0;i<5;i++){
			  printf("%i ",*(punteros[2]+i));
		  }
	
	 system("pause");
}