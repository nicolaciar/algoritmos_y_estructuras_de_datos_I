/* Entrada/Salida Hacé un programa en C, que solicite el ingreso de los valores de las variables
x,y,z, e imprima el resultado de las siguiente expresiones. Completá los resultados de la tablas para los dos estados dados.
*/

#include <stdio.h>

int main () {
	int x, y,z;
	printf("Ingrese valor de x: ");
	scanf("%d", &x);
	printf("Ingrese valor de y: ");
	scanf("%d", &y);	
	printf("Ingrese valor de z: ");
	scanf("%d", &z);

	printf("x+y+1 = %d\n", x+y+1);
	printf("z*z+y*45-15*x = %d\n", z*z+y*45-15*x);
	printf("y - 2 == (x*3+1) %% 5 = %d\n", y - 2 == (x*3+1)%5);
	printf("y/2*x = %d\n", y/2*x);
	printf("y < x*z = %d\n", y < x*z);
	return 0;
}
