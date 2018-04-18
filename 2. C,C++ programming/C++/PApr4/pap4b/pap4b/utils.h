#ifndef UTILS
#define UTILS
#include<string>
namespace utils
{
	class CUtils
	{
	public:
	static bool leerInt(int&);//Lee entero
	static bool leerFloat(float&);//Lee tipo float
	static bool leerCadena(char&);//Lee cadena
	static int CrearMenu(char *opciones_menu[], int num_opciones);
	//Imprime un menu. Opciones numeros.
	static char CrearSubMenu(char *opciones_menu[], char num_opciones);
	//Imprime submenu.Opciones letras.
	static std::string Minusculas(std::string cadena);
	//Convierte mayúsculas en minúsculas
	};
}
#endif