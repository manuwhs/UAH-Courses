#include "utils.h"
#include <iostream>
#include <limits>
using namespace std;

bool leer_int(int& dato)
{
	cin.exceptions(ios::failbit | ios::badbit);
	try
	{
		cin >> dato;
		cin.ignore(numeric_limits<int>::max(), '\n');
		return true;
	}
	catch(ios_base::failure& e)
	{
		if (cin.eof())
		{
			cin.clear();
			return false;
		}
		else
		{
			cout <<"\nError: dato no valido\n";
			cin.clear();
			cin.ignore(numeric_limits<int>::max(), '\n');
			cout<<"Intentelo de nuevo"<<endl;
			return leer_int(dato);
		}
	}
};
bool leer_float(float& dato)
{
	cin.exceptions(ios::failbit | ios::badbit);
	try
	{
		cin >> dato;
		cin.ignore(numeric_limits<int>::max(), '\n');
		return true;
	}
	catch(ios_base::failure& e)
	{
		if (cin.eof())
		{
			cin.clear();
			return false;
		}
		else
		{
			cout <<"\nError: dato no valido\n";
			cin.clear();
			cin.ignore(numeric_limits<int>::max(), '\n');
			return leer_float(dato);
		}
	}
}
int CrearMenu(char *opciones_menu[], int num_opciones)
{
	int k = 0;
	cout<< endl;
	for (k=0;k<num_opciones;k++) 
		cout << "\n"<<(k+1)<<" "<<opciones_menu[k]<<endl;
	do
	{
		cout<<"\nOpcion (1- "<<num_opciones<<"):";
		leer_int(k);
		
	}while (k< 1 || k> num_opciones);
	return k;
}
