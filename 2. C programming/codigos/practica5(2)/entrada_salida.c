
#include<windows.h>
#include<stdio.h> 
#include"estadistica.h"

int PedirNotas (ts_ficha Fichas[], int max){
	int n, i;
	char tip;
		printf("Numero de alumnos: ");   //Obtener numero de alumnos
	    scanf("%i",&n);

		if (n>max){                           //Comprobar que no son demasiados
			printf("Demasiados alumnos");
			exit (-1);}

		for (i=0;i<n;i++){                      //Obtener datos de los alumnos
	    printf("Alumno %i: \n",i+1);
		printf("Nombre: ");
		scanf("%s", Fichas[i].nombre);
		printf("Apellido: ");
		scanf("%s", Fichas[i].apellidos);
		printf("Formato: 1-> Numerico  \n         2-> Alfanumerico \n");
		printf("Opcion: ");

		                          //Bucle que compruba si el tipo de dato sera numero o alfanumerico
	    do{                       // y guarda lo que escribamos en pantalla en s_nota o f_nota en consecuencia
		tip  = getchar();
		if (tip == '1') {
			Fichas[i].tipo = numerico;
			printf("Nota numerica (0 - 10): ");
			scanf("%f", &Fichas[i].nota.f_nota);
		    printf("\n");}

		if (tip == '2') {
			Fichas[i].tipo = alfanumerico;
			printf("Nota alfanumerica (susp - aprob - not - sobre - matri): ");
			scanf("%s", Fichas[i].nota.s_nota);
		    printf("\n");}
		}
		while ((tip!='1')&&(tip!='2'));
		}
		
}


void MostrarNotas (ts_ficha Fichas[], int num){
        int i;
		printf("Alumno\t\tNombre\t\tApellido\t\tNota\n");
		printf("======\t\t======\t\t=========\t\t====\n");
		for (i=0;i<num;i++){

			printf("%i\t\t",i+1);
			printf("%s\t\t",Fichas[i].nombre);
			printf("%s\t\t",Fichas[i].apellidos);

			if(Fichas[i].tipo==numerico){               //Comprueba el tipo de nota que se va a imprimir
				printf("%.2f\n",Fichas[i].nota.f_nota);}
			if(Fichas[i].tipo==alfanumerico){
				printf("%s\n",Fichas[i].nota.s_nota);}
		}
		printf("\n");
}


