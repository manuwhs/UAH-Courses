//Punteros
#include<stdio.h>
#include<windows.h>
#include<string.h>
// PUNTEROS
void main(){
	                             //Crear Variables
	 int numero = 5, numero2;
	 char nombre[10]="Carlos";
	 typedef struct{
		 char marca[10];
		 char color[10];
		 int matricula;
	 }coche;
	 coche coche1= {"Mercedes","Negro",9562};
	                        //Crear punteros
	 int *pi;
	 char *pc;
	 coche *ps;
	                        //Asignar a cada puntero una direccion en memoria
	 pi = &numero;
	 pc = nombre;
	 ps = &coche1;

	                      // Operaciones aritmeticas: Al sumar un numero entero a un puntero,
	                      // estamos sumando a la direccion que contiene ese puntero un numero
	                      // de bytes igual al numero sumado multiplicado por el numero
	                      // de bytes que ocupa cada tipo de dato al que apunta ese puntero

	 printf("Posicion en memoria nombre: %i \n",pi);
	 printf("Siguiente posicion en memoria a nombre: %i \n", pi + 1);
	 printf("Posicion en memoria coche1: %i \n",ps);
	 printf("Siguiente posicion en memoria a coche1: %i \n \n", ps + 1);

	                     // Comparacion de punteros, solo se pueden comparar punteros del mismo tipo 
	                     // compara las posiciones en memoria guardadas en los punteros

	 printf("%i %i \n",pi, &numero2);
	 if(pi>=&numero2){
		 printf("La direccion de numero es mayor que la de numero2 \n");}



	 system("pause");
}