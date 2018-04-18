#ifndef CEMPLEADO
#define CEMPLEADO
#include <iostream>
#include "CFicha.h"
#include"MemoryManager.h"
using namespace std;
class CEmpleado: public CFicha
{
private:
	string m_sCategoria;
	int m_nAntiguedad;
public:
	CEmpleado (const string & sNombre = "" ,int nEdad =0, int nHoras=11,int nMinutos=0, int nSegundos=0, const string& formato="AM",const string& categoria="",int antiguedad=0);
	void setCategoria(const string & sCategoria) //Modificar m_Categoria
		{m_sCategoria =sCategoria;}
	void setAntiguedad(int antiguedad)           //Modificar m_nAntiguedad
		{ m_nAntiguedad=antiguedad;}
	void Visualizar();
	CEmpleado * Clonar (){return new CEmpleado(*this);};
	~CEmpleado(){};
};
#endif