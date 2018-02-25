#include<stdio.h>
#include<windows.h>

int main (){
     
	int i,j, n;
	int personas[10];
	int tipo[9] = {500,200,100,50,20,10,5,2,1};
	int cantidad[9];
	for (i=0;i<9;i++){
		cantidad[i]=0;}

	printf("Numero de personas: ");
	scanf("%i",&n);
	for(i=0;i<n;i++){
		printf("Persona %i: ",i+1);
		scanf("%i",&personas[i]);}

	for (j=0;j<n;j++){

    for(i=0;i<9;i++){
		
		while ((personas[j]-tipo[i])>=0){
			personas[j] -= tipo[i];
			cantidad[i]+= 1;}
	}}

	for (i=0;i<9;i++){
		printf("Numero de billetes o monedad de %i: %i\n",tipo[i],cantidad[i]);}
    
	system("pause");
	}