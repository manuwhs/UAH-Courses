#include <iostream>
#include <string>
#include "CHora.h"
#include"MemoryManager.h"
#include "utils.h"

using namespace std;

bool CHora::Formato24()const
{
	string formato;
	if((m_pszFormato[0]>=65) && (m_pszFormato[0]<=90)||(m_pszFormato[1]>=65) && (m_pszFormato[1]<=90))
	{	
		formato=Minusculas(m_pszFormato);
	}
	else
	{
		formato=m_pszFormato;
	}
	if(formato=="24")
	{
		return true;
	}
	else if(formato=="am"||formato=="pm")
	{
		return false;
	}
	else
	{
		cout<<"Ese formato no es valido"<<endl;
	}
}
bool CHora::EsHoraCorrecta () const
{
	int format=0;
	format=CHora::Formato24();
	if((format==1) &&(m_nHoras>=0&&m_nHoras<24)&&(m_nMinutos>=0&&m_nMinutos<60)&&(m_nSegundos>=0&&m_nSegundos<60))
	{
		return true;
	}
	else if((format==0) &&(m_nHoras>=0&&m_nHoras<13)&&(m_nMinutos>=0&&m_nMinutos<60)&&(m_nSegundos>=0&&m_nSegundos<60))
	{
		return true;
	}
	else
	{
		return false;
	}
}
void CHora::Construir()
{
	m_nHoras = 0;
	m_nMinutos = 0;
	m_nSegundos = 0;
	m_pszFormato="  \n";
}
bool CHora::AsignarHora(int nHoras, int nMinutos, int nSegundos, string pszFormato)
{
	bool correct;
	m_nHoras=nHoras;
	m_nMinutos=nMinutos;
	m_nSegundos=nSegundos;
	m_pszFormato=pszFormato;
	correct=CHora::EsHoraCorrecta();
	return correct;
}
void CHora::ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, string &pszFormato) const
{
	nHoras = m_nHoras;
	nMinutos = m_nMinutos;
	nSegundos = m_nSegundos;
	pszFormato=m_pszFormato;
}

