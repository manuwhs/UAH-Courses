#include<stdio.h>
#include<windows.h>

int compfloat(float m[], int n);

int main(){
	float m[100];
	int cantidad, i;

	printf("Introducir cantidad de datos: ");
	scanf("%i",&cantidad);
	printf("Introducir datos separador por espacios: ");
	for(i=0; i < cantidad;i++){
		scanf("%f", &m[i]);}

	compfloat(m,cantidad);
	for(i=0;i<cantidad;i++){
		printf("%.2f  ", m[i]);}

	system("pause");
}
int compfloat(float m[], int n){
	float contenedor;
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
