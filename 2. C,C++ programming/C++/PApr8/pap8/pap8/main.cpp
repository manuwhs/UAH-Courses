#include <iostream>
#include "CLista.h"
#include "CContrato.h"
#include "CSiniestroUrgente.h"
#include "CSiniestroNormal.h"
#include "CCliente.h"
#include "CUtils.h"
#include "MemoryManager.h"
#include "CEmpresa.h"

;using namespace std;
using namespace utils;

//Main de la practica

const int MAX_CLIENTES = 10;

int main()
{
  {
    char * menu[]={" Vaciar() de CLista.",
                   " Operador [] CLista.",
                   " Constructor copia de CContrato.",
                   " AgregarSiniestro() de CContrato.",
                   " Operador << CCliente.",
                   " m_pSigCodigo static.",
                   " Presupuestar() de CSiniestro y derivadas",
                   " AgregarContrato() de CCliente",
                   " total += seguros[i]",
                   " Constructor CSiniestro y CSiniestroNormal",
                   " const_cast<CLista<T>*>(this)->",
                   " GetCoste()?",
                   " c.AgregarSiniestro()",
                   " Plantilla CEmpresa.",
                   " Salir."
                    };
    const int numopciones = sizeof(menu)/sizeof(char *);
    int opcion=0;

    do
    {
      opcion = CUtils::CrearMenu(menu,numopciones);
      switch(opcion)
      {
      case 1:
        {
          // Crear una lista para después vaciarla
          CLista<string> miLista;
          string nombres[]={"Nombre 1", "Nombre 2", "Nombre 3", "Nombre 4", "Nombre 5",
            "Nombre 6", "Nombre 7", "Nombre 8", "Nombre 9", "Nombre 10"};
          // Rellenar la lista con nombres
		  for(int i=0; i<10;i++)
			  miLista.AgregarObjeto(nombres[i]);
          // Mostrar la lista. Preveer execepción CIndiceIncorrecto.
		   try
		  {
				cout<<miLista.GetPrimero()<<endl;
				for(int i=1;i<10;i++)
					cout <<miLista.GetActual()<<endl;
		  }
			
		  catch(CIndiceIncorrecto& i)
		  {
			  cout<<i.what()<<endl;
		  }

          // Vaciar la lista y verificar después que está vacía.
		  miLista.Vaciar();
		  if(miLista.EstaVacia())
			  cout<<"La lista esta vacia"<<endl;

          cout << "Respuestas a las preguntas: Si es necesario ya que hay algunos metodos de CLista, por ejemplo GetPrimero(),"
			   <<"que necesita usar metodos de CNodoLista, como GetDato()" << endl;
          system("pause");
          break;
        }
      case 2:
        {
			
          // Ejemplo operador [] con lista de enteros
          // Crear un objeto lista que almacene 10 datos de tipo int
			CLista<int> listaInt;
			int entero;
			for(int i=0; i<10; i++)
			{
				utils::CUtils::leerInt(entero);
				listaInt.AgregarObjeto(entero);
			}

			
          // Sumar todos los números de la lista y provocar la excepción CIndiceIncorrecto
			int suma=0;
			try
			{
				for(int i=0;i<19;i++)
				{
					suma += listaInt[i]->GetDato();
		
				}
			}
			catch(CIndiceIncorrecto& i)
			{
			  cout<<i.what()<<endl;
			}
			cout<<"\nSuma"<<suma<<endl;

          system("pause");
          break;
        }
      case 3: // Pregunta 3
        {
          // Crear e iniciar el objeto CContrato a copiar
          CContrato original1(12345,"Prueba constructor copia","11-11-11",1001,11);
//          CContrato original2(67890,"Prueba operador de asignacion","22-22-22",2002,22);
		  CSiniestroNormal siniestro1("Bateria");
//		  CSiniestroNormal siniestro2("Pieza suelta");
		  original1.AgregarSiniestro(siniestro1);
//		  original2.AgregarSiniestro(siniestro2);

		  //Uso del constructor copia y del operador de asignacion
          CContrato copia1(original1);
/*		  CContrato copia2(12345,"Prueba constructor copia","11-11-11",1001,11);
		  copia2 = original2;*/

          // Mostrar original y copia
		
		  cout<<"Original 1:"<<endl;
		  original1.MostrarSiniestros(cout);
		  cout<<endl;
		  cout<<"Copia del original 1:"<<endl;
		  copia1.MostrarSiniestros(cout);
		  cout<<endl;
/*		  cout<<"Original 2:"<<endl;
		  original2.MostrarSiniestros(cout);
		  cout<<endl;
		  cout<<"Asignacion del original 2 a la copia 2(iniciada con original 1):"<<endl;
		  copia2.MostrarSiniestros(cout);
		  cout<<endl;*/
		  break;
        }
      case 4:
        {
          CContrato prueba(12345);
          // Agregar a "prueba" un siniestro urgente y otro normal
		  CSiniestroUrgente sinurge(nacional,"Frigorifico no enfria");
		  prueba.AgregarSiniestro(sinurge);

          prueba.MostrarSiniestros(cout);
          cout << endl;
          cout << "Respuestas a las preguntas: Si, porque la lista de punteros es de la clase "
			  <<"base y al llamar a clonar se necesita llamar al de las derivadas."<< endl;
          system("pause");
          break;
        }
      case 5:
        {
          // Crear cliente
          CCliente cli("Juan");
          // Agregar un contrato con dos siniestros, urgente y normal, a cli
		  CContrato concli(12,"Siniestros", "12-12-2015", 4586, 250);
		  CSiniestroNormal sinnorm("Golpe");
		  CSiniestroUrgente sinurge(local,"Fallo en el sistema");
		  concli.AgregarSiniestro(sinnorm);
		  concli.AgregarSiniestro(sinurge);
		  cli.AgregarContrato(concli);
		  
          // Mostrar datos
          cout << " Datos del cliente: \n" << endl;
		  cout << cli << endl;
          system("pause");

          cout << "Llamada explícita:\n" /*<< ...*/;
          system("pause");
          break;
        }
      case 6:
        {
          cout << "Respuestas a las preguntas: ..." << endl;
          system("pause");
          break;
        }
      case 7:
        {
          CSiniestroUrgente MiSiniestroUrgente(internacional,"Siniestro Urgente Ejemplo");
          MiSiniestroUrgente.Presupuestar(7,3);
          CSiniestroNormal MiSiniestroNormal("Siniestro Normal Ejemplo");
          MiSiniestroNormal.Presupuestar(9,4);

          cout << endl 
			  << "Respuestas a las preguntas: En el primer caso, m_Coste debe ser protected " 
			  << "porque las clases derivadas no pueden acceder a los miembros privados de su" 
			  << " clase base. En el segundo caso, si podria ser privado porque se podria acceder" 
			  << " a el a traves del miembro publico GetCoste() de la clase base y eso si esta permitido." 
			  << endl;
          system("pause");
          break;
        }
      case 8:
        {
          // Crear un cliente cli
			CCliente cli("Roberto");

          // Agregar a cli un contrato con siniestros
			CContrato con(791928, "Rotura motor", "8-3-2013", 90, 9999999);
			cli.AgregarContrato(con);


          // Mostrar cli
			cout << "Datos del cliente: " << cli << endl;

          system("pause");
          break;
        }
      case 9:
        {
			
          // Crear una matriz dinámica de tipo CCliente apuntada por "seguros"
			CCliente *seguros = new CCliente[MAX_CLIENTES];

          // Agregar contratos a los clientes de la matriz "seguros"
			CContrato con(36);
			CSiniestroNormal sin("Atasco");
			con.AgregarSiniestro(sin);
			for(int i=0; i< MAX_CLIENTES; i++)
				seguros[i].AgregarContrato(con);
			
          // Contar el número total de contratos
          long total = 0;
          for(int i=0; i < MAX_CLIENTES; i++)
            total += seguros[i];
          cout << "\n El numero total de contratos de los clientes asciende a: ";
          cout << total << " contratos\n";
          system("pause");
          delete [] seguros;
          break;
        }
      case 10:
        {
          CSiniestroNormal s("Rotura de tambor");
          cout << endl;
          s.Mostrar(); cout << endl;

          cout << "Respuesta a la pregunta:Accede a CSinietsroNormal::CSniestroNormal(const std::string& Desc) y a CSiniestro::CSiniestro(const std::string& Desc)" << endl;
          system("pause");
          break;
        }
      case 11:
        {
          cout << "Respuesta a la pregunta: No se puede quitar porque al ser GetPrimero()"
			  << "un metodo const no se puede modificar un atributo privado como es m_Actual"
			  << endl;
          system("pause");
          break;
        }
      case 12:
        {
          cout << "Respuesta a la pregunta: Si, porque el metodo GetCoste() pertenece a la misma clase que Mostrar() y ambos son publicos." << endl;
          system("pause");
          break;
        }
      case 13:
        {
          CContrato c(12345, "Cafetera C1Z","2/1/2008", 100, 1000);
          CSiniestroUrgente s(nacional, "Fallo general");
          c.AgregarSiniestro(s);

          cout << "Respuestas a las preguntas:\n" 
			  << " - void CContrato::AgregarSiniestro(const CSiniestro& s)\n"
			  << " - CSiniestroUrgente* CSiniestrorgente::Clonar() const\n"
			  << " - void CLista<T>::AgregarObjeto(const T& Obj)\n"
			  << " - bool EstaVacia()\n"
			  << endl;
          system("pause");
          break;
        }
      case 14:
        {
          // Crear empresa1
          CEmpresa<CCliente> empresa1;
          // Agregar elementos a la empresa
		  CCliente cli("Juan");
		  empresa1.AgregarElemento(cli);
          // Crear empresa2 como copia de empresa1
		  CEmpresa <CCliente> empresa2(empresa1);
		
          // Mostrar la empresa2
          cout << "\n CLIENTES DE LA EMPRESA: \n" << endl;
		  for(int i=0;i<empresa2.Tamanyo(); i++)
		  {
			  cout << "Cliente" << (i+1) << empresa2.GetElemento(i) << endl;
		  }


          system("pause");
          break;
        }
      }
    }
    while(opcion < numopciones);
  }
  MemoryManager::dumpMemoryLeaks();
  system("pause");
}


//Prueba de las plantillas
/*int main()
{
	CLista<double> lista1;
	double x = 5.0;
	CLista<double> lista2(x);
	CLista<CLista<double> > lista3(lista1);
}*/

//Prueba para CSiniestro
/*int main() 
{
	string descrip;
	CSiniestroUrgente urge(local);
	getline(cin,descrip);
	CSiniestroNormal normal(descrip);
}*/