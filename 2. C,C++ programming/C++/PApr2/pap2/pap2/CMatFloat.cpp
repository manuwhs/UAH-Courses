#include <iostream>
#include "CMatFloat.h"
#include "utils.h"
using namespace std;	
void CMatFloat::Iniciar()
{
	float m_ppMatrizF=NULL;
	int m_nFilas=0;
	int m_nColumnas=0;
	return;
};
void CMatFloat::CrearMatriz2D(int Filas, int Columnas)
{
	float**m = new float*[Filas];
	if(m ==NULL)
	{
		cerr<<"Memoria insuficiente"<<endl;
	}
	else
	{
		for (int i=0; i < Filas; i++)
		{
			m[i]=new float[Columnas];
		}
	}
	m_nFilas=Filas;
	m_nColumnas=Columnas;
	m_ppMatrizF=m;
	for (int i=0;i<m_nFilas;i++)
	{
		for(int j=0; j<m_nColumnas; j++)
		{
			m_ppMatrizF[i][j]=0;
		}
	}	
	return;
};
void CMatFloat::CrearMatriz1D(int Filas, int Columnas)
{
	float**m = new float*[Filas];
	if(m ==NULL)
	{
		cerr<<"Memoria insuficiente"<<endl;
	}
	else
	{
		for (int i=0; i < Filas; i++)
		{
			m[i]=new float[Columnas];
		}
	}
	m_nFilas=Filas;
	m_nColumnas=Columnas;
	m_ppMatrizF=m;
	for (int i=0;i<m_nFilas;i++)
	{
		for(int j=0; j<m_nColumnas; j++)
		{
			m_ppMatrizF[i][j]=0;
		}
	}
	return;
};
void CMatFloat::Introducir()
{
	cout << "\nIntroduzca los datos de la matriz por filas: "<< endl;
	for (int i=0;i<m_nFilas;i++)
		{
			cout<<"Fila "<<(i+1)<<":"<<endl;
			for(int j=0; j<m_nColumnas; j++)
			{
				leer_float (m_ppMatrizF[i][j]);
			}
		}	
};
void CMatFloat::Mostrar()
{
	cout << "\nLa matriz es la siguiente: "<< endl;
	for (int i=0;i<m_nFilas;i++)
	{
		for(int j=0; j<m_nColumnas; j++)
		{
			cout<<"\t";
			cout<< m_ppMatrizF[i][j];
		}
		cout<<"\n";
	}
	system("pause");
};
void CMatFloat::Destruir()
{
	char respuesta;
	int j=0;
	if(m_ppMatrizF==NULL||(m_nFilas==0 && m_nColumnas==0))
	{
		cout<<"Error.No se ha creado ninguna matriz."<<endl;
	}
	else
	{
		int a=0;
		do
		{
			cout<<"Esta seguro que desea destruir la matriz?[y/n]"<<endl;
			cin>>respuesta;	
			if(respuesta == 'y')
			{
				for (int i=0; i < m_nFilas; i++)
				{
					delete [] m_ppMatrizF[i];
				}
				delete [] m_ppMatrizF;
				m_nColumnas=0;
				m_nFilas=0;
				m_ppMatrizF=NULL;
				a=Existe();
				if(a==1)
				{
					cout<<"La matriz ha sido destruida"<<endl;
				}
				else
				{
					j=1;
				}
			}
			else if(respuesta == 'n')
			{
				return;
			}
			else
			{
				cout<<"Respuesta no valida"<<endl;
				j=1;
			}
		}while(j==1);	
	}
};
bool CMatFloat::Existe()
{
	if(m_ppMatrizF==NULL)
		return true;	
	else
		return false;
};