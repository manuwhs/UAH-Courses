/*
    main.c
*/

#include <stdio.h>
#include "diccionario.h"

int main ()
{
    static tPal Diccionario[100];
    int num;
    int opcion, n;

    printf ("PROGRAMA DICCIONARIO\n");
    printf ("====================\n");

    num = cargar_diccionario (Diccionario, 100);

    while (1)
    {
        printf ("\n"
                "El diccionario contiene %d palabras.\n", num);

        printf ("\n"
                "\t1.- Anyadir palabra\n"
                "\t2.- Traducir palabra\n"
                "\t3.- Mostrar diccionario\n"
                "\t4.- Cargar diccionario\n"
                "\t5.- Grabar diccionario\n"
                "\n"
                "\t0.- Salir\n"
                "\n"
                "Elija una opcion: ");

        n = scanf ("%d", &opcion);

        if (n==EOF || (n==1 && opcion==0))
            return 0;

        if (n==0)
            getchar ();
        else
            switch (opcion)
            {
                case 1:
                    num = anyadir_palabra (Diccionario, num, 100);
                    break;

                case 2:
                    traducir_palabra (Diccionario, num);
                    break;

                case 3:
                    mostrar_diccionario (Diccionario, num);
                    break;

                case 4:
                    num = cargar_diccionario (Diccionario, 100);
                    break;

                case 5:
                    grabar_diccionario (Diccionario, num);
                    break;

                default:
                    printf ("ERROR: Opcion incorrecta.\n");
            }
    }
}
