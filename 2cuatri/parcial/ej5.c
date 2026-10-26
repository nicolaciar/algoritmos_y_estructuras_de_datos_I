#include <stdio.h>
#include <assert.h>

int factorial(int num) {
  int f, n;
  assert(num>=0);
  f = 1;
  n = 1;
  while(n<=num) {
    f = f * n;
    n = n + 1;
  }
  return f;
}

int pedir_entero(void) {
  int n;
  printf("Ingrese un entero: ");
  scanf("%d", &n);
  return n;
}

void imprimir_resultado(int n, int res) {
  printf("El factorial de %d es %d\n", n, res);
}

int main(void) {
  int n = pedir_entero();
  imprimir_resultado(n, factorial(n));
  return 0;
}
