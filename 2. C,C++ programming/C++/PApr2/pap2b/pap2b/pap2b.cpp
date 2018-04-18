//******PRACTICA 2. AMPLIACION VECTOR. NHC*******
#include <stdlib.h>
#include <iostream>
#include "CMatFloat.h"
#include "utils.h"

using namespace std;


int main()
{
	int i=0,j=0;
	CMatFloat matriz;
	do
	{
		i=0;
		int Fil=0, Col=0, opcion;
		system("cls");
		cout<<"Menu:"<<endl;
		static char*opciones[]=
		{
		"Construir matriz 1D",
		"Construir matriz 2D",
		"Introducir matriz",
		"Mostrar matriz",
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
				if(Fil!=1 && Col!=1)
				{
					cout<<"Error.Uno de los parametros debe ser 1."<<endl;
					j=1;
				}
				else
				{
					matriz.CrearMatriz1D(Fil,Col);
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
		else if(opcion==5)					//Terminar
		{
		do
			{
				char respuesta=0;
				i=0;
				j=0;
				cout<<"¿Seguro que quiere terminar? [y/n]"<<endl;
				cin>> respuesta;
				if(respuesta == 'y')
				{
					break;
				}
				else if(respuesta == 'n')
				{
					cout << "Programa finalizado "<< endl;
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
	system("pause");
	return 0;
}