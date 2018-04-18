//******PRACTICA 4 NHC*******
#include <iostream>
#include "utils.h"
#include "CHora.h"
#include "MemoryManager.h"
using namespace std;
using namespace utils;

void VisualizarHora(const CHora& hora)
{
	int horas, minutos, segundos;
	char format[3];
	hora.ObtenerHora(horas,minutos,segundos,format);
	cout <<horas<<':'<<minutos<<':'<<segundos;
	if (format[0]!= '2')
	cout << " "<<format[0]<<format[1]<<endl;
	system("pause");
};

int main()
{
	{
	int r=0, horas=0, minutos=0, segundos=0, correcto=0;
	CHora *clock = NULL;
	do
	{
		int i=0, j=0, opcion=0, opcion2=0;
		char formato[3]="24";
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
		static char*opciones2[]=
		{
			"Con un a hora predeterminada",
			"Introduciendo la hora",
			"Introduciendo la hora y los minutos",
			"Introduciendo la hora, los minutos y los segundos",
			"Introduciendo la hora, los minutos, los segundos y el formato",
			"Volver al menu principal",
		};
		int nOpciones = sizeof(opciones)/ sizeof(char*);
		opcion=CUtils::CrearMenu(opciones, nOpciones);
		
		switch(opcion)
		{
			case 1:
			{
				int a=0;
				char nOpciones2 = sizeof(opciones2)/ sizeof(char*);
				opcion2=CUtils::CrearSubMenu(opciones2, nOpciones2);

				switch(opcion2)
				{
					case 'a':
					{						
						CHora reloj;
						VisualizarHora(reloj);
						r=1;
						break;
					}
					case 'b':
					{
						cout<<"Introduce la hora:";
						cin>>horas;
						CHora reloj(horas);
						correcto=reloj.EsHoraCorrecta();
						if(!correcto)cout<<"ERROR. Intentelo de nuevo";
						else VisualizarHora(reloj);
						r=1;
						break;
					}	
					case 'c':
					{
						cout<<"Introduce la hora:";
						cin>>horas;
						cout<<"Introduce los minutos:";
						cin>>minutos;
						CHora reloj(horas, minutos);
						correcto=reloj.EsHoraCorrecta();
						if(correcto) VisualizarHora(reloj);
						else cout<<"ERROR. Intentelo de nuevo";
						r=1;
						break;
					}	
					case 'd':
					{
						cout<<"Introduce la hora:";
						cin>>horas;
						cout<<"Introduce los minutos:";
						cin>>minutos;
						cout<<"Introduce los segundos:";
						cin>>segundos;
						CHora reloj(horas, minutos, segundos);
						correcto=reloj.EsHoraCorrecta();
						if(correcto) VisualizarHora(reloj);
						else cout<<"ERROR. Intentelo de nuevo";
						r=1;
						break;
					}	
					case 'e':
					{
						cout<<"Introduce la hora:";
						cin>>horas;
						cout<<"Introduce los minutos:";
						cin>>minutos;
						cout<<"Introduce los segundos:";
						cin>>segundos;
						cout<<"Introduce el formato:";
						cin.ignore(numeric_limits<int>::max(), '\n');
						cin>>formato;					//Lee formato(Tipo char=>comparar caracter a carater)
						if(formato[0]>=65&&formato[0]<=90)
						{
							formato[0]=CUtils::Minusculas(formato[0]);
						}
						if(formato[1]>=65&&formato[1]<=90)
						{
							formato[1]=CUtils::Minusculas(formato[1]);
						}
						CHora reloj(horas, minutos, segundos, formato);
						correcto=reloj.EsHoraCorrecta();
						if(correcto) VisualizarHora(reloj);
						else cout<<"ERROR. Intentelo de nuevo";
						r=1;
						break;
					}
					case 'f':
					{
						r=1;
						break;
					}
				}
				break;
			}
		
			case 2:
			{
				if(clock)
					delete clock;
				clock= new (nothrow) CHora(8,8,8,"am");		//Reserva memoria para clock
				r=1;
				break;
			}
			case 3:
			{
				if(!clock)
				{
					cout<<"Cree el objeto dinamicamente"<<endl;
					system("pause");
				}
				else
				{
					CHora reloj(clock[0]);			//Inicia clock con reloj.Constructor copia
					VisualizarHora(reloj);
				}
				r=1;
				break;
			}
			case 4:
			{
				if(!clock)
				{
					cout<<"Cree el objeto dinamicamente"<<endl;
					system("pause");
				}
				else
				{
					CHora reloj = clock[0];			//Copia reloj en clock. Operador asignacion
					VisualizarHora(reloj);
				}
				r=1;
				break;
			}
			case 5:
			{
				do
				{
					char respuesta[100];
					j=0;
					cout<<"¿Seguro que quiere terminar? [y/n]"<<endl;
					cin>> respuesta;
					if(respuesta[0] == 'y'&& respuesta[1]==NULL)
					{
						if(clock)	delete clock;		//Libera memoria reservada para clock
						cout<<"Programa finalizado"<<endl;
					}
					else if(respuesta[0]== 'n'&& respuesta[1]==NULL)
					{
						r=1;								//Vuelve al menu
					}
					else
					{
						cout<<"Respuesta no valida"<<endl;
						j=1;								//Vuelve a formular la pregunta
					}
				}while (j==1);	
				break;
			}
		}
	}while(r==1);
	}
	MemoryManager::dumpMemoryLeaks();
	system("pause");
};