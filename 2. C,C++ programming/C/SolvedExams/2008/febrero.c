#include"definiciones.h"
#include<stdio.h>
#include<stdlib.h>
#include<Windows.h>


tHueso LeeHueso(tMusculo *pmusc, int nmusc);

tMusculo * EnlazaHuesoMusculo(char nomMusc[], tMusculo *pmusc, int nmusc);

tInfComun LeeInfcomun();

tMusculo * AnyadirMusculo(tMusculo* pmusuclos,int nmusculos);

void LiberaHuesos(tHueso *ph, int nh);

void MostrarHuesoTipoMusc(tHueso *ph, int nh, tTipoMusculo tipo);

int main(){
    tHueso *phuesos;                         // apunta a la matriz dinámica de huesos
    int nhuesos;                             // número de elementos de la matriz phuesos
tMusculo *pmusculos;                          // apunta a la matriz dinámica de músculos
int nmusculos;                                // número de elementos de la matriz pmusculos


tMusculo * paux;
if ((paux=AnyadirMusculo(pmusculos,nmusculos)) == NULL)
printf("\nError al asignar memoria\n");
else
{
pmusculos = paux;
nmusculos++;
}

}

tHueso LeeHueso(tMusculo *pmusc, int nmusc){
tHueso hueso;
int i;
char nomMusc[MAX_NOM];
                               // Lectura de todos los campos de la estructura tHueso


hueso.pmusc = (tMusculo **)malloc(hueso.nmusc * sizeof(tMusculo *));
for (i=0; i < hueso.nmusc; i++)
{
printf("Nombre del musculo %d : ", i+1);
fflush(stdin);
gets(nomMusc);
hueso.pmusc[i] = EnlazaHuesoMusculo(nomMusc, pmusc, nmusc);
}
return hueso;
}

tMusculo * EnlazaHuesoMusculo(char nomMusc[], tMusculo *pmusc, int nmusc){ //nomMusc es el nombre del musculo que tenemos que buscar
	                            int i;                                     //pmusc es la matriz dinamica (pmusculos) que contiene todos los musculos
								for(i=0;i<nmusc;i++){                      //nmusc es el numero de musculos en pmusc
									if(strcmp(nomMusc,pmusc[i].infComun.nombre)==0){   //Si el nombre del musculo dado esta entre los del array
										return &pmusc[i];                             //Devolvemos la direccion en memoria de la estructura de ese musculo
									}
								}
}

void MostrarHuesoTipoMusc(tHueso *ph, int nh, tTipoMusculo tipo){
	             int i,j,maximo,nhueso;
				 int * contadores = (int *)malloc(nh*(sizeof(int)));   //Creamos array para poner el numero de musculos de cada hueso
				 for (i=0;i<nh;i++){
					 contadores[i]=0;}

				 for (i=0;i<nh;i++){                   //Por cada hueso
				    for(j=0;j<ph[i].nmusc;j++){        //Por cada musculo asociado a ese hueso
						if(ph[i].pmusc[j]->tipo == tipo){      //Ver si el musculo es del tipo indicado
							contadores[i]+= 1;                    //Si lo es, sumar 1 al contador de ese hueso
						}}}
				 maximo = contadores[0];                       //Inicializar el hueso con mas numeros como el primero
				 nhueso = 0;                                   //Iniciar el numero del hueso como el primero
		for(i=0;i<nh;i++){
			if(contadores[i + 1]>contadores[i]){       //Si alguno es mayor, se pone ese como maxmimo
				maximo=contadores[1+i];
				nhueso=1+i;}}

			if(contadores[i] == 0){printf("No se ha encontrado ningun hueso con musculos asociados de esas caracteristicas");}
			else{printf("%s",ph[nhueso].infComun.nombre);}
			free(contadores);                              //Liberamos contadores
	 }
	 
void LiberaHuesos(tHueso *ph, int nh){
	int i;
	for (i=0;i<nh;i++){  //Por cada hueso, se libera su array de punteros a musculos
		free(ph[i].pmusc);   
	}
	free(ph);           //Y despues se libera el array de huesos
}





tMusculo * AnyadirMusculo(tMusculo* pmusculos,int nmusculos){
	        tMusculo * nuevo;                                         //puntero auxilixar para no joder pmusculos
	        nuevo = (tMusculo*)realloc(pmusculos,(nmusculos+1)*sizeof(tMusculo));  //Aumentar su tamaño en 1
			nuevo[nmusculos+1].infComun = LeeInfcomun();     //Se recoge la informacion del nuevo musculo
			printf("Describa la funcion del hueso \n");
			gets(nuevo[nmusculos+1].funcion);
			printf("Tipo de hueso: ");
			scanf("%i",nuevo[nmusculos+1].tipo);
			return nuevo;                                  //Se devuelve el puntero al nuevo array de musculos
}
	   