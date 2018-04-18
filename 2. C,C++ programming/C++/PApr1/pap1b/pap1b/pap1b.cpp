//******PRACTICA 1. AMPLIACIÓN DE VECTOR. NHC*******
#include <iostream>
#include "MemoryManager.h"
#include "funciones.h"

int main()
{
	MatFloat Datos;
	MatFloat *pDatos;
	pDatos = &Datos;
	pDatos->nColumnas=0;
	pDatos->nFilas=0;
	vector< vector<float> > p;
	vector< vector<float> >* e;
	e=0;
	int j=0, k=0, nFil=0, nCol=0;
	char i=0;
	do
	{
		i=0;
		j=0;
		system("cls");
		cout<<"Menu:   \n"<<endl;
		cout<<" 1.Construir matriz\n"<<endl;
		cout<<" 2.Introducir matriz\n"<<endl;
		cout<<" 3.Mostrar matriz en pantalla\n"<<endl;
		cout<<" 4.Terminar\n"<<endl;

		cin>>i;
	
		if (i==0x31)								//i=1 Opcion Construir
		{
			if(e!=0)
			{
				cout<<"Ya existe una matriz, destruyala si desea crear otra nueva"<<endl;
				j=1;
			}
			else
			{
				int r=0, h=0;
				do
				{
					r=0;
					cout<<"Introduce el numero de filas de la matriz:"<<endl;
					cin>>nFil;
					if(nFil>0)
					{
						do
						{
							h=0;
							cout<<"Introduce el numero de columnas de la matriz:"<<endl;
							cin>>nCol;
							if(nCol>0)
							{
								p=ConstruirMatriz(nFil, nCol);
								pDatos->nColumnas=nCol;
								pDatos->nFilas=nFil;
								j=1;
							}
							else if(nCol=0||nCol<0)
							{
								cout<<"ERROR.Intentelo de nuevo con un valor real."<<endl;
								h=1;
							}
							else
							{
								cout<<"ERROR.Dato no valido."<<endl;
								system("pause");
								return 0;
							}
						}while(h==1);
					}
					else if(nFil=0||nFil<0)
					{
						cout<<"ERROR.Intentelo de nuevo con un valor real."<<endl;
						r=1;
					}
					else
					{
						cout<<"ERROR.Dato no valido."<<endl;
						system("pause");
						return 0;
					}
				}while(r==1);
		
			}
		}
		else if(i==0x32)							//i=2 Opcion Introducir
		{
			if(pDatos->nFilas==0 && pDatos->nColumnas==0)
			{
			cout<<"ERROR.No se ha creado ninguna matriz."<<endl;
			}
			else
			{
				cout<<"Introduzca los datos de la matriz"<<endl;
				IntroducirDatos(p);
			}
			j=1;
		}
		else if(i==0x33)							//i=3 Opcion Mostrar
		{
			if(pDatos->nFilas==0 && pDatos->nColumnas==0)
			{
				cout<<"ERROR.No se ha creado ninguna matriz."<<endl;
			}
			else
			{
				cout<<"La Matriz creada es:"<<endl;
				MostrarMatriz(p);
			}
			j=1;
		}
		else if(i==0x34)							//i=5 Opcion terminar
		{
			do
			{
				char respuesta=0;
				j=0;
				k=0;
				cout<<"¿Seguro que quiere terminar? [y/n]"<<endl;
				cin>> respuesta;
				if(respuesta == 'y')
				{
					cout<<"Programa finalizado"<<endl;
					return 0;
				}
				else if(respuesta == 'n')
				{
					j=1;															//Vuelve al menu
				}
				else
				{
					cout<<"Respuesta no valida"<<endl;
					k=1;														//Vuelve a formular la pregunta
				}
			}while (k==1);
		}
		else
		{
			cout<<"Opcion incorrecta. Intentelo de nuevo"<<endl;
			cin.ignore(numeric_limits<int>::max(), '\n');
			j=1;																//Vuelve al menu
		}
	}while (j==1);
	MemoryManager::dumpMemoryLeaks();
}