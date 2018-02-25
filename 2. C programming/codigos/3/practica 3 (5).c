#include<stdio.h>
#include<windows.h>

int mediana(int m[],int n);

int main (){
	int numeros[15];
	int i,cantidad;
	printf("Numero de datos impar: ");
	scanf("%i",&cantidad);
	if ((cantidad % 2 == 0) || (cantidad >15)){
		exit(0);}

	printf("Introduzca numeros separador por espacios: ");
	for(i=0;i<cantidad;i++){
		scanf("%i",&numeros[i]);}

	mediana(numeros,cantidad);

	system("pause");

}

int mediana(int m[], int n){
	int i,j;
	for (i=0; i<n;i++){
		int mayor = 0, menor = 0;
		for (j=0;j<n;j++){
		  if(m[i]<m[j+1]){
			mayor += 1;}
		  if(m[i]>m[j+1]){
			menor += 1;}
		}
		if (mayor == menor){
			printf("EL numero %i es la madiana \n",m[i]);}
	}}
