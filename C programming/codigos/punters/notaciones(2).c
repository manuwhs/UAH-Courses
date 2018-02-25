// PUNTEROS 2          Notacion de arrays y punteros
#include<stdio.h>
#include<windows.h>
#include<string.h>
               
                         // Recordar que el nombre de un array es un puntero cuya direccion
	                     // es la primera direccion del array y que las direcciones en memoria de
                         //un array no son modificables

                        //En este codigo simplemente de hace lo mismo de 5 formas distintas
void main(){
	                     //Punteros y arrays unidimensionales. Notacion de arrays
	                     // En la notacion de arrays se escribe [numero] delante del puntero
	                     // para indicar una posicion de memoria siguiente a la del puntero
	                     // "numero" indica el numero de posiciones en memoria que se le suma al puntero
	int numeros[10] = {0,1,2,3,4,5,6,7,8,9};
	int *pi, i;

	for(i=0;i<10;i++){
		printf("%i ",numeros[i]);}
	printf("\n");

	pi = numeros;

	for(i=0;i<10;i++){
		printf("%i ",pi[i]);}
    printf("\n");
	                                  //Punteros y arrays unidimensionales. Notacion de punteros
	                                  //En esta notacion simplemente se le suma al puntero un numero
	                                  //entero que significa el numero de posiciones en memoria que se avanza
	                                
	for(i=0;i<10;i++){             //En este bucle, pi se mantiene fijo, no se modifica
		printf("%i ",*(numeros+i));}
    printf("\n");

    for(i=0;i<10;i++){             //En este bucle, pi se mantiene fijo, no se modifica
		printf("%i ",*(pi+i));}
    printf("\n");

	for(i=0;i<10;i++){       //En este bucle, pi se modifica
		printf("%i ",*pi);
	     pi += 1;}
    printf("\n");

	
	 system("pause");
}