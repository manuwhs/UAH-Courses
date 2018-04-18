#include<iostream>
#include "CHora.h"
#include "CFicha.h"
#include "MemoryManager.h"

using namespace std;

CFicha::CFicha(const string& sNombre, int nEdad, int nHoras, 
	   		   int nMinutos, int nSegundos, const string& sFormato)
{
	m_sNombre=sNombre;
	m_nEdad=nEdad;
	m_horaNacio.AsignarHora(nHoras, nMinutos, nSegundos, sFormato);
}
CFicha::~CFicha(){}
CFicha& CFicha::operator=(const CFicha& ficha)
{
	m_sNombre=(ficha.m_sNombre);
	m_nEdad=(ficha.m_nEdad);
	m_horaNacio=(ficha.m_horaNacio);
	return *this;
}
CFicha::CFicha(const CFicha& ficha)
{
	m_sNombre=(ficha.m_sNombre);
	m_nEdad=(ficha.m_nEdad);
	m_horaNacio=(ficha.m_horaNacio);
}
void CFicha::AsignarNombre(const string& sNombre)
{
	m_sNombre=sNombre;
}
string CFicha::ObtenerNombre() const
{
	return m_sNombre;
}
void CFicha::AsignarEdad(int nEdad)
{
	m_nEdad=nEdad;
}
int CFicha::ObtenerEdad() const
{
	return m_nEdad;
}
bool CFicha::AsignarNacio(int nHoras, int nMinutos, 
						  int nSegundos, const string &sFormato)
{
	bool hora=0;
	hora=m_horaNacio.AsignarHora(nHoras, nMinutos, nSegundos, sFormato);
	return hora;
}
CHora CFicha::ObtenerNacio() const
{
	return m_horaNacio;
}