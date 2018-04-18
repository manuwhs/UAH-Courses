#ifndef FICHA
#define FICHA
#include <iostream>
#include <string>
#include "CHora.h"
class CFicha
{
	private:
		std::string m_sNombre;
		int m_nEdad;
		CHora m_horaNacio;			//Guarda los datos de la hora de nacimiento
	public:
		CFicha(const std::string& sNombre="", int nEdad=0, int nHoras=12, 
			   int nMinutos=0, int nSegundos=0, const std::string& sFormato="am");	
		//Constructor
		~CFicha();																	
		//Destructor
		CFicha& operator=(const CFicha& ficha);										
		//Operador de asignacion
		CFicha(const CFicha& ficha);												
		//Construcctor copia
		void AsignarNombre(const std::string& sNombre);	
		//Asignar el valos de nombre
		std::string ObtenerNombre() const;	
		//Devuelve el valor de nombre
		void AsignarEdad(int nEdad);	
		//Asignar el valos de edad
		int ObtenerEdad() const;													
		//Devuelve el valor de edad
		bool AsignarNacio(int nHoras, int nMinutos,									
						  int nSegundos, const std::string &sFormato);				
		//Asigna la hora de nacimiento utlizandoAsignarHora() de la clase CHora

		CHora ObtenerNacio()const;													
		//Devuelve el objeto m_horaNacio que contiene los dato de la hora
}
#endif