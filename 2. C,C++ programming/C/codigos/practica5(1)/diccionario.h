/*
    diccionario.h
*/
                                // Guardas que evitan problemas
#ifndef DICCIONARIO_H_INCLUDED  // en caso de que el .h se incluya
#define DICCIONARIO_H_INCLUDED  // dos veces en un mismo .c


typedef struct
{
    char ingles[20];
    char espanyol[20];
}
tPal;


int anyadir_palabra (tPal Dicc[], int num, int max);
void traducir_palabra (tPal Dicc[], int num);


int cargar_diccionario (tPal Dicc[], int max);
void mostrar_diccionario (tPal Dicc[], int num);
void grabar_diccionario (tPal Dicc[], int num);


#endif // DICCIONARIO_H_INCLUDED
