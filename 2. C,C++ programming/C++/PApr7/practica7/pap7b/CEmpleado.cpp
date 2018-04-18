#include "CEmpleado.h"
#include <iostream>
#include<string>
#include "CCliente.h"
#include "CFicha.h"
using namespace std;

void CEmpleado::Visualizar()			//Funcion para visualizar a una persona de la clase CEmpleado
{
	cout << "\nEmpleado:\n\n\tNombre: "<< ObtenerNombre()<<"\n\tEdad: "<< ObtenerEdad ()<<endl;
	cout << "\n\tCategoria: "<< m_sCategoria <<"\n\tAntiguedad: "<<m_nAntiguedad;
}
CEmpleado::CEmpleado (const string & sNombre,int nEdad, int nHoras,int nMinutos, int nSegundos, const string & formato,const string& categoria,int antiguedad): CFicha ( sNombre,nEdad,nHoras,nMinutos,nSegundos,formato),m_sCategoria(categoria), m_nAntiguedad(antiguedad){}