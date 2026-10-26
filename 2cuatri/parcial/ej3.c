#include <stdio.h>
#include <assert.h>

bool todos_iguales_por_pares(int tam, int arr[]) {
  int n;
  bool p;
  assert(tam>0);
  n = 0;
  p = true;
  while(n < tam) {
    p = p && (arr[0] == arr[n]);
    n = n + 2;
  }
  return p;
}

int main (void) {
  constexpr int N = 10;
  int valores[N] = {2,0,2,-2,2,12,2,2,2,15};
  bool res = todos_iguales_por_pares(N, valores);
  printf("%d\n", res);
  return 0;
}
