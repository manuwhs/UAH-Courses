#include <iostream>
#include "CFicha.h"

using namespace std;


CFicha::CFicha (const string & sNombre, int nEdad, int nHoras,int nMinutos, int nSegundos, const string& formato)
{
	bool correcta;
	m_nnombre=sNombre;
	m_nedad= nEdad;
	correcta = m_horanacio.AsignarHora(nHoras,nMinutos,nSegundos, formato);
	if (!correcta)
	{
		cout << "\n\n La hora introducida no es correcta, se asignara por defecto.";
		m_horanacio.AsignarHora (12,0,0,"AM");
	}
}
void CFicha::AsignarNombre (const string &snombre)
{
	m_nnombre=snombre;
}
string CFicha::ObtenerNombre()const
{
	string nnombre=m_nnombre;
	return nnombre;
}
void CFicha::AsignarEdad(int nEdad)
{
	m_nedad=nEdad;
}
int CFicha::ObtenerEdad ()const
{
	return m_nedad;
}
bool CFicha::AsignarNacio (int nHoras, int nMinutos, int nSegundos, const string &sFormato)
{
	return m_horanacio.AsignarHora(nHoras,nMinutos,nSegundos, sFormato);
}/*
Chora CFicha::ObtenerNacio()const
{
	return m_horanacio;
}*/
Chora & CFicha::ObtenerNacio()
{
	return m_horanacio;
}
CFicha::CFicha(const CFicha & ficha)
{
	m_nnombre = ficha.m_nnombre;
	m_nedad=ficha.m_nedad;
	m_horanacio=ficha.m_horanacio;
}
