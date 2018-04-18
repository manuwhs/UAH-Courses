#include <vector>
using namespace std;

struct MatFloat
{
	int nFilas;          //Numero de filas
	int nColumnas;       //Numero de columnas
};


vector< vector<float> > ConstruirMatriz(int nFilas, int nColumnas);		//Funcion para dimensionar la matriz

void IntroducirDatos(vector< vector<float> >& v);				//Funcion para introducir datos en la matriz

void MostrarMatriz(vector< vector<float> >& v);					//Funcion para mostrar la matriz en pantalla


