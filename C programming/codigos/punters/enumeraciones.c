//DEFINICION Y USO DE ENUMERACIONES
#include<stdio.h>
#include<windows.h>

void main(){
	                                          //CREAR la enumeracion
	enum color {rojo,azul,verde,amarillo};  // Las palabras dentro del enum se convierten en identificadores
	                                        // cuyo valor son los numeros del 0 a n
	                                         //CREAR una variable de la enumeracion
	enum color coche;
	                                        // Tambien podiamos haber creado la variables al crear la enumeracion
	                                        // escribiendo su nombre despues del } y antes del ;
	enum estado {solido, liquido, gas}agua,metano;
	                                        // INICIALIZAR las variables
	coche = rojo;
	metano = gas;
	                                       //Tambien podemos inicializarlas con el numero asociado al identificador
	                                       // pero convirtiendolo explicitamente k es de ese tipo enum
	agua = (enum estado)1;            


	printf("%i \n",coche);
	printf("%i \n",metano);
	printf("%i \n",agua);

	system("pause");}