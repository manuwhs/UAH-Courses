#include <iostream>
#include "funciones.h"

vector< vector<float> > ConstruirMatriz(int nFilas, int nColumnas)
{
	vector< vector<float> > v(nFilas, vector<float> (nColumnas, 0));
	return v;
}
void IntroducirDatos(vector< vector<float> >& v)
{
	cout << "Introduce valores reales: ";
	for (int i=0 ; i<v.size() ; i++)
	{
		for(int j=0; j<v[i].size();j++)
		{
			cin >> v[i][j];
			cout << endl;	
		}
	}
	return;
}
void  MostrarMatriz(vector< vector<float> >& v)
{
	for(int i =0; i<v.size(); i++)
	{
		for(int j=0; j<v[i].size(); j++)
		{
			cout << "\t";
			cout << v[i][j];
		}
		cout<<"\n";
	}
	system("pause");
	return;
}
