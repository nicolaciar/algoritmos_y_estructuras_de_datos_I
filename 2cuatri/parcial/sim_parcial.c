#include <stdio.h>
#include <assert.h>

int max_array(int tam, int arr[]) {
  int n, m;
  assert(tam>0);
  n = 1;
  m = arr[0];
  while (n < tam) {
    if (arr[n] > m) {
      m = arr[n];
      n = n + 1;
    }
    else {
      n = n + 1;
    }
  }
  return m;
}

int main(void) {
  constexpr int N = 4;
  constexpr int M = 7;
  
  int valores1[N] = {-3, 0, 12, 10};
  int valores2[M] = {8, 3, 22, 30, -7, 29, 0};
  
  int max1 = max_array(N, valores1);
  int max2 = max_array(M, valores2);
  
  printf("Máximo del arreglo valores1: %d\n", max1);
  printf("Máximo del arreglo valores2: %d\n", max2);
  
  return 0;
}

// Ejemplo de ejecución:
//  $ ./sim_parcial
//  Máximo del arreglo valores1: 12
//  Máximo del arreglo valores2: 30

