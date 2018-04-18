#include <iostream>
#include <vector>
#include "CPolinomio.h"
#include "CMonomio.h"
#include "CTermino.h"
#include "MemoryManager.h"

using namespace std;
CPolinomio::CPolinomio()
{
	m_pCabecera = NULL;				
}
CPolinomio::CPolinomio(const CPolinomio& poli)
{
	m_pCabecera = NULL;
	*this = poli;
}
CPolinomio::CPolinomio(double coef, int exp)
{
	if(!coef)
		m_pCabecera = NULL;				//Si no existe coeficiente, monomio 0 y m_pCabecera NULL
	else
	{
		m_pCabecera = new CTermino; //Si el coeficiente no es nulo reservamos memoria para lo apuntado por m_pCabecera
		m_pCabecera->SetCoef(coef);	//Coeficiente del monomio igual a coef
		m_pCabecera->SetExp(exp);	//Exponente del monomio igual a exp
		m_pCabecera->SetSig(NULL);	//m_pSig NULL porque no apunta a ningun otro de momento
	}
}
CPolinomio::CPolinomio(const vector<CMonomio> & v)
{
	m_pCabecera =NULL;
	for (int i = 0; i < v.size(); i++)
		* this << v[i];
}
CPolinomio::CPolinomio(CMonomio mono)
{
	if(!mono.GetCoef())				//Si coeficiente  del monomio es 0, m_pCabecera es NULL
		m_pCabecera=NULL;
	else
	{
		if(!(m_pCabecera = new(nothrow) CTermino)) //Si el coeficiente no es nulo reservamos
		{										//Reservamos memoria para lo apuntado por m_pCabecera
			cout<<"Memoria insuficiente"<<endl;	//Si no hay espacio m_pCabecera NULL
			m_pCabecera=NULL;
		}
		else
		{
			m_pCabecera->SetMono(mono);			//Si hay espacio m_pCabecera apunta al monomio
			m_pCabecera->SetSig(NULL);			//y el puntero al siguiente es NULL
		}
	}
}
CPolinomio::~CPolinomio()
{
	CTermino * x;
	while (m_pCabecera)
	{
		x = m_pCabecera->GetSig();		//x toma el valor de m_pSig al que apunta m_pCabecera
		delete m_pCabecera;				//Se libera la memoria apuntada por m_pCabecera
		m_pCabecera = x;				//m_pCabecera apunta al siguiente polinomio
	}
}
CPolinomio & CPolinomio::operator=(const CPolinomio & poli)
{
	if ((poli.m_pCabecera == m_pCabecera)||(poli.m_pCabecera==NULL))
		return *this;
	CTermino * x;
	while (m_pCabecera)														//liberamos el objeto donde hay que copiar.
	{
		x = m_pCabecera->GetSig();
		delete m_pCabecera;
		m_pCabecera = x;
	}
	m_pCabecera = NULL;
	x = poli.m_pCabecera;
	while (x!=NULL)																//insertamos uno a uno los monomios de poli
	{
		*this << x->GetMonomio();
		x = x->GetSig();
	}

	return *this;
}
CPolinomio& CPolinomio::operator<<(const CMonomio& mono)
{
	if(mono.GetCoef())					//Si el coeficiente del monomio no es nulo
	{
		if(m_pCabecera == NULL)			//y si m_pCabecera no apunta a nada
		{
			if(!(m_pCabecera = new (nothrow) CTermino)) //Reservamos memoria para lo apuntado por m_pCabecera
			{
				cout<<"Memoria insuficiente"<<endl;
				m_pCabecera = NULL;
				return *this;
			}
		m_pCabecera->SetMono(mono);		//Monomio apuntado por m_pCabecera
		m_pCabecera->SetSig(NULL);		//m_pSig apuntado por m_pCabecera 
		return *this;
		}
		else							//Si ya existia algo apuntado por m_pCabecera
		{
			CTermino *antiguo=NULL, *nuevo=NULL, *actual=m_pCabecera;
			do
			{
				if(actual->GetExp()==mono.GetExp())		//Si el termino tiene igual exponente que el apuntado por m_pCabecera
				{
					actual->SetCoef(actual->GetCoef()+mono.GetCoef());		//Se suman los coeficientes
					if(!actual->GetCoef())									//Si el resultado de la suma es 0
					{
						if(!antiguo)										//Y no existe ningun termino anterior
							m_pCabecera=actual->GetSig();					//m_pCabecera apunta al termino siguiente
						else
							antiguo->SetSig(actual->GetSig());				//Si existe otro anterior su puntero pSig es el actual
						delete actual;
					}
					return *this;
				}
				else if(actual->GetExp()<mono.GetExp())						//Si el termino es de mayor exponente que el actual
				{
					if (!(nuevo = new (nothrow) CTermino))					//Reservamos memoria para el termino que estara apuntado por nuevo
					{
						cout<< "\nError: No hay suficiente espacio de memoria.";
						return * this;
					}
					nuevo->SetMono(mono);									//Monomio apuntado por nuevo
					nuevo->SetSig(actual);									//m_pSig del monomio apuntado por nuevo
					if (!antiguo)											//Si no existe uno antiguo
						 m_pCabecera = nuevo;								//m_pCabecera apunta al nuevo termino
					else													
						 antiguo->SetSig(nuevo);							//Sino el m_pSig apuntado por antiguo apunta al nuevo termino
					return *this;		
				}
				//m_pCabecera apuntaria al termino mayor
				antiguo = actual;										
				actual = actual->GetSig();								
				
			}while(actual!=NULL);

			if (!(nuevo = new (nothrow) CTermino))							// se añade al final
			{
				cout<< "\nError: No hay suficiente espacio de memoria.";
				return * this;
			}
			nuevo->SetMono(mono);				//Nuevo apunta al monomio
			antiguo->SetSig(nuevo);				//m_pSig apuntado por antiguo apunta a  nuevo
			nuevo->SetSig(NULL);				//y m_pSig apuntado por nuevo es nulo
		}
		
	}
	
	return * this;
}

void CPolinomio::MostrarPoli(ostream& os) const
{
	const CTermino *pPos = m_pCabecera;

	if (pPos)
		do
		{
			os << pPos->GetMonomio() <<' ';
			pPos = pPos->GetSig();
		}
		while (pPos);
	else
		os<< "0 ";
}

ostream& operator<<(ostream& os, const CPolinomio& poli)
{
	poli.MostrarPoli(os);		
	return os;				
}
bool CPolinomio::operator<(const CPolinomio &poli)
{
	if(Grado() < poli.Grado())
		return true;
	return false;
}
bool CPolinomio::operator>(const CPolinomio &poli)
{
	if(Grado() > poli.Grado())
		return true;
	return false;
}
bool CPolinomio::operator==(const CPolinomio &poli)
{
	if(Grado() == poli.Grado())
		return true;
	return false;
}
CPolinomio CPolinomio::operator+(const CPolinomio& poli)
{
	CPolinomio& suma = *this;
	suma +=poli;
	return suma;
}
CPolinomio& CPolinomio::operator-(const CPolinomio& poli)
{
	CPolinomio& resta = *this;
	resta-=poli;
	return *this;
}
 CPolinomio CPolinomio::operator-()
{	
	CPolinomio poli;
	CTermino *p = m_pCabecera;
	while(p!=NULL)
	{
		poli << -(p->GetMonomio());
		p = p->GetSig();
	}
	return poli;
}
CPolinomio & CPolinomio::operator+=(const CPolinomio &poli)
{
	CTermino * p = poli.m_pCabecera;
	while(p!=NULL)
	{
		*this << p->GetMonomio();
		p = p->GetSig();
	}
	return * this;
}
CPolinomio & CPolinomio::operator-=(const CPolinomio &poli)
{
	CTermino * p = poli.m_pCabecera;
	while(p!=NULL)
	{
		*this << (-p->GetMonomio());
		p = p->GetSig();
	}
	return * this;
}
double CPolinomio::operator[](int i)
{
	CTermino * p = m_pCabecera;
	while(p!=NULL)
	{
		if (i == p->GetExp())
			return p->GetCoef();
		p = p->GetSig();
	}
	return 0;
}
double CPolinomio::operator()(double i)
{
	double resultado = 0;
	CTermino * p = m_pCabecera;
	while(p!=NULL)
	{
		resultado += p->GetCoef()*pow(i,p->GetExp());
		p = p->GetSig();
	}
	return resultado;
}
CPolinomio CPolinomio::operator*(const CPolinomio& poli)
{
	CPolinomio Resul;
	CTermino *plista = NULL;
	CTermino *paux = NULL;
	CMonomio Monoaux;
	paux= this->m_pCabecera;
	plista = poli.m_pCabecera;
	while (plista != NULL)
	{
		while(paux != NULL)
		{
		//multiplicamos los coeficiente y sumamos los exponentes
			Monoaux.SetCoef(plista->GetCoef() * paux->GetCoef());
			Monoaux.SetExp(plista->GetExp() + paux->GetExp());
			paux = paux->GetSig();
			Resul << Monoaux; //lo insertamos en resul y ya se ordena solo
		}
		paux= this->m_pCabecera; //volvemos al principio para empezar un nuevo bucle con el siguiente monomio
		plista = plista->GetSig();
	}
	return Resul;
}
CPolinomio& CPolinomio::operator*=(const CPolinomio& poli)
{
	*this= *this*poli;
	return *this;
}

