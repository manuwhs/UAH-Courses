#include"CEmpresa.h"
#include"MemoryManager.h"

CEmpresa::CEmpresa (int MaxPers)					//El constructor crea una matriz personas de MaxPers elementos
{
	personas = new (nothrow) CFicha*[MaxPers];		//Reserva memoria
	for(int i=0; i< MaxPers;i++)
		personas[i]=NULL;
	nElementosMax=MaxPers;							//El atributo de la clase guardara el valor MaxPers para que pueda ser utilizado posteriormente
}
CEmpresa::~CEmpresa()
{
	for (int i =0;(i<nElementosMax)&&(personas[i]!=NULL);i++)	//Liberamos la memoria reservada
		delete personas[i];
	delete [] personas;
}
CEmpresa::CEmpresa (const CEmpresa & empresa)
{
	personas=NULL;
	*this = empresa;
}
CEmpresa & CEmpresa::operator = (const CEmpresa & empresa)
{
	if(personas)
	{
	for (int i=0;(i<nElementosMax)&&(personas[i]!=NULL);i++)
		delete personas[i];
	delete []personas;
	}
	personas = new (nothrow) CFicha*[empresa.nElementosMax];
	nElementosMax=empresa.nElementosMax;
	for(int i=0; i< nElementosMax;i++)
		personas[i]=NULL;
	for (int i =0;(i<empresa.nElementosMax)&&(empresa.personas[i]!=NULL);i++)
		AgregarPersona(empresa.personas[i]);
	return *this;
}
void CEmpresa::AgregarPersona(CFicha * persona)
{
	int i=0;
	if(EmpresaLlena())						//Comprueba si la empresa esta llena en la función EmpresaLlena()
	{
		cout<<"ERROR.LA empresa ya esta llena"<<endl;
		return;
	}
	for (i=0; personas[i]!=NULL;i++);		//Busca que punto de la matriz personas es NULL guardando i
	personas[i] = persona->Clonar();		//para clonarlo en ese lugar
}
void CEmpresa::VisualizarEmpresa()
{
	cout<<"Numero total de personas registradas:"<<GetNumElemenMax()<<endl;		//Muestra el numero total de personas en la empresa hasta el momento
	for(int i=0; (i<nElementosMax)&&(personas[i]!=NULL);i++)
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
	for(int i=0; (i<nElementosMax)&&(personas[i]!=NULL);i++)
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
	if (personas[nElementosMax-1]!=NULL)				//Si el ultimo elemento de la matriz es distinto de NULL
	{
		return true;									//Devuelve true porque esta llena
	}
	return false;										//Sino devuelve false
}
int CEmpresa::GetNumElemenMax()
{
	int NumMax=0;
	for(int i=0; (i<nElementosMax && personas[i]!=NULL);i++)	//Va incrementado en 1 NumMax hasta que se llega al	ultimo
		NumMax = NumMax+1;										//elemento de la matriz o hasta que el elemento i sea nulo
	return NumMax;												//Guardando en NumMax el numero maximo que hay en persona hasta el momento
}
int CEmpresa::BuscarPorNombre(const string & nombre)
{
	int i=-1;
	for (i =0;(i<nElementosMax)&&(personas[i]!=NULL);i++)		//Nos movemos por los elementos no nulos de persona
	{
		if (personas[i]->ObtenerNombre()==nombre)				//Obtenemos sus nombres y los comparamos con el nombre pasado a la función
			break;
	}
	if (!(personas[i]))											//Si persona no existe devuelve -1 -> No hay coincidencia(main)
		return -1;
	return i;
}