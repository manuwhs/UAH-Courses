#include<iostream>
#include<string>
class CHora
{
  private:
	int m_nHoras;
	int m_nMinutos;
	int m_nSegundos;
	std::string m_pszFormato; //almacena los valores "AM", "PM" o "24"

	bool Formato24() const;
	//Devuelve true si esta en formato 24 horas.
	//Devuelve false si esta en formato 12 horas (AM o PM).

  protected:

	  bool EsHoraCorrecta () const;
	  //Verifica si una hora es correcta: formato correcto (24, AM
	  //o PM) yhoras, minutos y segundos dentro de los limites
	  //establecidos segun el formato.
	  //Devuelve true si es correcta y false en otro caso.

  public:

	  void Construir();
	  //Será invocada cada vez que se defina un objeto.
	  //Pone a 0 los datos int y asigna el bloque de memoria
	  //(3 caracteres) que será refenciado por el puntero
	  //m_pszFormato e iniciado con una cadena vacia.

	  bool AsignarHora(int nHoras, int nMinutos, int nSegundos, std::string pszFormato);
	  //Recibe 4 argumentos, correspondientes a una hora,
	  //y los almacena en las variables
	  //m_nHoras, m_nMinutos, m_nSegundos y m_pszFormato
	  //correspondientes al objeto que recibe el mensaje.
	  //Invoca a EsHoraCorrecta.
	  //Devuelve el valor retornado por EsHoraCorrecta.

	  void ObtenerHora(int& nHoras, int& nMinutos, int& nSegundos, std::string& pszFormato) const;
	  //Obtener una hora. Permite obtener los datos hora, 
	  //minutos, segundos y formato correspondientes
	  //al objeto que recibe el mensaje.

	  
};