#if !defined( _CHora_H_ )
#define _CHora_H_
#include<iostream>
#include <string>
using namespace std;
class CHora
{
  private:
	int m_nHoras;
	int m_nMinutos;
	int m_nSegundos;
	char* m_pszFormato; //almacena los valores "AM", "PM" o "24"

	bool Formato24() const;
	
  public:
	  CHora(int nHoras=1, int nMinutos=40 ,
		  int nSegundos=30 , char* pszFormato="24" );	//Construcctor por omisión
	  ~CHora();      									//Destructor por omisión
	  CHora& CHora::operator=(const CHora& hora);			//Operador de asignacion
	  CHora(const CHora& hora);								//Constructor copia

	  void ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, char* pszFormato) const;
	  bool EsHoraCorrecta () const;
};
#endif