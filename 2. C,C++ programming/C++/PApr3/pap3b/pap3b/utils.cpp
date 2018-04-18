#include "utils.h"
#include <iostream>
#include <limits>
#include <string>
using namespace std;

int LeerInt()
{
	cin.exceptions(ios::failbit | ios::badbit);
	int dato= 0;
	try
	{
		cin >> dato;
	}
	catch(ios_base::failure& e)
	{
		cout<<e.what()<<":dato no valido\n";
		cin.clear();
		cin.ignore(numeric_limits<int>::max(),'\n');
	}
	return dato;
};
float LeerFloat()
{
	cin.exceptions(ios::failbit | ios::badbit);
	float dato= 0;
	try
	{
		cin >> dato;
	}
	catch(ios_base::failure& e)
	{
		cout<<e.what()<<":dato no valido\n";
		cin.clear();
		cin.ignore(numeric_limits<int>::max(),'\n');
	}
	return dato;
};
char LeerCadena()
{
	cin.exceptions(ios::failbit | ios::badbit);
	char cadena= 0;
	try
	{
		cin >> cadena;
	}
	catch(ios_base::failure& e)
	{
		cout<<e.what()<<":dato no valido\n";
		cin.clear();
		cin.ignore(numeric_limits<int>::max(),'\n');
	}
	return cadena;
};
int CrearMenu(char *opciones_menu[], int num_opciones)
{
	int k = 0;
	cout<< endl;
	for (k=0;k<num_opciones;k++) 
		cout << "\n"<<(k+1)<<" "<<opciones_menu[k]<<endl;
	do
	{
		cout<<"\nOpcion (1- "<<num_opciones<<"):";
		k=LeerInt();
		
	}while (k< 1 || k> num_opciones);
	return k;
}
std::string Minusculas(std::string cadena)
{
	if((cadena[0]>=65) && (cadena[0]<=90))
	{
	cadena[0]=(cadena[0]+32);
	}
	if((cadena[1]>=65) && (cadena[1]<=90))
	{
	cadena[1]=(cadena[1]+32);
	}
	return cadena;
}