#ifndef UTILS
#define UTILS
#include<string>
namespace utils
{
	class CUtils
	{
	public:
	static bool leerInt(int&);
	static bool leerFloat(float&);
	static bool leerCadena(std::string&);
	static int CrearMenu(char *opciones_menu[], int num_opciones);
	static std::string CrearSubMenu(char *opciones_menu[], char num_opciones);
	static std::string Minusculas(std::string cadena);
	};
}
#endif