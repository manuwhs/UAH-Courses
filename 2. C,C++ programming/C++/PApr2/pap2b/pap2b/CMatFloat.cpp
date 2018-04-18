#include <iostream>
#include "CMatFloat.h"
#include "utils.h"
#include <vector>
using namespace std;	

void CMatFloat::CrearMatriz2D(int Filas, int Columnas)
{
	vector<vector <float> > v (Filas,vector<float>(Columnas,0)) ;
	DatosM = v;
	m_nFilas = Filas;
	m_nColumnas = Columnas;
	
};
void CMatFloat::CrearMatriz1D(int Filas, int Columnas)
{
	vector<vector <float> > v (Filas,vector<float>(Columnas,0)) ;
	DatosM =v;
	m_nFilas = Filas;
	m_nColumnas = Columnas;

	//DatosM.resize((m_nFilas*m_nColumnas));
	//cout<<DatosM.size();
	
};
void CMatFloat::Introducir()
{	
	if(m_nFilas>0&&m_nColumnas>0)
	{
		cout << "Introduzca los datos de la matriz:"<< endl;
		for(int i=0;i<m_nFilas; i++)
		{
			cout << "Fila "<<(i+1)<<":"<< endl;
			for(int j=0;j<m_nColumnas; j++)
				cin>>DatosM.at(i).at(j);
		}
	}
	else if(m_nFilas<=0||m_nColumnas<=0)
	{
		cout<<"ERROR.No existe matriz"<<endl;
		cin.ignore(numeric_limits<int>::max(), '\n');
		return;
	}
	else
	{
		cout<<"ERROR.Dato no valido"<<endl;
		cin.ignore(numeric_limits<int>::max(), '\n');
		return;
	}
	
};
void CMatFloat::Mostrar()
{
	if(m_nFilas>0&&m_nColumnas>0)
	{
		for(int i=0;i<m_nFilas; i++)
		{
			for(int j=0;j<m_nColumnas; j++)
			{
				cout<<"\t";
				cout<<DatosM.at(i).at(j);
			}
			cout << "\n";
		}
	}
	else if(m_nFilas<=0||m_nColumnas<=0)
	{
		cout<<"ERROR.No existe matriz"<<endl;
		cin.ignore(numeric_limits<int>::max(), '\n');
		return;
	}
	else
	{
		cout<<"ERROR.Dato no valido"<<endl;
		cin.ignore(numeric_limits<int>::max(), '\n');
		return;
	}
};
