// Punteros 5               Punteros a cadenas de caracteres
#include<stdio.h>
#include<windows.h>
#include<string.h>                    

void main(){
	                                             //Las cadenas de caracteres no son mas que un array de caracteres,
	                                             //El nombre de la cadena contiene la primera posicion en memoria de ese array
	                                             //Un puntero a cadena no es mas que un puntero de tipo char que actua
	                                             // como la primera posicion de una cadena de caracteres.
	                                             //De manera que si lo igualamos a la direccion de una cadena de caracteres
	                                             //o le reservamos memoria y escribimos caracteres en ella,
	                                             //tendremos una cadena de caracteres normal.

	                                    //Tambien podemos igualar el puntero a una cadena de caracteres constante,
	                                    //que no esta en memoria. Sus propiedades con respecto a na normal serian:

	 char nombre[20] = "Alcala de Henares";     
	 char *pnombre = "Alcala de Henares"; 


	 nombre[2] ='s';                              // SI
  // nombre = "Torrejo de Ardoz"                  // NO
	 strcpy(nombre,"Terrejon de Ardoz");          // SI
	 gets (nombre);                               // SI

	 
  // *pnombre[2] ='s';                            // NO
     pnombre = "Torrejo de Ardoz";            // SI
  // strcpy(nombre,"Terrejon de Ardoz");          // NO
 //	 gets (nombre);                               // NO
	 
     pnombre = (char *)malloc(20*sizeof(char));
				
    printf("%s \n",*pnombre);

	
	 system("pause");
}