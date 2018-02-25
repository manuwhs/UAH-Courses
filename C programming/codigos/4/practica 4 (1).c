#include<stdio.h>
#include<windows.h>
int main ()
{
	 int i,z,c,normalizada;
	 char todos[256];
	 int normales[15]= {97,101,105,111,117,65,69,73,79,85,117,85,110,78};
	 int especiales[15]={160,130,161,162,163,181,144,214,224,233,129,154,164,165};
	

	 for(i=0; i<255; i++){
		 todos[i]=i;
	 }
	 
	 for(i=0;i<14;i++){
		 z = especiales[i];
		 todos[z]=normales[i];
	 }

	 do {
		 c = getchar();

		 if ((todos[c]>=97)&&(todos[c]<=121)){
			 if(todos[c]>'m'){
				 printf("La letra %c es minuscula y... esta despues de la m\n",c);}
			 else {printf("La letra %c es minuscula y... esta antes de la m\n",c);}}

		 if ((todos[c]>=65)&&(c<=92)){
			 if(todos[c]>'m'){
				 printf("La letra %c es mayuscula y... esta despues de la M\n",c);}
			 else {printf("La letra %c es mayuscula y... esta antes de la M\n",c);}}}

		 while (c!='.' && c!=EOF);
	
system ("pause"); }
