#if !defined(_INDICE_INCORRECTO_)
#define _INDICE_INCORRECTO_

#include<string>
using namespace std;

class CIndiceIncorrecto
{
	private:
		string error;
	public:
		CIndiceIncorrecto()
		{
			error="ERROR. Indice fuera de rango.";
		}
		string what(){return error;}
}
#endif