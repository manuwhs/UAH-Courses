#ifndef EMPRESA
#define EMPRESA

#include "CFicha.h"
#include "CCliente.h"
#include "CEmpleado.h"
#include <vector>

class CEmpresa
{
private:
	std::vector <CFicha *> personas;
	
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
	int NumPersonas();
	int BuscarPorNombre(const string & nombre);
};


#endif