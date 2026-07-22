#include <stdio.h>

int main () {
	int x, y;
	printf("Estado inicial:\nx -> ");
	scanf("%d", &x);
	printf("y -> ");
	scanf("%d", &y);
	x = x + y;
	y = y + y;
	printf("Estado final:\nx -> %d, y -> %d\n", x, y);
}
