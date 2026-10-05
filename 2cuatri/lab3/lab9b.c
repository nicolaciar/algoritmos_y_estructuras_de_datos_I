#include <stdio.h>
// programa 8b
int main () {
	//declaración de variables
	int i, c;
	int A[4] = {12,-9,10,-1};
	// estado inicial
	printf("Estado incial:\ni -> ");
	scanf("%d", &i);
	printf("c -> ");
	scanf("%d", &c);
	printf("σ0: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);

	// asignacion
	i = 0;
	c = 0;
	printf("σ0': i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);
	// sentencia de repetición
	while (i<4) {
		printf("σ1: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);
		if (A[i] > 0)
			c = c + 1;
		printf("σ2: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);
		i = i + 1;
		printf("σ3: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);		
	}
	// estado final
	printf("σ4: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);
}
