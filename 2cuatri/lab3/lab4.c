// Se puede implementar el programa 1d en C
// haciendo uso de una variable auxiliar, esto
// debido a que no existe la asignación multiple en C

#include <stdio.h>

int main () {
	// variables del programa
	int x, y, aux;             // usamos aux para implementar la asignación multpple
	// preguntamos por el estado inicial
	printf("Estado inicial:\nx -> ");
	scanf("%d", &x);
	printf("y -> ");
	scanf("%d", &y);
	// asignación (cuerpo del programa)
	aux = y;
	y = y + y;		
	x = x + aux;
	// estado final
	printf("Estado final:\nx -> %d, y -> %d\n", x, y);
}
