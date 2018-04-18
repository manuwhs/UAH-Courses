#include<iostream>
#include<string>
#include "CCliente.h"
#include "CFicha.h"
void CCliente::Visualizar()				//Funcion para visualizar a una persona de la clase CCliente
{
	cout << "\nCliente:\n\n" ;
	cout << "\tNombre: "<< ObtenerNombre()<<"\n\tEdad: "<< ObtenerEdad ()<<"\n\tDNI: "<<m_sDNI<<endl;
}
