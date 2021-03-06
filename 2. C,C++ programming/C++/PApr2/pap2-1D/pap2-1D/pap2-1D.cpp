//******PRACTICA 2 NHC*******
#include <stdlib.h>
#include <iostream>
#include "MemoryManager.h"
#include "CMatFloat.h"
#include "utils.h"

using namespace std;


int main()
{
	int i=0,j=0;
	do
	{
		CMatFloat matriz;
		i=0;
		int Fil=0, Col=0, opcion=0, nElementos=0;
		system("cls");
		cout<<"Menu:"<<endl;
		static char*opciones[]=
		{
		"Construir matriz 1D",
		"Construir matriz 2D",
		"Introducir matriz",
		"Mostrar matriz",
		"Destruir matriz",
		"Terminar",
		};
		
		int nOpciones = sizeof(opciones)/ sizeof(char*);
		opcion=CrearMenu(opciones, nOpciones);
		
		if(opcion==1)						//CrearMatriz1D
		{
			int j=0;
			
			do
			{
				j=0;
				cout<<"Introduzca numero de columnas:"<<endl;
				cin>>nElementos;
				if(nElementos<=0)
				{
					cout<<"Error.Las dimensiones no son correctas"<<endl;
					j=1;
				}
				else
				{
					matriz.CrearMatriz1D(nElementos);
					i=1;
				}
			}while(j==1);
				
		}
		else if(opcion==2)					//CrearMatriz2D
		{
			int j=0;
			do
			{
				j=0;
				cout<<"Introduzca numero de filas:"<<endl;
				cin>>Fil;
				if(Fil<=0)
				{
					cout<<"Error.Las dimensiones no son correctas"<<endl;
					j=1;
				}
			}while(j==1);
			do
			{
				j=0;
				cout<<"Introduzca numero de columnas:"<<endl;
				cin>>Col;
				if(Col<=0)
				{
					cout<<"Error.Las dimensiones no son correctas"<<endl;
					j=1;
				}
			}while(j==1);
			
			matriz.CrearMatriz2D(Fil,Col);
				i=1;
			
		}
		else if(opcion==3)					//Introducir Datos
		{
			matriz.Introducir();
			i=1;
		}
		else if(opcion==4)					//Mostrar Datos
		{
			matriz.Mostrar();
			i=1;
		}
		else if(opcion==5)					//Destruir Datos
		{
			matriz.Destruir();
			i=1;
		}
		else if(opcion==6)					//Terminar
		{
		do
			{
				char respuesta=0;
				i=0;
				j=0;
				cout<<"�Seguro que quiere terminar? [y/n]"<<endl;
				cin>> respuesta;
				if(respuesta == 'y')
				{
					cout<<"Programa finalizado"<<endl;
				}
				else if(respuesta == 'n')
				{
					i=1;															//Vuelve al menu
				}
				else
				{
					cout<<"Respuesta no valida"<<endl;
					j=1;														//Vuelve a formular la pregunta
				}
			}while (j==1);
		}
		else
		{
			cout<<"Opcion incorrecta.Intentelo de nuevo."<<endl;
			cin.ignore(numeric_limits<int>::max(), '\n');
			i=1;
		}
	}while(i==1);
	MemoryManager::dumpMemoryLeaks();
	system("pause");
	return 0;
}