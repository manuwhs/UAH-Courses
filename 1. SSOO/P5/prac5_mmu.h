/* NO MODIFICAR ESTE ARCHIVO!!! */

/* mmu_sim
 * Esta función implementa la mmu simulada del sistema. Recibe
 * como parámetro una dirección virtual y el modo de acceso (lectura, 'r'
 * o escritura, 'w'), y devuelve la dirección física asociada.
 * La mmu debe comprobar la presencia de la página accedida y en caso
 * de ausencia generar un fallo de página mediante llamada a la
 * función fallo_de_pagina(). Además, debe modificar los bits de referencia
 * y modificación de manera adecuada.
 */

int mmu_sim( int dir_virtual, char r_w);

