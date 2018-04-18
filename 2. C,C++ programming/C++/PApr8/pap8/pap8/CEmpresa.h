#if !defined(_EMPRESA_H)
#define _EMPRESA_H
#include "CCliente.h"
// PREGUNTA 14: plantilla para CEmpresa

template <class T> class CEmpresa
{
	private:
  T* m_pElem;
  int m_nElem;
public:
  CEmpresa() : m_nElem(0), m_pElem(NULL) {};
  CEmpresa(const CEmpresa<T>& a);
  CEmpresa<T>& operator=(const CEmpresa<T>& a);
  ~CEmpresa();
  void AgregarElemento(const T& elem);
  int Tamanyo() const { return m_nElem; }
  T& GetElemento(int nElem) const;
  T& operator[](int nElem) const;
}
#include "CEmpresa.cpp"
#endif

/*class CEmpresa
{
private:
  CCliente* m_pElem;
  int m_nElem;
public:
  CEmpresa() : m_nElem(0), m_pElem(NULL) {};
  CEmpresa(const CEmpresa& a);
  CEmpresa& operator=(const CEmpresa& a);
  ~CEmpresa();
  void AgregarElemento(const CCliente& elem);
  int Tamanyo() const { return m_nElem; }
  CCliente& GetElemento(int nElem) const;
  CCliente& operator[](int nElem) const;
};*/



