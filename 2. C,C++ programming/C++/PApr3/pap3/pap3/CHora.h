#include<iostream>
class CHora
{
  private:
	int m_nHoras;
	int m_nMinutos;
	int m_nSegundos;
	char *m_pszFormato; //almacena los valores "AM", "PM" o "24"

	bool Formato24() const;
	//Devuelve true=>24 horas.Devuelve false=>12 horas (AM o PM).

  protected:

	  bool EsHoraCorrecta () const;
	  //Verifica si una hora es correcta.Devuelve true=>correcta y false=>incorrecta.

  public:

	  void Construir();
	  //Será invocada cada vez que se defina un objeto.
	  //Pone a 0 los datos int y asigna el bloque de memoria
	  //(3 caracteres) que será refenciado por el puntero
	  //m_pszFormato e iniciado con una cadena vacia.

	  bool AsignarHora(int nHoras, int nMinutos, int nSegundos, const char *pszFormato);
	  //Recibe 4 argumentos, correspondientes a una hora,
	  //y los almacena en las variables
	  //m_nHoras, m_nMinutos, m_nSegundos y m_pszFormato
	  //correspondientes al objeto que recibe el mensaje.
	  //Invoca a EsHoraCorrecta.
	  //Devuelve el valor retornado por EsHoraCorrecta.

	  void ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, char *pszFormato) const;
	  //Obtener una hora.

	  void Destruir();
	  //Libera memoria reservada dinamicamente para objeto y pone el puntero m_pszFormato a cero.
};