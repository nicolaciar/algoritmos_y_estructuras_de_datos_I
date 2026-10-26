#include <stdio.h>
#include <assert.h>

bool todos_iguales(int tam, int arr[]) {
  int n;
  bool p;
  assert(tam>0);
  n = 0;
  p = true;
  while (n!=tam-1) {
    p = p && (arr[n] == arr[n+1]);
    n = n + 1;
  }
  return p;
}

void imprimir_resultado(bool res) {
  if (res) {
    printf("Los elementos del arreglo son todos iguales\n");
  }
  else {
    printf("Los elementos del arreglo NO son todos iguales\n");
  }
}

void pedir_arreglo(int tam, int a[]) {
  int i = 0;
  printf("Ingrese valores del arreglo\n");
  while (i<tam) {
    printf("a[%d] = ",i);
    scanf("%d", &a[i]);
    i = i + 1;
  }
}

int main(void) {
  constexpr int N = 5;
  int valores[N] = {5, 0, 15, -2, 3};
  se puede pedir los elementos del arreglo:
  // se pueden pedir los elementos del arreglo
  //int valores[N];
  //pedir_arreglo(N, valores);
  bool res = todos_iguales(N, valores);
  imprimir_resultado(res);
  return 0;
}
