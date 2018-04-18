#if !defined(_CMONOMIO_)
#define _CMONOMIO_

#include <ostream>

class CMonomio
{
	friend std::ostream& operator<<(std::ostream& os, const CMonomio& mono);
	private:
		double m_dCoeficiente;
		int m_nExponente;

	public:
		//Constructor
		CMonomio(double dCoef = 0, int nExp = 0)
			: m_dCoeficiente(dCoef), m_nExponente(nExp) {}
		~CMonomio(){}
		//Metodos GET
		double GetCoef() const{return m_dCoeficiente;}
		int GetExp() const{return m_nExponente;}
		//Metodos SET
		void SetCoef(double dCoef){m_dCoeficiente = dCoef;}
		void SetExp (int nExp){m_nExponente = nExp;}
		//Operador -
		CMonomio operator- () const
		{ return CMonomio(-m_dCoeficiente, m_nExponente);}
};
#endif
