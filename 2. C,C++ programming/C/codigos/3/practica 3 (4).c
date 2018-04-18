#include<stdio.h>
#include<windows.h>

float mediar(float m[],int n);

int main (){
	float alumnos[200], media;
	int i,cantidad, mayores = 0, menores = 0;

	printf("Numero de alumnos : ");
	scanf("%i",&cantidad);
      for(i=0;i<cantidad;i++){
		  printf("Alumno %i: ",i+1);
		  scanf("%f",&alumnos[i]);}

	media = mediar(alumnos,cantidad);
	for(i=0;i<cantidad;i++){
		if(alumnos[i]> media){
			mayores += 1;}
		if(alumnos[i]< media){
			menores += 1;}}

	printf("La media de altura es: %.2f \n", media);
    printf("Numero de alumnos mas altos que la media: %i\n", mayores);
    printf("Numero de alumnos mas bajos que la media: %i\n", menores);
	system("pause");

}

float mediar(float m[], int n){
	int i;
	float total = 0, media;
	for (i = 0; i<n; i++){
		total += m[i];}
	media = total / n;
	return media;}







