//******PRACTICA 3. AMPLIACIÓN STRING NHC*******
#include<iostream>
#include"utils.h"
#include"CHora.h"
#include"MemoryManager.h"

using namespace std;

void VisualizarHora(const CHora& hora)
{
	int horas, minutos, segundos;
	string formato;
	hora.ObtenerHora(horas,minutos,segundos,formato);
	cout <<horas<<':'<<minutos<<':'<<segundos;
	if (formato != "24")
	cout << " "<<formato<<endl;
	system("pause");
};

int main()
{
	int r=0, k=0, horas=0, minutos=0, segundos=0, correcto=0;
	CHora reloj;
	reloj.Construir();
	do
	{

		int i=0, j=0, opcion=0;
		string format="";
		r=0;
		system("cls");
		cout<<"Menu:"<<endl;
		static char*opciones[]=
		{
			"Introducir hora",
			"Visuaslizar hora",
			"Terminar",
		};
		int nOpciones = sizeof(opciones)/ sizeof(char*);
		opcion=CrearMenu(opciones, nOpciones);

		if(opcion==1)
		{
		  if(k!=1)
		  {
			int a=0;
			
			do
			{
				a=0;
				cout<<"Introduce Hora:Minutos:Segundos "<<endl;
				cout<<"Horas";
				horas=LeerInt();
				cout<<"Minutos";
				minutos=LeerInt();
				cout<<"Segundos";
				segundos=LeerInt();				
				cout<<"Introduce el formato de la hora:AM/PM/24"<<endl;
				cin>>format;
				correcto=reloj.AsignarHora(horas,minutos,segundos,format);
				if(correcto==1)
				{
					r=1;
					k=1;
				}
				else
				{
					cout<<"ERROR.Intentelo de nuevo."<<endl;
					cin.ignore(numeric_limits<int>::max(),'\n');
					system("pause");
					a=1;
				}
			}while(a==1);
		  }
		  else
		  {
			cout<<"La hora ya ha sido introducida"<<endl;
			r=1;

		  }
		}
		else if(opcion==2)
		{
			VisualizarHora(reloj);
			r=1;
		}
		else if(opcion==3)
		{
			do
			{
				char respuesta[100];
				r=0;
				j=0;
				cout<<"¿Seguro que quiere terminar? [y/n]"<<endl;
				cin>> respuesta;
				if(respuesta[0] == 'y'&& respuesta[1]==NULL)
				{
					cout<<"Programa finalizado"<<endl;
				}
				else if(respuesta[0] == 'n'&& respuesta[1]==NULL)
				{
					r=1;															//Vuelve al menu
				}
				else
				{
					cout<<"Respuesta no valida"<<endl;
					j=1;														//Vuelve a formular la pregunta
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
	MemoryManager::dumpMemoryLeaks();
	system("pause");
	return 0;
};