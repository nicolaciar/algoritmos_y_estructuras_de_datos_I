#include <stdio.h>
// programa 8a
int main () {
	//declaración de variables
	int i, s;
	// estado inicial
	printf("Estado incial:\ni -> ");
	scanf("%d", &i);
	printf("s -> ");
	scanf("%d", &s);
	printf("σ0: i -> %d, s -> %d\n", i, s);
	int A[4] = {2,10,10,-1};
	// asignacion
	i = 0;
	s = 0;
	printf("σ0': i -> %d, s -> %d\n", i, s);
	// sentencia de repetición
	while (i<4) {
		printf("σ1: i -> %d, s -> %d\n", i, s);
		s = s + A[i];
		i = i + 1;
		printf("σ2: i -> %d, s -> %d\n", i, s);
	}
	// estado final
	printf("σ3: i -> %d, s -> %d\n", i, s);
}
