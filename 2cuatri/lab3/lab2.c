#include <stdio.h>
// para trabajar con booleanos
#include <stdbool.h>

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
	
	// resultados:
	printf("x%%4 == 0 es -> %s\n", exp1 ? "true" : "false");
	printf("x+y == 0 && y - x == (-1) * z es -> %s\n", exp2 ? "true" : "false");
	printf("not b && w es -> %s", exp3 ? "true" : "false");
	
	return 0;
	
}
