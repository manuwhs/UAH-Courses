#include<stdio.h>
#include<windows.h>

int main (){
     
	int i,dia,mes,anyo, restantes = 0;
	int meses[13]= {0,31,28,31,30,31,30,31,31,30,31,30,31};
	printf("Intruzca la fecha (dia mes anyo): ");
	scanf ("%i",&dia);
	scanf ("%i",&mes);
	scanf ("%i",&anyo);

	if (((anyo%4==0)&&(anyo%100!=0)) || (anyo%400 ==0)){
		meses[1]=29;}

	if ((dia<=meses[mes])&&(mes<=12)){
		restantes += meses[mes]-dia;
		for(i= mes + 1; i<=12;i++){
			restantes += meses[i];
		}
		printf("Quedan %i dias para fin de anyo \n",restantes);}
	
	else{printf("Fecha no valida");}
        

	system("pause");
	}