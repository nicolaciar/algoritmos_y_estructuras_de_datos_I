#include <stdio.h>
// programa 8a
int main (void) {
	//declaración de variables
	constexpr int N = 4;
	int A[N];
	int i, s, j=0;
        // estado inicial
	printf("i -> ");
	scanf("%d", &i);
	printf("s -> ");
	scanf("%d", &s);
        while (j<N) {
          printf("A[%d] -> ", j);
          scanf("%d", &A[j]);
          j = j + 1;
	}
	
	printf("σ0: i -> %d, s -> %d\n", i, s);

	// asignacion
	i = 0;
	s = 0;	

	printf("σ0': i -> %d, s -> %d\n", i, s);
	// sentencia de repetición
	while (i<N) {
		printf("σ1: i -> %d, s -> %d\n", i, s);
		s = s + A[i];
		i = i + 1;
		printf("σ2: i -> %d, s -> %d\n", i, s);
	}
	// estado final
	printf("σ3: i -> %d, s -> %d\n", i, s);

        return 0;
}
