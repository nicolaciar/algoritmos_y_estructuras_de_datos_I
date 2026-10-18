#include <stdio.h>

int main () {
	int x, y, z;
	bool b, w;
	// asignaciones:
	x = 4;
	y = -4;
	z = 8;
	b = true;
	w = false;
	
	// expresiones:
	bool exp1 = (x%4 == 0);
	bool exp2 = (x+y == 0 && y - x == (-1) * z);
	bool exp3 = (!b && w);
	
	// estado inicial:
	printf("Estado inicial:\n");
	printf("x -> %d, y -> %d, z -> %d, b -> %d, w -> %d\n", x, y, z, b, w); 
	
	// resultados
	printf("x%%4 == 0 -> %d\n", exp1);
	printf("x+y == 0 && y - x == (-1) * z -> %d\n", exp2);
	printf("not b && w -> %d\n", exp3);
	return 0;
}
