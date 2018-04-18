#include <iostream>
#include <string>
#include "CHora.h"
#include "utils.h"
#include "MemoryManager.h"

using namespace std;
using namespace utils;

CHora::CHora(int horas, int minutos , int segundos , char* formato )
{
	m_nHoras=horas;
	m_nMinutos=minutos;
	m_nSegundos=segundos;
	m_pszFormato=formato;
	cout<<"\nEl constructor ha sido invocado\n";
	system("pause");
}
CHora& CHora::operator=(const CHora& hora)
{
	m_nHoras=(hora.m_nHoras);
	m_nMinutos=(hora.m_nMinutos);
	m_nSegundos=(hora.m_nSegundos);
	m_pszFormato=(hora.m_pszFormato);
	cout<<"\nEl operador = ha sido invocado\n";
	system("pause");
	return *this;
}
CHora::CHora(const CHora& hora)
{
	m_nHoras=hora.m_nHoras;
	m_nMinutos=hora.m_nMinutos;
	m_nSegundos=hora.m_nSegundos;
	m_pszFormato = hora.m_pszFormato;
	cout<<"\nEl constructor copia ha sido invocado\n";
	system("pause");
}
CHora::~CHora ()
{
	cout<<"\nEl destructor ha sido invocado\n";
	system("pause");
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
	format=Formato24();
	do
	{
			if((format==1) &&(m_nHoras>=0&&m_nHoras<24)&&(m_nMinutos>=0&&m_nMinutos<60)&&(m_nSegundos>=0&&m_nSegundos<60))
			{
				return true;
			}
			else if((format==0) &&(m_nHoras>=0&&m_nHoras<13)&&(m_nMinutos>=0&&m_nMinutos<60)&&(m_nSegundos>=0&&m_nSegundos<60) && ((m_pszFormato[0]=='a') || (m_pszFormato[0]=='p')) && (m_pszFormato[1]=='m'))
			{
				return true;
			}
			else
			{
				return false;
			}
		
	}while(a==1);

}

void CHora::ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, char* pszFormato) const
{
	nHoras = m_nHoras;
	nMinutos = m_nMinutos;
	nSegundos = m_nSegundos;
	pszFormato[0] = m_pszFormato[0];
	pszFormato[1] = m_pszFormato[1];
	
}

