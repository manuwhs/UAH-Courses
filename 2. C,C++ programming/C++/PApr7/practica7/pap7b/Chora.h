#ifndef CHORA
#define CHORA
#include <string>
using namespace std;

class Chora
{
private:

	int m_nhoras;
	int m_nminutos;
	int m_nsegundos;
	string m_pszformato;                //almacena PM,AM,24
	bool Formato24() const;


public:

	bool eshoracorrecta () const;

	Chora (int horas=0, int minutos=0, int segundos=0, string formato = "24");
	Chora (const Chora& hora);
	~Chora ();
	Chora & operator=(const Chora &hora);
	void Construir();
	bool AsignarHora(int nhoras, int nminutos, int nsegundos, string pszformato);
	void ObtenerHora (int& nhoras, int& nminutos, int& nsegundos, string& pszformato) const;
	void Destrurir();
};

#endif