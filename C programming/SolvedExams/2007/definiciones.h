typedef enum
{
tp_neumatico, tp_filtro, tp_aceite
}
tipo_pieza;
typedef struct
{
char referencia[10]; // Ej.: "P 600 - 195/60 R14"
char fabricante[10]; // Ej.: "Pirelli"
char descripcion[40]; // Ej.: "Neumaticos Equip. Orig. Verano"
tipo_pieza tipo;
int cantidad_disponible;
}
piezas;

typedef enum
{
et_pendiente, et_iniciada, et_terminada
}
estado_tarea;
typedef struct
{
char matricula[10]; // Vehículo a reparar
unsigned long inicio; // Segundos desde comienzo de 2000
unsigned long duracion; // Segundos desde inicio de la tarea
estado_tarea estado;
}
tarea;

typedef enum
{
ti_elevador, ti_equilibrador
}
tipo_instalacion;
typedef struct
{
char referencia[10]; // Ej.: "1A"
tipo_instalacion tipo;
tarea * p_tareas; // Ordenadas cronológicamente
int num_tareas;
}
instalacion;
