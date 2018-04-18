#include <iostream>
using namespace std;	

class CMatFloat
{
	//Datos privados
	private:
	
		float **m_ppMatrizF;    //Apunta a los datos de la matriz
		int m_nFilas;          //Numero de filas
		int m_nColumnas;       //Numero de columnas
			
	//Datos publicos
	public:

		//Iniciar sera invocada cada vez que se defina un objeto.
		//Pone m_ppDatosF a NULL y m_nFilas y m_nColumnas a 0
		void Iniciar();

		//Asigna memoria para una matriz dinamica cuyas
		//dimensiones vienen dadas por los parametros de tipo
		//entero que se le pasan. Asigna a los datos mienmbro
		//m_nFilas y m_nColumnas los valores adecuados. Pone la amtriz a ceros.
		void CrearMatriz2D(int Filas, int Columnas);
		
		//Metodo analogo  al anterior pero para una dimension
		void CrearMatriz1D(int nElementos);
		
		//Establece los elementos de la amtriz con los valores
		//que se introducen por teclado
		void Introducir();
		
		//Vuelca en la pantalla los datos contenidos en la matriz
		void Mostrar();
		
		//Libera la memoria ocupada por los datos y llama a Iniciar.
		void Destruir();

		//Devuelve true si m_ppDatosF es ditinto de NULL
		//(La matriz existe); en otro caso, devuelve false.
		bool Existe();
}