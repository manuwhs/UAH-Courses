#include<stdio.h>
#include<windows.h>

int compint(int m[],int n);
int buscar (int m[],int cantidad, int num);

int main(){
	int m[100];
	int cantidad, i, num;
	int resultado;

	printf("Introducir cantidad de datos: ");
	scanf("%i",&cantidad);
	printf("Introducir datos separador por espacios: ");
	for(i=0; i < cantidad;i++){
		scanf("%i", &m[i]);}
	compint(m,cantidad);
	printf("El array ordenado es: ");
	for (i = 0; i <cantidad; i++){
		printf("%i ",m[i]);}

	printf("\nNumero buscado: ");
	scanf("%i", &num);

	resultado = buscar(m,cantidad,num);
	if (resultado != 0) {
		printf("El numero %i se encuentra en la posicion %i del array \n",num,resultado);}
	else { 
		printf("El numero %i no se encuentra en el array\n",num);}
	

	system("pause");
		
}

int buscar(int m[],int cantidad, int num){
	int bajo = 0, alto = cantidad-1, central;
	while(bajo <= alto){
		central = (bajo+alto)/2;
		if (num == m[central]){
			return central;}

		if (num > m[central]){
			bajo = central + 1;}
		if (num < m[central]){
			alto = central - 1;}
	}
	return 0;}






int compint(int m[], int n){
	int contenedor;
	int i;
	n--;
		while(n >= 1){
		   for(i=1;i <= n; i++){
			  if(m[i-1] > m[i]){
				contenedor = m[i-1];
				m[i-1] = m[i];
				m[i] = contenedor;
			    }
		  } n--;
		}    
}

