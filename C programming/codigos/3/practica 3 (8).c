#include<stdio.h>
#include<windows.h>
int compmatriz(int m1[],int n1,int m2[],int n2,int m3[]);
int compint(int m[],int n);

int main(){
	int m1[50], m2[50], mfinal[100];
	int n1, n2, i;

	printf("Introducir cantidad de datos de M1: ");
	scanf("%i",&n1);
	printf("Introducir datos separador por espacios: ");
	for(i=0; i < n1;i++){
		scanf("%i", &m1[i]);}

	printf("\nIntroducir cantidad de datos de M2: ");
	scanf("%i",&n2);
	printf("Introducir datos separador por espacios: ");
	for(i=0; i < n2;i++){
		scanf("%i", &m2[i]);}

	compint(m1,n1);
	compint(m2,n2);
	compmatriz(m1,n1,m2,n2,mfinal);

	for(i = 0; i<(n1+ n2); i++){
		printf("%i ",mfinal[i]);}

	system("pause");
		
}

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

int compmatriz(int m1[],int n1,int m2[],int n2,int m3[]){
	    int i, j, k;
		i =0, j = 0, k = 0;
		while((i<n1)&&(j<n2)){

			if (m1[i]>=m2[j]){
                m3[k]= m1[i];
				k++; i++;}
			else {
				m3[k]= m2[j];
				k++; j++;}}

		while(i<n1){
				m3[k]= m1[i];
				k++; i++;}
		while(j<n2){
				m3[k]= m2[j];
				k++; j++;}
		}