#ifndef CFICHA
#define CFICHA
#include "Chora.h"
#include <iostream>
#include"MemoryManager.h"
using namespace std;
class CFicha
{
private:
	string m_nnombre;
	int m_nedad;
	Chora m_horanacio;

public:

	CFicha (const string & sNombre = "" ,int nEdad =0, int nHoras=11,int nMinutos=0, int nSegundos=0, const string& formato="AM");
	CFicha(const CFicha & ficha);
	void AsignarNombre (const string &snombre);
	string ObtenerNombre()const;
	void AsignarEdad(int nEdad);
	int ObtenerEdad ()const;
	bool AsignarNacio (int nHoras, int nMinutos, int nSegundos, const string &sFormato);
	//Chora ObtenerNacio()const;
	Chora& ObtenerNacio();
	virtual void Visualizar(){};
	virtual CFicha * Clonar (){return new CFicha(*this);}
	virtual ~CFicha(){}
};

#endif
