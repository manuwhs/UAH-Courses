#include<windows.h>
#include<stdio.h> 
#include"estadistica.h"
void CalcularEstadistica (const ts_ficha Fichas[], int num){
	       float contador = 0;                                     //Donde se guarda la nota media
		   char calificas[5][14] = {"suspenso","aprobado","notable","sobresaliente","matricula"}; //Equivalencias entre alfanumerico
		   int calificaf[5] = {0,5,7,9,10};                                                       // y numerico
		   float porcentajes[5] = {0,0,0,0,0};                //Array para guardar los porcentajes
		   int i,j;                                           //Contadores

		   for (i=0;i<num;i++){                               //Sumar las notas numericas de los alumnos que las tengan asi
			   if(Fichas[i].tipo == numerico){
				   contador += Fichas[i].nota.f_nota;}

			   if(Fichas[i].tipo == alfanumerico){         //Hallar equivalencia de nota alfanumerica de los alumnos
				   for(j=0;j<5;j++){                       //con ese tipo de nota y sumarlo a contador
				    if (strcmp(calificas[j],Fichas[i].nota.s_nota)==0){
						contador +=calificaf[j];}
				   }
			   }
		   }
		   contador = contador/num;                  //Hallar nota media dividiendo por el numero de alumnos

		   for (i=0;i<num;i++){                       //Contar el numero de cada nota alfanumerica (en los casos
			   if(Fichas[i].tipo == alfanumerico){    //en los que la nota ya venga asi)
				   for(j=0;j<5;j++){
				   if (strcmp(calificas[j],Fichas[i].nota.s_nota)==0){
						porcentajes[j]+=1;}
				   }
			   }
		   

			   if(Fichas[i].tipo == numerico){         //Calcular equivalencia numerica a alfanumerica y
				   if(Fichas[i].nota.f_nota < 5){      //sumar el contador de ese tipo de nota
					   porcentajes[0]+=1;}
				   if((Fichas[i].nota.f_nota >= 5)&& (Fichas[i].nota.f_nota <7)){
					   porcentajes[1]+=1;}
				   if((Fichas[i].nota.f_nota >= 7)&& (Fichas[i].nota.f_nota <9)){
					   porcentajes[2]+=1;}
				   if((Fichas[i].nota.f_nota >= 9)&& (Fichas[i].nota.f_nota <10)){
					   porcentajes[3]+=1;}
				   if(Fichas[i].nota.f_nota == 10){
					   porcentajes[4]+=1;}
			   }
		   }

			   for (j=0;j<5;j++){                //Hallar los porcentajes
				   porcentajes[j]=porcentajes[j]/num*100;}

			   printf("Nota media: %.2f \n", contador);   //Imprimir resultados
			   for (j=0;j<5;j++){
				   printf("Porcentaje de %s: %.2f \n",calificas[j],porcentajes[j]);}
}
		   




					


