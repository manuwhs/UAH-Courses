#include<stdio.h>
#include<windows.h>

int main (){
     
	int i, dinero;
	int tipo[9] = {500,200,100,50,20,10,5,2,1};
	int cantidad[9];
	for (i=0;i<9;i++){
		cantidad[i]=0;}

	printf("Cantidad de dinero: ");
	scanf("%i",&dinero);
    for(i=0;i<9;i++){
		 
		while ((dinero-tipo[i])>=0){
			dinero -= tipo[i];
			cantidad[i]+= 1;}
	}

	for (i=0;i<9;i++){
		printf("Numero de billetes o monedad de %i: %i\n",tipo[i],cantidad[i]);}
    
	system("pause");
}