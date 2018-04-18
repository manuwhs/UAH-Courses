#include"CEmpresa.h"
#include"MemoryManager.h"

CEmpresa::CEmpresa (int MaxPers)					//El constructor crea una matriz personas de MaxPers elementos
{
	personas.reserve(MaxPers);						//Reserva de memoria para MaxPers vectores
}
CEmpresa::~CEmpresa()
{
	for (int i =0;i<personas.size();i++)			//Liberamos la memoria reservada
		delete personas[i];
	
}
CEmpresa::CEmpresa (const CEmpresa & empresa)
{
	*this = empresa;
}
CEmpresa & CEmpresa::operator = (const CEmpresa & empresa)
{
	personas.clear();
	for (int i =0;(i<empresa.personas.size())&&(empresa.personas[i]!=NULL);i++)
		AgregarPersona(empresa.personas[i]);
	return *this;
}
void CEmpresa::AgregarPersona(CFicha * persona)
{
	if(EmpresaLlena())						//Comprueba si la empresa esta llena en la función EmpresaLlena()
	{
		cout<<"ERROR.LA empresa ya esta llena"<<endl;
		return;
	}
	personas.push_back(persona->Clonar());		//Añade la persona pasada por argumento al final la clonacion
}
void CEmpresa::VisualizarEmpresa()
{
	for(int i=0; (i<personas.size())&&(personas[i]!=NULL);i++)
	{
		personas[i]->Visualizar();							//Visualiza cada uno de los elementos
	}
}
bool CEmpresa::EsEmpleado(CFicha* persona)
{
	return dynamic_cast<CEmpleado *>(persona);				//Comprueba si persona es del tipo CEmpleado
}
void CEmpresa::VisualizarEmpleados()
{
	for(int i=0; (i<personas.size())&&(personas[i]!=NULL);i++)
	{
		if (EsEmpleado(personas[i]))						//Si la comprobacion EsEmpleado es true
			personas[i]->Visualizar();						//Visualiza los empleados(Los que hacen que se devuelva un true)
	}
}
CFicha * CEmpresa::operator[](int i)
{
	return personas[i];											
}
bool CEmpresa::EmpresaLlena()
{
	if (personas.size() > 3)											//Si el ultimo elemento de la matriz es distinto de NULL
	{
		return true;									//Devuelve true porque esta llena
	}
	return false;										//Sino devuelve false
}
int CEmpresa::BuscarPorNombre(const string & nombre)
{
	int i=-1;
	for (i =0;(i<personas.size())&&(personas[i]!=NULL);i++)		//Nos movemos por los elementos no nulos de persona
	{
		if (personas[i]->ObtenerNombre()==nombre)				//Obtenemos sus nombres y los comparamos con el nombre pasado a la función
			break;
	}
	if (!(personas[i]))											//Si persona no existe devuelve -1 -> No hay coincidencia(main)
		return -1;
	return i;
}
int CEmpresa::NumPersonas()
{
	return personas.size();
}