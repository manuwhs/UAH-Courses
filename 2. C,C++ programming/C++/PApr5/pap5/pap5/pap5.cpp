/*********PRACTICA 5. NHC*********/
#include <iostream>
#include <string>
#include "CFicha.h"
#include "MemoryManager.h"
#include "CHora.h"
#include "utils.h"

using namespace std;
using namespace utils;

void VisualizarHora(const CHora& hora)
{
	int horas, minutos,segundos;
	string  format;
	hora.ObtenerHora(horas,minutos,segundos,format);
	cout <<horas<<':'<<minutos<<':'<<segundos<<" ";
	if (format!= "24")
	cout << " "<<format<<endl;
}
void VisualizarFicha(const CFicha& ficha)
{
	string nombre;
	int edad;
	CHora horaNacio;
	nombre=ficha.ObtenerNombre();
	edad=ficha.ObtenerEdad();
	horaNacio=ficha.ObtenerNacio();
	cout <<"Nombre:"<<nombre<<"\n"<<"Edad:"<<edad<<"\n"<<"Hora de nacimiento: ";
	VisualizarHora(horaNacio);
	system("pause");
};

int main()
{
	{
	int r=0;
	CFicha ficha1;
	CHora hora1;
	hora1= ficha1.ObtenerNacio();
	CFicha *din=NULL;
	do
	{
		int opcion=0;
		bool hora=0;
		r=0;
		system("cls");
		cout<<"Menu:"<<endl;
		static char*opciones[]=
		{
			"Crear una ficha(La ficha sera creada dinamicamente)",
			"Visualizar ficha",
			"Terminar",
		};
		int nOpciones = sizeof(opciones)/ sizeof(char*);
		opcion=CUtils::CrearMenu(opciones, nOpciones);
		if(opcion==1)
		{		
			string nombre, formato;
			int edad=0, horas=0, minutos=0,  segundos=0;
			CHora horaNacio;
			din=new CFicha;
			cout<<"Introduzca su nombre:";
			getline(cin,nombre);
			ficha1.AsignarNombre(nombre);
			cout<<"Introduzca su edad:";
			cin>>edad;
			ficha1.AsignarEdad(edad);
			do
			{
				cout<<"Introduzca hora de nacimiento:";
				cin>>horas>>minutos>>segundos>>formato;
				hora=ficha1.AsignarNacio(horas,minutos,segundos,formato);
				if(!hora)cout<<"ERROR. Hora incorrecta.\n";
			}while(!hora);
			r=1;
		}
		else if(opcion==2)
		{
			CFicha din = ficha1;
			VisualizarFicha(din);
			r=1;
		}
		else if(opcion==3)
		{
			int j=0;
			do
			{
				string respuesta;
				cout<<"¿Seguro que quiere terminar? [y/n]"<<endl;
				cin>> respuesta;
				if(respuesta == "y")
				{
					if(din!=0)	delete din;				//Libera memoria reservada con new para clock
					cout<<"Programa finalizado"<<endl;
				}
					else if(respuesta == "n")
				{
					r=1;							//Vuelve al menu
				}
				else	
				{
					cout<<"Respuesta no valida"<<endl;
					j=1;							//Vuelve a formular la pregunta
				}
			}while (j==1);
		}
		else
		{
			cout<<"ERROR.Opcion incorrecta!!!"<<endl;	//vuelve al menu
			r=1;
		}
	}while(r==1);
	}
	MemoryManager::dumpMemoryLeaks();
	system("pause");
};
