#ifndef EMPRESA
#define EMPRESA

#include "CFicha.h"
#include "CCliente.h"
#include "CEmpleado.h"

class CEmpresa
{
private:
	CFicha ** personas;
	int nElementosMax;

public:
	CEmpresa (int MaxPers);
	~CEmpresa();
	CEmpresa (const CEmpresa & empresa);
	CEmpresa & operator = (const CEmpresa & empresa);
	void AgregarPersona( CFicha * persona);
	void VisualizarEmpresa();
	void VisualizarEmpleados();
	static bool EsEmpleado(CFicha* persona);
	CFicha * operator[](int i);
	bool EmpresaLlena();
	int GetNumElemenMax();
	int BuscarPorNombre(const string & nombre);
};


#endif