//******PRACTICA 4. AMPLIACIÓN STRING. NHC*******
#include <iostream>
#include <string>
#include "utils.h"
#include "CHora.h"
#include "MemoryManager.h"
using namespace std;
using namespace utils;

void VisualizarHora(const CHora& hora)
{
	int horas, minutos, segundos;
	string formato;
	hora.ObtenerHora(horas,minutos,segundos,formato);
	cout<<horas<<':'<<minutos<<':'<<segundos;
	if (formato!= "24")
	cout<<formato<<endl;
	system("pause");
};

int main()
{
	{
	int r=0, horas=0, minutos=0, segundos=0, correcto=0;
	CHora *clock = NULL;
	do
	{

		int i=0, j=0, opcion=0;
		string formato;
		r=0;
		system("cls");
		cout<<"Menu:"<<endl;
		static char*opciones[]=
		{
			"Crear un objeto local",
			"Crear un objeto dinamicamente",
			"Constructor copia",
			"Operador de asignación",
			"Terminar",
		};
		int nOpciones = sizeof(opciones)/ sizeof(char*);
		opcion=CUtils::CrearMenu(opciones, nOpciones);

		if(opcion==1)
		{
			int a=0;
			do
			{
				char opcion2=NULL;	
				a=0;
				static char*opciones[]=
				{
					"Con un a hora predeterminada",
					"Introduciendo la hora",
					"Introduciendo la hora y los minutos",
					"Introduciendo la hora, los minutos y los segundos",
					"Introduciendo la hora, los minutos, los segundos y el formato",
					"Volver al menu principal"
				};
				char nOpciones = sizeof(opciones)/ sizeof(char*);
				opcion2=CUtils::CrearSubMenu(opciones, nOpciones);
					
				if (opcion2=='a')
				{
					CHora reloj;
					VisualizarHora(reloj);
					r=1;
				}
				else if(opcion2=='b')
				{
					cout<<"Introduce la hora:";
					cin>>horas;
					CHora reloj(horas);
					correcto=reloj.EsHoraCorrecta();
 					if(correcto)	
					{
						VisualizarHora(reloj);
						r=1;
					}
					else 
					{
						cout<<"ERROR. Intentelo de nuevo";
						r=1;
					}
				}
				else if(opcion2=='c')
				{
					cout<<"Introduce la hora:";
					cin>>horas;
					cout<<"Introduce los minutos:";
					cin>>minutos;
					CHora reloj(horas, minutos);
					correcto=reloj.EsHoraCorrecta();
					if(correcto)	
					{
						VisualizarHora(reloj);
						r=1;
					}
					else 
					{
						cout<<"ERROR. Intentelo de nuevo";
						r=1;
					}
				}
				else if(opcion2=='d')
				{
					cout<<"Introduce la hora:";
					cin>>horas;
					cout<<"Introduce los minutos:";
					cin>>minutos;
					cout<<"Introduce los segundos:";
					cin>>segundos;
					CHora reloj(horas, minutos, segundos);
					correcto=reloj.EsHoraCorrecta();
					if(correcto)	
					{
						VisualizarHora(reloj);
						r=1;
					}
					else 
					{
						cout<<"ERROR. Intentelo de nuevo";
						r=1;
					}
				}
				else if(opcion2=='e')
				{
					cout<<"Introduce la hora:";
					cin>>horas;
					cout<<"Introduce los minutos:";
					cin>>minutos;
					cout<<"Introduce los segundos:";
					cin>>segundos;
					cout<<"Introduce el formato:";
					cin.ignore(numeric_limits<int>::max(), '\n');
					cin>>formato;						//Lee formato(Tipo string=> comparar cadena)
					if(formato[0]>=65&&formato[0]<=90 || formato[1]>=65&&formato[1]<=90)
					{
						formato=CUtils::Minusculas(formato);
					}
					CHora reloj(horas, minutos, segundos, formato);
					correcto=reloj.EsHoraCorrecta();
					if(correcto)	
					{
						VisualizarHora(reloj);
						r=1;
					}
					else 
					{
						cout<<"ERROR. Intentelo de nuevo";
						r=1;
					}
				}
				else if(opcion2=='f')
				{
					r=1;
				}
				else
				{
					a=1;
				}
			}while(a==1);
		}
		else if(opcion==2)
		{
			if(clock)
				delete clock;
			clock= new CHora(10,10,10,"AM");	//Reserva memoria para clock
			r=1;
		}
		else if(opcion==3)
		{
			if(!clock)
			{
				cout<<"Cree el objeto dinamicamente"<<endl;
				system("pause");
			}
			else
			{
			CHora reloj(clock[0]);		//Inicia clock con reloj.Constructor copia
			VisualizarHora(reloj);
			}
			r=1;
		}
		else if(opcion==4)
		{
			if(!clock)
			{
				cout<<"Cree el objeto dinamicamente"<<endl;
				system("pause");
			}
			else
			{
				CHora reloj;
				reloj = clock[0];		//Copia reloj en clock.Operador asignacion
				VisualizarHora(reloj);
			}
			r=1;
		}
		else if(opcion==5)
		{
			do
			{
				string respuesta;
				r=0;
				j=0;
				cout<<"¿Seguro que quiere terminar? [y/n]"<<endl;
				cin>> respuesta;
				if(respuesta == "y")
				{
					if(clock) delete clock;					//Libera memoria reservada para clock
					cout<<"Programa finalizado"<<endl;
				}
				else if(respuesta == "n")
				{
					r=1;					//Vuelve al menu
				}
				else
				{
					cout<<"Respuesta no valida"<<endl;
					j=1;					//Vuelve a formular la pregunta
				}
			}while (j==1);			
		}
		else
		{
			cout<<"Opción incorrecta. Intentelo de nuevo."<<endl;
			cin.ignore(numeric_limits<int>::max(),'\n');
			r=1;
		}

	}while(r==1);
	}
	MemoryManager::dumpMemoryLeaks();
	system("pause");
};