//FUNCIONES PARA MANEJAR BLOQUES DE MEMORIA
#include<stdio.h>
#include<windows.h>
#include<string.h>

void main(){
	int numero, *p;

	char nombre1[10]= "Carlos";
	char nombre2[8] = "Carlos";
	int resultado;

	int pares[5] = {0,2,4};
	int impares[7] = {1,3,5,7,9,11,13};
	int i;

	              //memset(dir. de memoria,dato,tamaño bytes) Inicializa un bloque de memoria
	 numero = 5;
	 p = &numero;
	 memset(p,0,sizeof(int));
	 printf("El valor de numero es: %i \n", numero);

	                               //memcmp(dir1 de memoria, dir2 de memoria,tamaño bytes) Compara dos bloques de memoria
	                               //si son iguales devuelve 0, sino devuelve -1
	 resultado = memcmp(nombre1,nombre2,strlen(nombre1));
	 if (resultado == 0){
		 printf("Las dos cadenas son iguales \n");}

	                               //memcpy(dir final, dir origen, tamaño bytes) Copia un bloque en otro
 memcpy(impares,pares,3*sizeof(int));
 for (i =0;i<7;i++){
	 printf("%i ", impares[i]);}
    printf("\n");

  	system("pause");

	                              
}