#include <stdio.h>

int main () {
	int x, y;
	
	// estado inicial
	printf("Estado inicial:\nx -> ");
	scanf("%d", &x);
	printf("y -> ");
	scanf("%d", &y);
	
	// cuerpo del programa
	if (x >= y)
		x = 0;
	else if (x <= y)
		x = 2;
	
	// estado final
	printf("Estado final:\nx -> %d, y -> %d\n", x, y);
	

}
