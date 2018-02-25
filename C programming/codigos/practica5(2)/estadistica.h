

typedef enum {
numerico, alfanumerico // Formato de la nota
}te_tiponota;

typedef union{
float f_nota; // (si el formato es numerico)
char s_nota[20]; // (si el formato es alfanumerico)
}tu_nota;

typedef struct{
char apellidos[40];
char nombre[25];
te_tiponota tipo; // Formato de la nota
tu_nota nota; // Nota
}ts_ficha;


int PedirNotas (ts_ficha Fichas[], int max);
void MostrarNotas (ts_ficha Fichas[], int num);
void CalcularEstadistica (const ts_ficha Fichas[], int num);