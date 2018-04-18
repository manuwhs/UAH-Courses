#if !defined(_LISTA_CPP)
#define _LISTA_CPP

#include "CLista.h"
#include "MemoryManager.h"
#include "CIndiceIncorrecto.h"
#include <iostream>

;using namespace std;


template<class T> CLista<T>::CLista()						//Contructor de plantilla CLista
{
	m_Primero = NULL;
	m_Actual = NULL;
	m_Ultimo = NULL;
}


template<class T> CLista<T>::CLista(const T& Obj)			//Constructor de plantilla en base a un objeto
{
	 m_Primero=NULL;
	 m_Actual=NULL;
     m_Ultimo=NULL;
	 AgregarObjeto(Obj);
}


template <class T> CLista<T>::CLista(const CLista<T> &Lista) //Constructor copia de plantilla CLista
{
	m_Primero = NULL;
	m_Actual = NULL;
	m_Ultimo = NULL;
	*this = Lista;
}


template <class T> CLista<T>& CLista<T>::operator=(const CLista<T>& Lista) //Operator= de plantilla CLista
{
  Vaciar();
  if(!Lista.EstaVacia())
  {
    m_Actual = m_Ultimo = m_Primero = new CNodoLista<T>(Lista.GetPrimero());
    while(Lista.TieneMas())
    {
      m_Actual->SetSigNodo(new CNodoLista<T>(Lista.GetActual()));
      m_Ultimo = m_Actual = m_Actual->GetSigNodo();
    }
  }
  return *this;
}


template <class T> void CLista<T>::AgregarObjeto(const T& Obj)	//Miembro AgregarObjeto de plantilla CLista
{
  if(EstaVacia())												//Si la lista esta vacia(No existe)
    m_Primero = m_Actual = m_Ultimo = new CNodoLista<T>(Obj);	//Reserva memoria para las variables que la determinan
  else
  {
    m_Ultimo->SetSigNodo(new CNodoLista<T>(Obj));				//Si no, se reserva memoria para el siguiente nodo al que apunta m_Ultimo
    m_Ultimo = m_Ultimo->GetSigNodo();							//y m_Ultimo pasa a ser el siguiente nodo al que apuntaba
  }
}


template <class T> T& CLista<T>::GetActual() const				//Miembro GetActual de plantilla CLista
{
  CNodoLista<T> *temp = m_Actual;								
  const_cast<CLista<T>*>(this)->m_Actual = m_Actual->GetSigNodo(); 
  return temp->GetDato();
}


template <class T> T& CLista<T>::GetPrimero() const
{
  // PREGUNTA 11
  const_cast<CLista<T>*>(this)->m_Actual = m_Primero->GetSigNodo();
  return m_Primero->GetDato();
}



// PREGUNTA 2: operator[] de CLista. Lanza CIndiceIncorrecto.
template <class T> CNodoLista<T>* CLista<T>::operator[](int i) const
{
	if(i<0) throw CIndiceIncorrecto::CIndiceIncorrecto();
	if(i==0) return m_Primero;
	GetPrimero();
	for(int j=1;(j<i)&&(m_Actual!=NULL);j++)
	{
		GetActual();
	}
	if(m_Actual == NULL) throw CIndiceIncorrecto::CIndiceIncorrecto();
	return m_Actual;

}



// PREGUNTA 1: CLista<T>::Vaciar
template <class T> void CLista<T>::Vaciar()			//Miembro Vaciar de CLista
{
	if(!EstaVacia())
	{
		CNodoLista<T> *actual = NULL;
		GetPrimero();
		while(m_Actual!=NULL)
		{
			actual=m_Actual;
			GetActual();
			delete actual;
		}
		delete m_Primero;
		/*--*/if(m_Ultimo == NULL) delete m_Ultimo;
		m_Ultimo=NULL;
		m_Primero=NULL;
		m_Actual=NULL;
	}
}

template<class T> CLista<T>::~CLista()						//Destructor de platilla CLista
{
  Vaciar();
}

#endif
