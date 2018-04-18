#include<iostream>
#include "CHora.h"
#include "utils.h"
#include "MemoryManager.h"

using namespace std;
using namespace utils;

CHora::CHora(int horas, int minutos , int segundos , string formato )
{
	m_nHoras=horas;
	m_nMinutos=minutos;
	m_nSegundos=segundos;
	m_pszFormato=formato;
	cout<<"\nEl constructor ha sido invocado\n";
}
CHora& CHora::operator=(const CHora& hora)
{
	m_nHoras=(hora.m_nHoras);
	m_nMinutos=(hora.m_nMinutos);
	m_nSegundos=(hora.m_nSegundos);
	m_pszFormato=(hora.m_pszFormato);
	return *this;
}
CHora::CHora(const CHora& hora)
{
	m_nHoras=hora.m_nHoras;
	m_nMinutos=hora.m_nMinutos;
	m_nSegundos=hora.m_nSegundos;
	m_pszFormato = hora.m_pszFormato;
}
CHora::~CHora ()
{
	cout<<"\nEl destructor ha sido invocado\n";
}
bool CHora::Formato24()const
{
	if(m_pszFormato[0]=='2'&& m_pszFormato[1]=='4')
	{
		return true;
	}
	else if((m_pszFormato[0]=='a'||m_pszFormato[0]=='p') && (m_pszFormato[1]=='m'))
	{
		return false;
	}
	else
	{
		cout<<"Ese formato no es valido"<<endl;
		return false;
	}
}
bool CHora::EsHoraCorrecta () const
{
	int format=0,a=0;
	do
	{
		if((m_pszFormato[0]!=NULL)&&(m_pszFormato[1]!=NULL))
		{
			if((m_pszFormato[0]=='2'&& m_pszFormato[1]=='4') &&(m_nHoras>=0&&m_nHoras<24)&&(m_nMinutos>=0&&m_nMinutos<60)&&(m_nSegundos>=0&&m_nSegundos<60))
			{
				return true;
			}
			else if(((m_pszFormato[0]=='a')||(m_pszFormato[0]=='p'))&&(m_pszFormato[1]=='m') &&(m_nHoras>=0&&m_nHoras<13)&&(m_nMinutos>=0&&m_nMinutos<60)&&(m_nSegundos>=0&&m_nSegundos<60))
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		else
		{
			CHora::Formato24();
			a=1;
		}
	}while(a==1);

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

void CHora::ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, string& pszFormato) const
{
	nHoras = m_nHoras;
	nMinutos = m_nMinutos;
	nSegundos = m_nSegundos;
	pszFormato= m_pszFormato;	
}

