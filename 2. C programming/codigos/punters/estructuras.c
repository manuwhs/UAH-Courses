//DEFINICION Y USO DE ENUMERACIONES
#include<stdio.h>
#include<windows.h>

void main(){
	                   //Dos formas de crear la enumeracion
	                            //UNA
	struct coche {
		char marca[10];
		char color[10];
		int matricula;
	}coche0;
	                            //DOS
	typedef struct {
		char nombre[20];
		long telefono;
	}persona;
	                  //Declarar las variables de dos formas depende de como hemos creado la estructura
	                           //UNA
	 struct coche coche1;

	                  //         DOS
	 persona persona1;
	                    
	                  //Inicializarlas enteras a la hora de declararlas o luego campo por campo:

	 struct coche coche2 = {"Ford","Rojo",6432};
	 persona persona2 = {"Carlos", 92453453};

	 coche1.matricula = 5503;
	 persona1.telefono = 924251225;
	 printf("Introduzca nombre de persona1: \n");
	 gets(persona1.nombre);

	                 //Imprimimos datos en pantalla:

	 printf("Datos persona1: %s %i \n",persona1.nombre,persona1.telefono);
	 printf("Datos coche2: %s %s %i \n",coche2.marca,coche2.color,coche2.matricula);


              







	system("pause");}