#include "CUtils.h"
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
			cout<< e.what()<<":dato no valido\n";
			cin.clear();
			cin.ignore(numeric_limits<int>::max(),'\n');
			return leerFloat(dato);
		}
	}
}

bool CUtils::leerCadena(string& cadena)
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
			cout<< e.what()<<":dato no valido\n";
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
		cout <<(k+1)<<" "<<opciones_menu[k]<<endl;
	do
	{
		cout<<"\nOpcion (1- "<<num_opciones<<"):";
		CUtils::leerInt(k);
		
	}while (k< 1 || k> num_opciones);
	return k;
}
string CUtils::CrearSubMenu(char *opciones_menu[], char num_opciones)
{
	string n=0;
	string k;
	cout<< endl;
	for (n[0]=0;n[0]<num_opciones;n[0]++)
	{
		n+='a';
		cout << "\n"<<(n)<<" "<<opciones_menu[n[0]]<<endl;
	}
	do
	{
		cout<<"\nOpcion (a- "<<(n)<<"):";
		CUtils::leerCadena(k);		
	}while (k< "a" || k>n );
	return k;
}
string CUtils::Minusculas(string cadena)
{
	for(int i=0; i<cadena.size();i++)
	{
		if((cadena[i]>=65) && (cadena[i]<=90))
		{
			cadena[i]=(cadena[i]+32);
		}
	}
	return cadena;

}