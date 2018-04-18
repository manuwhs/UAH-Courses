#if !defined(_NODOLISTA_H)
#define _NODOLISTA_H

#include "CLista.h"

// Declaración anticipada de CLista:
template<class T> class CLista;

template<class T>
class CNodoLista	//Declaración
{
  friend CLista<T>;
private:
  T m_Dato;
  CNodoLista<T> * m_pSigNodo;
public:
  CNodoLista() { m_pSigNodo = NULL; }
  CNodoLista(const CNodoLista<T>& NodoLista){*this = NodoLista};
  CNodoLista(const T& Obj, CNodoLista<T>* pNodo = NULL): m_Dato(Obj), m_pSigNodo(pNodo){};
  CNodoLista<T>& operator=(const CNodoLista<T>& NodoLista){};
  CNodoLista<T> *GetSigNodo() const { return m_pSigNodo; }
  T& GetDato() { return m_Dato; }
  void SetSigNodo(CNodoLista<T> *pNodo) { m_pSigNodo = pNodo; }
};

#include "CNodoLista.cpp" //Definición

#endif