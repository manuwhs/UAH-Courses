#include"CCliente.h"
#include"MemoryManager.h"
#include"CEmpleado.h"
#include"CEmpresa.h"
#include "CUtils.h"
#include <string>
using namespace std;
void main()
{
	{
	int nopciones = 0, nmenu=0, copia_seguridad=0, edad=0, antiguedad=0;
	string nombre, categoria, DNI;
	CEmpleado empleado;
	CCliente cliente;
	static char *opciones[] =
	{
		". Introducir Empleado.",
		". Introducir Cliente.",
		". Buscar por nombre.",
		". Mostrar empresa.",
		". Mostrar empleados.",
		". Copia de seguridad de la empresa.",
		". Restaurar copia de seguridad.",
		". Salir."
	};
	CEmpresa * empresa= new (nothrow) CEmpresa(10), *copia_empresa=NULL;
	nopciones= sizeof (opciones) / sizeof (char*);
	while (nmenu !=8)
	{
		nmenu = utils::CUtils::CrearMenu(opciones,nopciones);
		switch (nmenu)
		{
		case 1:
			cout<<"\nNombre: ";
			getline(cin, nombre);
			nombre=utils::CUtils::Minusculas(nombre);
			cout<<"\nEdad: ";
			utils::CUtils::leerInt(edad);
			cout<<"\nCategoria: ";
			getline(cin, categoria);
			categoria=utils::CUtils::Minusculas(categoria);
			cout<<"\nAntiguedad: ";
			utils::CUtils::leerInt(antiguedad);
			empleado.AsignarEdad(edad);
			empleado.AsignarNombre(nombre);
			empleado.setAntiguedad(antiguedad);
			empleado.setCategoria(categoria);
			empresa->AgregarPersona(&empleado);
			break;
		case 2:
			cout<<"\nNombre: ";
			getline(cin, nombre);
			nombre=utils::CUtils::Minusculas(nombre);
			cout<<"\nEdad: ";
			utils::CUtils::leerInt(edad);
			cout<<"\nDNI: ";
			getline(cin, DNI);
			cliente.AsignarEdad(edad);
			cliente.AsignarNombre(nombre);
			cliente.setDNI(DNI);
			empresa->AgregarPersona(&cliente);
			break;
		case 3:
			if(empresa->operator[](0))
			{
				int i = 0;
				cout<<"\nNombre: ";
				getline(cin, nombre);
				nombre=utils::CUtils::Minusculas(nombre);
				if ((i=(*empresa).BuscarPorNombre(nombre))==-1)
					cout << "\n\nNo se ha encontrado coincidencia"<<endl;
				else
					(*empresa)[i]->Visualizar();
			}
			else cout<<"\nNo hay elementos en la empresa.\n";
			break;
		case 4:
			if((*empresa)[0])
			{
				(*empresa).VisualizarEmpresa();
			}
			else cout<<"\nNo hay elementos en la empresa.\n";
			break;
		case 5:
			if((*empresa)[0])
			{
				(*empresa).VisualizarEmpleados();
			}
			else cout<<"\nNo hay elementos en la empresa.\n";
			break;
		case 6:
			if ((!copia_seguridad)&&((*empresa)[0]))
			{
				copia_empresa = new (nothrow) CEmpresa(*empresa);
				copia_seguridad=1;
			}
			break;
		case 7:
			if(copia_seguridad)
			{
				delete empresa;
				empresa=NULL;
				empresa = new (nothrow) CEmpresa(*copia_empresa);
				delete copia_empresa;
				copia_empresa=NULL;
				copia_seguridad=0;
			}
			break;
		case 8:
			if(empresa) delete empresa;
			if(copia_empresa!=NULL) delete copia_empresa;
		}
	}
}
MemoryManager::dumpMemoryLeaks();
system ("pause");
}