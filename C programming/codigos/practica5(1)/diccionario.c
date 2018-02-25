/*
    diccionario.c
*/

#include <stdio.h>
#include <string.h>
#include "diccionario.h"

int anyadir_palabra (tPal Dicc[],  // Diccionario
                     int num,      // Numero de palabras
                     int max)      // Numero maximo de palabras
{
    if (num>max){                                          //Comprobar que no este lleno
		printf("El diccionario esta lleno");
	     return 0;}   

	  printf("Intruduzca palabra en Ingles: ");         
	  scanf("%s",&Dicc[num].ingles);               //Leer la palabra en ingles
	  printf("Intruduzca palabra en Espanyol: ");
	  scanf("%s",&Dicc[num].espanyol);            //Leer la palabra en español
	  
	  num = num + 1;                           //Sumar 1 a la cantidad de palabras del diccionario
      return num;                              //La funcion devuelve el nuevo numero de palabras del diccionario
}

void traducir_palabra (tPal Dicc[], // Diccionario
                       int num)     // Numero de palabras
{   char palabra[20];                            //Contenedor para la palabra a traducir
    int i, contador = 0;                         //Contador para ver si se ha encontrado alguna traduccion.
    printf("Palabra a traducir: ");
	scanf("%s",palabra);

	for(i=0;i<num;i++){                           //Busca traduccion al español
		if(strcmp(Dicc[i].ingles,palabra)==0){
			printf("Traduccion al espanyol: %s \n",Dicc[i].espanyol);}
		else{contador+=1;}}

   for(i=0;i<num;i++){                           //Busca traduccion al ingles
		if(strcmp(Dicc[i].espanyol,palabra)==0){
			printf("Traduccion al ingles: %s \n",Dicc[i].ingles);}
   else{contador+=1;}}
     
   if (contador==2*num){                      //Si el contador es igual al numero de palabras, no se ha encontrado traduccion
	   printf("La palabra (%s) no se encuentra en el diccionario \n", palabra);
   }

}
