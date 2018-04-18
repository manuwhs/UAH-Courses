#ifndef HORA
#define HORA
#include<iostream>
#include<string>
class CHora
{
  private:
	int m_nHoras;
	int m_nMinutos;
	int m_nSegundos;
	std::string m_pszFormato; //almacena los valores "AM", "PM" o "24"

	bool Formato24() const;
	//Devuelve true=>formato 24 horas.Devuelve false=>12 horas (AM o PM).

  public:
	  CHora(int m_nHoras=10, int m_nMinutos=10,
		  int m_nSegundos=10 , std::string m_pszFormato="24" );	
	  //Construcctor por omisión
	  ~CHora();      		             			
	  //Destructor
	  CHora& CHora::operator=(const CHora& hora);			
	  //Operador de asignacion
	  CHora(const CHora& hora);					
	  //Constructor copia
	  void ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, std::string& pszFormato) const;
	  //Obtener una hora.
	  bool EsHoraCorrecta () const;
	  //Verifica si una hora es correcta.Devuelve true si es correcta y false en otro caso.
	  bool AsignarHora(int nHoras, int nMinutos, int nSegundos, std::string pszFormato);
	  //Asigna horas, minutos, segundos y formato de la hora.

};
#endif
