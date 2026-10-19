#include <stdio.h>
// programa 8b

int main (void) {
    //declaración de variables
    int i, c, j=0;
    constexpr int N = 4;
    int A[N];
  
    // estado inicial
    printf("i -> ");
    scanf("%d", &i);
    printf("c -> ");
    scanf("%d", &c);
    while (j<N) {
      printf("A[%d] -> ", j);
      scanf("%d", &A[j]);
      j = j + 1;
    }
    
    printf("σ0: i -> %d, c -> %d\n", i, c);

    // asignacion
    i = 0;
    c = 0;
    printf("σ0': i -> %d, c -> %d\n", i, c);
    
    // sentencia de repetición
    while (i<N) {
          printf("σ1: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);
          if (A[i] > 0) {
              c = c + 1;
          }
          printf("σ2: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);
          i = i + 1;
          printf("σ3: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);		
    }
    
    // estado final
    printf("σ4: i -> %d, A[i] -> %d, c -> %d\n", i, A[i], c);

    return 0;
}
