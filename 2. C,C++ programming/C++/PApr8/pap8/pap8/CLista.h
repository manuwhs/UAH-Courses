#if !defined (_LISTA_H)
#define _LISTA_H

#include "CNodoLista.h"

// Declaración anticipada de CNodoLista:
template <class T> class CNodoLista;

template <class T> class CLista	//Declaración
{
private:
  CNodoLista<T> * m_Primero;
  CNodoLista<T> * m_Actual;
  CNodoLista<T> * m_Ultimo;

public:
  CLista();
  CLista(const T& Obj);
  CLista(const CLista<T>& Lista);
  ~CLista();

  CLista<T>& operator=(const CLista<T>& Lista);
  CNodoLista<T>* operator[](int i) const;
  bool EstaVacia() const { return m_Primero == NULL; }
  bool TieneMas() const { return m_Actual != NULL; }
  void AgregarObjeto(const T& Obj);
  void Vaciar();
  T& GetPrimero() const;
  T& GetActual() const;
};
#include "CLista.cpp" //Definición
#endif
