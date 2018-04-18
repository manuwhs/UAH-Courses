#include<iostream>
#include "CHora.h"
#include"MemoryManager.h"
#include "utils.h"

using namespace std;

bool CHora::Formato24()const
{
	if((m_pszFormato[0]>=65) && (m_pszFormato[0]<=90))
	{
		m_pszFormato[0]=Minusculas(m_pszFormato[0]);
	}
	if((m_pszFormato[1]>=65) && (m_pszFormato[1]<=90))
	{
		m_pszFormato[1]=Minusculas(m_pszFormato[1]);
	}
	if(m_pszFormato[0]=='2'&& m_pszFormato[1]=='4')
	{
		return true;
	}
	else if((m_pszFormato[0]=='a'||m_pszFormato[0]=='p') && (m_pszFormato[1]=='m'))
	{
		return false;
	}
	else
		return 0;
}
bool CHora::EsHoraCorrecta () const
{
	int format=0;
	format=CHora::Formato24();
	if((format==1) &&(m_nHoras>=0&&m_nHoras<24)&&(m_nMinutos>=0&&m_nMinutos<60)&&(m_nSegundos>=0&&m_nSegundos<60)&&(m_pszFormato[0]=='2'&&m_pszFormato[1]=='4'))
	{
		return true;
	}
	else if((format==0) &&(m_nHoras>=0&&m_nHoras<13)&&(m_nMinutos>=0&&m_nMinutos<60)&&(m_nSegundos>=0&&m_nSegundos<60)&&(m_pszFormato[0]=='a'||m_pszFormato[0]=='p')&&(m_pszFormato[1]=='m'))
	{
		return true;
	}
	else
	{
		return false;
	}
	/*if((strcmp(m_pszFormato, "am") == 0) || (strcmp(m_pszFormato, "pm") == 0) || (strcmp(m_pszFormato, "24") == 0))
	{
		return true;
	}
	return false;*/
}
void CHora::Construir()
{
	m_nHoras = 0;
	m_nMinutos = 0;
	m_nSegundos = 0;
	if (!(m_pszFormato = new (nothrow) char [3]))
	{
		cout<< "\nError: No hay suficiente espacio de memoria.";
		return;
	}
	m_pszFormato[0]='?';
	m_pszFormato[1]='?';
	m_pszFormato[2]='\n';
}
bool CHora::AsignarHora(int nHoras, int nMinutos, int nSegundos, const char *pszFormato)
{
	bool correct;
	m_nHoras=nHoras;
	m_nMinutos=nMinutos;
	m_nSegundos=nSegundos;
	m_pszFormato[0]=pszFormato[0];
	m_pszFormato[1]=pszFormato[1];
	correct=CHora::EsHoraCorrecta();
	return correct;
}
void CHora::ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, char *pszFormato) const
{
	nHoras = m_nHoras;
	nMinutos = m_nMinutos;
	nSegundos = m_nSegundos;
	pszFormato[0]=m_pszFormato[0];
	pszFormato[1]=m_pszFormato[1];
}
void CHora::Destruir()
{
	delete [] m_pszFormato;
}