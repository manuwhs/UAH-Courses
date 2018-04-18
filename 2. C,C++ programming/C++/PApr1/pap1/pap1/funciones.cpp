#include <iostream>
#include "MemoryManager.h"
#include "funciones.h"
using namespace std;


float **ConstruirMatriz(int nFilas, int nColumnas)
{
	float**m = new (nothrow) float*[nFilas];
	if(m == NULL)
	{
		cerr<<"Memoria insuficiente"<<endl;
	}
	else
	{
		for (int i=0; i < nFilas; i++)
		{
			m[i]=new float[nColumnas];
		}
		for(int i =0; i<nFilas; i++)
		{
			for(int j=0; j<nColumnas; j++)
			{
				m[i][j]=0;
			}
		}
	}
	return m;
};
void IntroducirDatos(MatFloat *pDestino)
{	
	for(int i =0; i<pDestino->nFilas; i++)
	{
		for(int j=0; j<pDestino->nColumnas; j++)
		{
			cin>>pDestino->ppMatrizF[i][j];
		}
	}
	return;
};
void  MostrarMatriz(MatFloat mOrigen)
{
	for(int i =0; i<mOrigen.nFilas; i++)
	{
		for(int j=0; j<mOrigen.nColumnas; j++)
		{
			cout<<"\t";
			cout<<mOrigen.ppMatrizF[i][j];
		}
		cout<<"\n";
	}
	return;
};
void DestruirMatriz(MatFloat *pMatFloat)
{
	char respuesta;
	int j=0;
	if(pMatFloat->ppMatrizF==NULL||(pMatFloat->nFilas==0 && pMatFloat->nColumnas==0))
	{
		cout<<"Error.No se ha creado ninguna matriz."<<endl;
	}
	else
	{
		do
		{
			j=0;
			respuesta=NULL;
			cout<<"Esta seguro que desea destruir la matriz?[y/n]"<<endl;
			cin>>respuesta;	
			if(respuesta == 'y')
			{
				for (int i=0; i < pMatFloat->nFilas; i++)
				{
					delete [] pMatFloat->ppMatrizF[i];
				}
				delete [] pMatFloat->ppMatrizF;
				pMatFloat->nColumnas=0;
				pMatFloat->nFilas=0;
				pMatFloat->ppMatrizF=NULL;
				cout<<"La matriz ha sido destruida"<<endl;
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