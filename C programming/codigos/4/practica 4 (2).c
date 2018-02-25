#include<stdio.h>
#include<windows.h>
#include <stdio.h>
#include <stdlib.h>
int main ()
{   
	char c, letras[20] = {'a','e','i','o','u','A','E','I','O','U',160,130,161,162,163,181,144,214,224,233};
    int i, contadores[20];

for (i=0; i<20; i++){
	contadores[i] = 0;}
printf ("Introduzca una frase terminada en punto:\n");
do {
c = getchar (); 
for (i=0; i<20; i++){
if (c == letras[i]) 
 contadores[i]++;
}}
while (c!='.' && c!=EOF);

for (i=0; i<20; i++){
if (contadores[i] > 0){
	printf ("Cantidad de %c: %i \n",letras[i],contadores[i]);}}

system ("pause");

}
