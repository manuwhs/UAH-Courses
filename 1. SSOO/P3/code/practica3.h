double fx( double x);

typedef struct {		// Estructura con los datos que se le pasa a cada hilo
	int inicio;	// Valor menor del rango [0,1] a calcular el trapecio
	int fin;	// Valor mayor del rango [0,1] a calcular el trapecio
	}data_hilo;
