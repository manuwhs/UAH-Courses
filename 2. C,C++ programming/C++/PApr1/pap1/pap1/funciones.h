struct MatFloat
{
	int nFilas;          //Numero de filas
	int nColumnas;       //Numero de columnas
	float **ppMatrizF;   //Datos de la matriz. ppMatriz apunta al comienzo de la matriz
};

float **ConstruirMatriz(int nFilas, int nColumnas);		//Funcion para dimensionar la matriz
void IntroducirDatos(MatFloat *pDestino);				//Funcion para introducir datos en la matriz
void MostrarMatriz(MatFloat mOrigen);					//Funcion para mostrar la matriz en pantalla
void DestruirMatriz(MatFloat *pMatFloat);				//Funcion que destruye la matriz creada

