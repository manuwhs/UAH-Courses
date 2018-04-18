#include<stdio.h>
#include<windows.h>
#include <string.h>

//FUNCIONES QUE ORDENAN DE MAYOR A MENOR, PARA CAMBIAR MENOR A MAYOR, CAMBIAR EL < DEL IF POR >
int compchar(char m[]);
int compint(int m[], int n);
int compstring (char m[][20], int n);

// Se le da una cadena de caracteres y te los ordena de mayor a menor segun ASCII
int compchar(char m[]){
    int n = strlen(m);
	char contenedor;
	int i;
	n--;
		while(n >= 1){
		   for(i=1;i <= n; i++){
			  if(m[i-1] < m[i]){
			    contenedor = m[i-1];
			    m[i-1] = m[i];
				m[i] = contenedor;
			    }
		  } n--;
	    }
}

//Se le da un array con numeros enteros y la cantidad de esos numeros y te los ordena de mayor a menor
int compint(int m[], int n){
	int contenedor;
	int i;
	n--;
		while(n >= 1){
		   for(i=1;i <= n; i++){
			  if(m[i-1] < m[i]){
				contenedor = m[i-1];
				m[i-1] = m[i];
				m[i] = contenedor;
			    }
		  } n--;
	    }
}


// Se le da un array con cadenas de caracteres y el numero de cadenas y te las ordena de mayor a menor
int compstring (char m[][20], int n){
	char contenedor[20];
	int i;
	n--;

		while(n >= 1){
		   for(i=1;i <= n; i++){
			  if(strcmp(m[i-1],m[i])<0){
			    strcpy(contenedor,m[i-1]);
			    strcpy(m[i-1],m[i]);
				strcpy(m[i],contenedor);
			    }
		  } n--;
		}
}

