#include <iostream>
#include "CMonomio.h"

using namespace std;

ostream& operator<<(ostream& os, const CMonomio& mono)
{
	os<< noshowpos;				//NO poner + para valores positivos
	if (!mono.GetExp())			//Si la x esta elevada a 0,
		os<<mono.GetCoef();		//vale 1 y se muestra solo el coef.
	else						//Si no...
	{
		if(mono.GetCoef() != 1)	//Mostrar el coeficiente
			os<< mono.GetCoef();//solo si es distinto de 1
		//os<<  noshowpos;		//quitar + para valores positivos
		if(mono.GetExp() == 1)		//Si el exponente es 1,
			os<< 'x';				//basta "x"
		else						//Si no,
			os<< "x^"<<mono.GetExp();//hay que poner "x^..."
	}
	os<<noshowpos;				//Devolver ref. al ostream recibido
	return os;					//para permtir encadenamiento cout<<m1<<m2...
}

