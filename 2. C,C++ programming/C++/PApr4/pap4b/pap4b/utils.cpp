#include "utils.h"
#include <iostream>
#include <limits>
using namespace std;
using namespace utils;

bool CUtils::leerInt(int& dato)
{
	cin.exceptions(ios::failbit | ios::badbit);
	try
	{
		cin >> dato;
		cin.ignore(numeric_limits<int>::max(),'\n');
		return true;
	}
	catch(ios_base::failure& e)
	{
		if(cin.eof())
		{
			cin.clear();
			return false;
		}
		else
		{
			cout<< e.what()<<":dato no valido";
			cin.clear();
			cin.ignore(numeric_limits<int>::max(),'\n');
			return leerInt(dato);
		}
	}
};
bool CUtils::leerFloat(float& dato)
{
	cin.exceptions(ios::failbit | ios::badbit);
	try
	{
		cin >> dato;
		cin.ignore(numeric_limits<int>::max(),'\n');
		return true;
	}
	catch(ios_base::failure& e)
	{
		if(cin.eof())
		{
			cin.clear();
			return false;
		}
		else
		{
			cout<< e.what()<<":dato no valido";
			cin.clear();
			cin.ignore(numeric_limits<int>::max(),'\n');
			return leerFloat(dato);
		}
	}
}

bool CUtils::leerCadena(char& cadena)
{
	cin.exceptions(ios::failbit | ios::badbit);
	try
	{
		cin >> cadena;
		cin.ignore(numeric_limits<int>::max(),'\n');
		return true;
	}
	catch(ios_base::failure& e)
	{
		if(cin.eof())
		{
			cin.clear();
			return false;
		}
		else
		{
			cout<< e.what()<<":dato no valido";
			cin.clear();
			cin.ignore(numeric_limits<int>::max(),'\n');
			return leerCadena(cadena);
		}
	}
	
}
int CUtils::CrearMenu(char *opciones_menu[], int num_opciones)
{
	int k = 0;
	cout<< endl;
	for (k=0;k<num_opciones;k++) 
		cout << "\n"<<(k+1)<<" "<<opciones_menu[k]<<endl;
	do
	{
		cout<<"\nOpcion (1- "<<num_opciones<<"):";
		CUtils::leerInt(k);
		
	}while (k< 1 || k> num_opciones);
	return k;
}
char CUtils::CrearSubMenu(char *opciones_menu[], char num_opciones)
{
	char k = 0, n=0;
	cout<< endl;
	for (k=0;k<num_opciones;k++)
	{
		n= k+'a';
		cout << "\n"<<(n)<<" "<<opciones_menu[k]<<endl;
	}
	do
	{
		cout<<"\nOpcion (a- "<<(n)<<"):";
		CUtils::leerCadena(k);
		
	}while (k< 'a' || k>n );
	return k;
}
string CUtils::Minusculas(string cadena)
{
	if(cadena[0]>=65||cadena[0]<90)
	{
		cadena[0]+=32;
	}
	if(cadena[1]>=65||cadena[1]<90)
	{
		cadena[1]+=32;
	}
	return cadena;
}
