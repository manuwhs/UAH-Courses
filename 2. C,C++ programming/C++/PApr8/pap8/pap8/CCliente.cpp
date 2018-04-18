#include "CCliente.h"
#include <iostream>
using namespace std;

// PREGUNTA 8: AgregarContrato de CCliente
void CCliente::AgregarContrato(const CContrato& c)
{
	m_Contratos.AgregarObjeto(c);
}

// PREGUNTA 5: operator<< para resolver: cout << unCliente

ostream& operator<<(ostream& os, const CCliente& cli)
{
	CLista<CContrato> contrato;
	contrato = cli.GetContratos();
	cout << "Nombre del cliente: "<< cli.GetNombre() << endl;
	if(!contrato.EstaVacia())
	{
		cout << "Contrato/s: \n" 
			<< contrato.GetPrimero()
			<< endl
			<< endl;
			
		while(contrato.TieneMas())
		{
			cout << contrato.GetActual() << endl
				<<endl;
		}
	}

	return os;
}



// PREGUNTA 9: total += seguros[i]
void operator+=(long & suma,const CCliente& seg)
{
	long i=0;
	try
	{
		for(i=0;(!seg.m_Contratos.EstaVacia());i++)
			seg.m_Contratos[i];
	}
	catch(CIndiceIncorrecto& e)
	{
	}
	suma+=i;
}