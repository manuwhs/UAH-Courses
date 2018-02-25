// Punteros 6            Punteros a estructuras

#include<windows.h>
#include<stdio.h>                    
                            //Los punteros a estructuras simplemente son punteros que apuntan a estructuras.
                            //Para crear uno de estos punteros, creamos una variable puntero del tipo de la
                            //estructua y le reservamos dinamicamente una cantidad de memoria igual a
                            //la que ocupa la estructura.
                            //Podemos acceder a los campos de la estructura a la que apunta el puntero
                            //mediante el operador -> en vez de .
                            //Tanto al usar ->, como al usar . , nos estamos refiriendo al contenido del
                            //campo al que accedemos, no a su direccion en memoria (puntero)
void main(){            

	  typedef struct {        //Creamos estructura fecha
		  int dia;
		  int mes;
		  int ano;
	  }fecha;

	  fecha *pf;                     //Creamos una variable puntero del tipo de la estructura
	  fecha fecha1, *pfecha;         // (Variables para la segunda parte)

	  pf = (fecha *)malloc(sizeof(fecha)); //Reservamos memoria para el puntero

	  if (pf==NULL){
		  printf("Insuficiente memoria");
		  exit(-1);}

	  pf->dia= 12;                          //Igualamos a 12 la variable "dia" que se encuentra dentro
	                                        //de la estructura a la que apunta el puntero
	  printf("Dia: %i \n",pf->dia);

	  free(pf);                            //Al final liberamos el espacio como siempre
	                          
	                       // Lo que podriamos haber hecho tambien es crear una variable del tipo de la estructura,
	                       // un puntero del tipo de la estructura e igualar el puntero a la direcion en
	                       // memoria de dicha estructura.
	  pfecha= &fecha1;
	  pfecha->mes=5;
	  printf("Mes: %i \n",pfecha->mes);

	                           //Imaginad tambien que queremos hacer un array de un tipo de estructuras
	                           //para ello le asignamos a un puntero de ese tipo de estructura una cantidad
	                           //de memoria igual al numero de estructuras multiplicado por cuanto ocupa cada estructura
	                           //Para acceder a cada una de las estructuras del puntero, usamos la notacion de
	                           //arrays o punteros normal
	 system("pause");
}