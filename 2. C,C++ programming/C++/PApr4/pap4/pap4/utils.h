#ifndef UTILS
#define UTILS
#include <string>
using namespace std;
namespace utils
{
	class CUtils
	{
	public:
	static bool leerInt(int&);
	static bool leerFloat(float&);
	static bool leerCadena(char&);
	static int CrearMenu(char *opciones_menu[], int num_opciones);
	static char CrearSubMenu(char*opciones_menu[], char num_opciones);
	static char Minusculas(char cadena);
	};
}
#endif