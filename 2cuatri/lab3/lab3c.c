#include <stdio.h>
// Programa 1c
int main () {
	int x, y;
	printf("Estado inicial:\nx -> ");
	scanf("%d", &x);
	printf("y -> ");
	scanf("%d", &y);
	y = y + y;
	x = x + y;
	printf("Estado final:\nx -> %d, y -> %d\n", x, y);
}
