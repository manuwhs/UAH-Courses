#include"definiciones.h"
#include<stdio.h>
#include<stdlib.h>
#include<Windows.h>

tInfComun LeeInfcomun();
tMusculo *EnlazaHuesoMusculo(char nomMusc[],tMusculo *pIniMusc,int nm);
tHueso *CrearArrayHuesos(int nh, tMusculo *pmusc, int nm);

void MostrarMusculos(tHueso *ph, int nh,
                     int longitud, tPartesCuerpo ubicación);

float CalculaDensidadOsea(tHueso *ph, int nh);

void LiberaMusculos(tHueso *ph, int nh, tMusculo *pm);

int main(){
    tHueso *phuesos;                         // apunta a la matriz dinámica de huesos
    int nhuesos;                             // número de elementos de la matriz phuesos
tMusculo *pmusculos;                          // apunta a la matriz dinámica de músculos
int nmusculos;                                // número de elementos de la matriz pmusculos
}

tHueso *CrearArrayHuesos(int nh, tMusculo *pmusc, int nm){
	         int i,j;
			 tHueso * huesitos;
			 char nomMusc[10];
			 huesitos = (tHueso *)malloc(nh*sizeof(tHueso));         //Reservamos memoria para el array de huesos
			 for (i=0;i<nh;i++){                                         //Por cada hueso
				 huesitos[i].infComun = LeeInfcomun();                   //Leemos su informacion comun
				 printf("Densidad del hueso: ");
				 scanf("%f",&huesitos[i].densidad);                       //Leemos su densidas
				 printf("Numero de musculos asociados al hueso: ");
				 scanf("%i",&huesitos[i].nmusc);                          //Leemos su numero de musculos asociados

				 huesitos[i].pmusc = (tMusculo **)malloc(huesitos[i].nmusc * sizeof(tMusculo *)); //Reservamos un array de tantos punteros a
				 for(j=0;j<huesitos[i].nmusc;j++){                            //estructuras de tipo tMusculo como musculos hayamos indicado
					 printf("Numbre del musculo %i",j+1);                     //Por cada musculo que este asociado
					 gets(nomMusc);                                           //Recogemos su numbre
					 huesitos[i].pmusc[j]= EnlazaHuesoMusculo(nomMusc,pmusc,nm); // Añadimos su puntero array del hueso
				 }
			 }
}


void MostrarMusculos(tHueso *ph, int nh,
                     int longitud, tPartesCuerpo ubicacion){
			 int i,j;
			 printf("Nombre Musculo \t \t Hueso Asociado");
			 printf("------------------------------------");
			 for(i=0;i<nh;i++){                                  //Por cada hueso
				 for(j=0;j<ph[i].nmusc;j++){                     //Por cada musculo de ese hueso
					 if(ph[i].pmusc[j]->infComun.longitud < longitud){   //Ver si el musculo es pequeño suficiente
						 if(ph[i].pmusc[j]->infComun.ubicacion = ubicacion){ //Ver si esta en la ubicacion pedida
							 printf("%s \t \t %s",ph[i].infComun.nombre, ph[i].pmusc[j]->infComun.nombre);  //imprimir datos del nombre
						 }
					 }
				 }
			 }
}

float CalculaDensidadOsea(tHueso *ph, int nh){
	       int i;
		   float denperlon=0;        //Contador de densidad por milimetro
		   for (i=0;i<nh;i++){     //por cada hueso
			   denperlon += ph[i].densidad / ph[i].infComun.longitud; //sumamos su densidad por milimetro
		   }
		   denperlon = denperlon * 100 /nh;  //Hallamos el porcentaje
		   return denperlon;
}

void LiberaMusculos(tHueso *ph, int nh, tMusculo *pm){	           

	    int i;
		for (i=0;i<nh;i++){        //Por cada hueso 
			free(ph[i].pmusc);     //Liberar su array de punteros a musculos
			ph[i].pmusc = NULL;    //Poner el array a NULL
			ph[i].nmusc = 0;}      //Poner el numero de musculos a 0

		free (pm);                 //Libera el array de musculos
		pm = NULL;                 //Lo iguala a NULL
		nh = 0;                    //Pone el numero de huesos a 0
}





