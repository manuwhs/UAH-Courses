/*
    utilidades.c
*/

#include <stdio.h>
#include "diccionario.h"

static void imprimir_diccionario (tPal Dicc[],
                                  int num,
                                  FILE * pf);

int cargar_diccionario (tPal Dicc[], int max)
{
    FILE * pf;
    int n, num;

    num = 0;
    pf = fopen ("diccionario.txt", "rt");

    if (pf==NULL)
        perror ("diccionario.txt");
    else
    {
        while (num<max)
        {
            n = fscanf (pf, "%19s %19s",
                            Dicc[num].ingles,
                            Dicc[num].espanyol);

            if (n!=2 || feof(pf) || ferror(pf))
                break;

            num ++;
        }

        if (ferror(pf))
            perror ("diccionario.txt");
        else if (feof(pf))
            printf ("Diccionario cargado correctamente.\n");

        if (num==max)
            printf ("Diccionario lleno.\n");

        fclose (pf);
    }

    return num;
}

void mostrar_diccionario (tPal Dicc[],
                          int num)
{
    printf ("\nIngles\tEspanyol\n"
              "======\t========\n");

    imprimir_diccionario (Dicc, num, stdout);
}

void grabar_diccionario (tPal Dicc[],
                         int num)
{
    FILE * pf;

    pf = fopen ("diccionario.txt", "wt");

    if (pf==NULL)
        perror ("diccionario.txt");
    else
    {
        imprimir_diccionario (Dicc, num, pf);
        fclose (pf);
    }
}

static void imprimir_diccionario (tPal Dicc[],
                                  int num,
                                  FILE * pf)
{
    int i;

    clearerr (pf);

    for (i=0; i<num; i++)
        fprintf (pf, "%s\t%s\n", Dicc[i].ingles,
                                 Dicc[i].espanyol);

    if (ferror (pf))
        perror ("diccionario.txt");
}
