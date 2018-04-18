//******PRACTICA 1 NHC*******
#include <iostream>
#include "MemoryManager.h"
#include "funciones.h"
using namespace std;

int main()
{
	MatFloat Datos;
	MatFloat *pDatos;
	pDatos = &Datos;
	pDatos->ppMatrizF=0;
	pDatos->nColumnas=0;
	pDatos->nFilas=0;
	float**p=0;
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
		cout<<" 4.Destruir matriz\n"<<endl;
		cout<<" 5.Terminar\n"<<endl;

		cout<<"Indique la opcion que desea realizar:";
		cin>>i;
	
		if (i==0x31)								//i=1 Opcion Construir
		{
			if(p!=0)
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
								pDatos->ppMatrizF=p;
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
								cin.clear();
								cin.ignore(numeric_limits<int>::max(), '\n');
								h=1;
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
						cin.clear();
						cin.ignore(numeric_limits<int>::max(), '\n');
						r=1;
					}
				}while(r==1);
		
			}
		}
		else if(i==0x32)							//i=2 Opcion Introducir
		{
			if(pDatos->ppMatrizF==NULL||(pDatos->nFilas==0 && pDatos->nColumnas==0))
			{
			cout<<"ERROR.No se han especificado las dimensiones de la matriz."<<endl;
			}
			else
			{
				cout<<"Introduzca los datos de la matriz"<<endl;
				IntroducirDatos(pDatos);
			}
			j=1;
		}
		else if(i==0x33)							//i=3 Opcion Mostrar
		{
			if(pDatos->ppMatrizF==NULL||(pDatos->nFilas==0 && pDatos->nColumnas==0))
			{
				cout<<"ERROR.No hay matriz almacenada."<<endl;
			}
			else
			{
				cout<<"La Matriz creada es:"<<endl;
				MostrarMatriz(Datos);
			}
			j=1;
		}
		else if(i==0x34)							//i=4 Opcion Destruir
		{
			DestruirMatriz(pDatos);
			p=NULL;
			j=1;
		}
		else if(i==0x35)							//i=5 Opcion terminar
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
					cout<<"Programa finalizado\n";
				}
				else if(respuesta == 'n')
				{
					j=1;															//Vuelve al menu
				}
				else
				{
					cout<<"Respuesta no valida\n"<<endl;
					cin.ignore(numeric_limits<int>::max(), '\n');
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
		system("pause");
	}while (j==1);
	MemoryManager::dumpMemoryLeaks();
	system("pause");
}