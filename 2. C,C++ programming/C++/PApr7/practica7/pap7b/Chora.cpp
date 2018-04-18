#include <iostream>
#include <cstdlib>
#include "Chora.h"
#include "MemoryManager.h"
using namespace std;

Chora::Chora (int horas, int minutos, int segundos, string formato)
{
	m_nhoras= horas;
	m_nminutos=minutos;
	m_nsegundos=segundos;  
	m_pszformato= formato;
	//cout<<"\nEl constructor ha sido invocado\n";
}
Chora & Chora::operator = (const Chora& hora)
{
	m_nhoras=hora.m_nhoras;
	m_nminutos=hora.m_nminutos;
	m_nsegundos=hora.m_nsegundos;
	m_pszformato = hora.m_pszformato;
	//cout<<"\nEl operador de asignacion ha sido invocado\n";
	return *this;
}

Chora::Chora (const Chora& hora)
{
	*this = hora;
	//cout<<"\nEl constructor copia ha sido invocado\n";
}
Chora::~Chora ()
{
	
	//cout<<"\nEl destructor ha sido invocado\n";
}

bool Chora::Formato24() const
{
	if ((m_pszformato[0] =='2')||(m_pszformato[1] =='4')) return true;
	else return false;
}


bool Chora::eshoracorrecta () const
{
	if ((m_nminutos<0)||(m_nminutos>60)||(m_nsegundos<0)||(m_nsegundos>60)||(m_nhoras<0)||(m_nhoras>23))
		return false;
		
	if (Formato24()) return true;
	if (((m_pszformato[0] == 'A')||(m_pszformato[0] == 'P'))&&(m_pszformato[1] == 'M')&&(m_nhoras<12)) return true;
	return false;
}

void Chora::Construir()
{
	m_nhoras = 0;
	m_nminutos = 0;
	m_nsegundos = 0;
	m_pszformato = "24";
}

bool Chora::AsignarHora(int nhoras,
				 int nminutos,
				 int nsegundos,
				 string pszformato)
{
	m_nhoras = nhoras;
	m_nminutos = nminutos;
	m_nsegundos = nsegundos;
	m_pszformato =pszformato;
	return Chora::eshoracorrecta ();
}

void Chora::ObtenerHora (int& nhoras,
				  int& nminutos,
				  int& nsegundos,
				  string& pszformato) const
{
	nhoras = m_nhoras;
	nminutos = m_nminutos;
	nsegundos = m_nsegundos;
	pszformato=m_pszformato;
}
