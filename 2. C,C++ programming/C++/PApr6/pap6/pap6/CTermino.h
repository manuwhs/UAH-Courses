#if !defined(_CTERMINO_)
#define _CTERMINO_

#include "CMonomio.h"

class CTermino
{
	private:
		CMonomio m_Monomio;		//Monomio contenido en el término
		CTermino *m_pSig;		//Puntero al siguiente término
	public:
		//Constructores
		CTermino(CMonomio Monomio = (0,0), CTermino *pSig = NULL)
			:m_Monomio(Monomio), m_pSig(pSig){}
		//Destructor
		~CTermino() {};
		//Metodos GET
		double GetCoef() const { return m_Monomio.GetCoef();}
		int GetExp() const {return m_Monomio.GetExp();}
		CMonomio GetMonomio() const {return m_Monomio;}
		CTermino * GetSig () const {return m_pSig;}
		//Metodos SET
		void SetCoef(double dCoef){m_Monomio.SetCoef(dCoef);}
		void SetExp(int nExp) {m_Monomio.SetExp(nExp);}
		void SetMono(const CMonomio& mono) {m_Monomio = mono;}
		void SetSig(CTermino * pSig) {m_pSig = pSig;}
};
#endif