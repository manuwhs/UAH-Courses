#ifndef CLIENTE
#define CLIENTE
#include <iostream>
#include"MemoryManager.h"
#include "CFicha.h"
using namespace std;

class CCliente: public CFicha
{
private:
	string m_sDNI;
public:
	CCliente()	{m_sDNI.clear();}
	void setDNI(const string &DNI)    //Modificar la variable DNI
	{ m_sDNI=DNI;}
	void Visualizar();
	CCliente * Clonar (){return new CCliente(*this);}
	~CCliente(){};
};

#endif