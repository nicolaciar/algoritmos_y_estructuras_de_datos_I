#include <stdio.h>

int pedir_entero(char n) {
	int entero;
	printf("Ingrese un entero %c: ", n);
	scanf("%d", &entero);
	return entero;
}

void imprimir_entero(char c, int x) {
	printf("%c = %d\n", c, x);
}

int main(void) {
	int entero;
	entero = pedir_entero('n');
	imprimir_entero('n', entero);
	
	return 0;
}
