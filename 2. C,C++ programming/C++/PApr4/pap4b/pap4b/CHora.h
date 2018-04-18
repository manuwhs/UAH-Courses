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
	//Devuelve true=>formato 24 horas.Devuelve false=>formato 12 horas (AM o PM).

  public:
	  CHora(int m_nHoras=1, int m_nMinutos=40 ,
		  int m_nSegundos=30 , std::string m_pszFormato="24" );	
	  //Construcctor por omisión
	  ~CHora();      		             			
	  //Destructor por omisión
	  CHora& CHora::operator=(const CHora& hora);			
	  //Operador de asignacion
	  CHora(const CHora& hora);					
	  //Constructor copia
	  void ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, std::string& pszFormato) const;
	  //Obtener una hora.  
	  bool EsHoraCorrecta () const;
	  //Verifica si una hora es correcta.Devuelve true=>correcta y false=>incorrecta.
};
#endif
