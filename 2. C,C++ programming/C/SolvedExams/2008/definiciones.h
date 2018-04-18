#define MAX_NOM 20
#define MAX_DESCR 100


typedef enum
{
cabeza, tronco, extremidades
}tPartesCuerpo;
typedef struct
{
char nombre[MAX_NOM]; // Ej.:�tibia� o �trapecio�.
char descripcion[MAX_DESCR]; // Ej.: �Contiene varias miofribillas��
tPartesCuerpo ubicacion; // Indica la zona del cuerpo donde se localiza
int longitud; // Longitud en mil�metros
}tInfComun;


typedef enum
{
estriado, liso, cardiaco
}tTipoMusculo;
typedef struct
{
tInfComun infComun; // Estructura de tipo tInfComun
tTipoMusculo tipo;
char funcion[MAX_DESCR]; // Describe la funci�n realizada por el m�sculo
}tMusculo;


typedef struct
{
tInfComun infComun; // Estructura de tipo tInfComun
float densidad; // Grado de densidad �sea. Valores entre 0 y 1
int nmusc; // N�mero de m�sculos asociados con el hueso
tMusculo **pmusc; // Array din�mico de punteros a estructuras tMusculo
}tHueso;