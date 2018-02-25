

#include<windows.h>
#include<stdio.h> 
#include"estadistica.h"

	int main (){

    static ts_ficha Fichas[100]; // Nombres y notas
    int num; // Numero de alumnos

    printf ("PROGRAMA ESTADISTICA\n");
    printf ("====================\n\n");

     num = PedirNotas (Fichas, 100);
     if (num>0){
             MostrarNotas (Fichas, num);
			 CalcularEstadistica (Fichas, num);}

	 system("pause");

return num<0 ? num : 0;

}