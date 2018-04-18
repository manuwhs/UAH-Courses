#if !defined(_CPOLINOMIO_)
#define _CPOLINOMIO_

#include <ostream>
#include "CTermino.h"
#include "CMonomio.h"
#include <vector>

class CPolinomio
{
	friend std::ostream& operator<<(std::ostream& os, const CPolinomio& Poli);
	private:
		CTermino * m_pCabecera;		//Primer término (el de mayor grado)
	public:
	  //Constructores
		//Constructor sin parámetros
		CPolinomio();										
		//Constructor copia	
		CPolinomio(const CPolinomio& poli);					
		//Constructor val. def. coef y exp
		CPolinomio(double coef, int exp);				
		//Constructor vector 
		CPolinomio(const std::vector<CMonomio> & polinomio);
		//Constructor de un polinomio con un monomio
		CPolinomio(CMonomio mono);
		//Destructor
		~CPolinomio();
		//Operador de asignacion
		CPolinomio& operator= (const CPolinomio& poli);
		//Operador de inserción
		CPolinomio& operator<<(const CMonomio& mono);
		//Metodos GET
		CTermino * GetCabe () const {return m_pCabecera;}
		//Metodos SET
		void SetSig(CTermino * pCabecera) {m_pCabecera = pCabecera;}	
		//Mostrar el polinomio
		void MostrarPoli(std::ostream& os) const;	
		//Función Grado
		int Grado()const{return m_pCabecera->GetExp();} //Devuelve el mayor exponente de todos los monomios del polinomio
		//Operador menor que
		bool operator<(const CPolinomio &poli);
		//Operador mayor que
		bool operator>(const CPolinomio &poli);
		//Operador comparación
		bool operator==(const CPolinomio &poli);
		//Operador menos unario
		CPolinomio operator-();
		//Operador mas
		CPolinomio  operator+(const CPolinomio& poli);
		//Operador menos
		CPolinomio&  operator-(const CPolinomio &poli);
		//Operador mas igual
		CPolinomio& operator+=(const CPolinomio &poli);
		//Operador menos igual
		CPolinomio& operator-=(const CPolinomio &poli);
		//Operador sobrecargado corchetes
		double operator[](int i);
		//Operador sobrecargado parentesis
		double operator()(double i);
		//Operador de multiplicacion
		CPolinomio CPolinomio::operator*(const CPolinomio& poli);
		//Operador multiplicador igual
		CPolinomio& CPolinomio::operator*=(const CPolinomio& poli);
};
#endif

