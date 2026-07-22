#include <stdio.h>

int main () {
	int x;
	printf("Estado inicial:\nx -> ");
	scanf("%d", &x);
	x = 5;
	printf("Estado final:\nx -> %d\n", x);
}
