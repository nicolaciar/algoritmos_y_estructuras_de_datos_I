#include <stdio.h>

int main (void) {
  // declaración de variables
  int i, x, temp;
  bool res;
  // Estado inicial
  printf("x -> ");
  scanf("%d", &x);
  printf("i -> ");
  scanf("%d", &i);
  printf("res -> ");
  scanf("%d", &temp);
  res = temp;
  printf("σ0: x -> %d, i -> %d, res -> %d\n", x, i, res);
  i = 2;
  res = true;
  // sentencia de repetición
  while (i < x && res) {
    res = res && (x%i != 0);
    i = i+1;
    printf("σ1: x -> %d, i -> %d, res -> %d\n", x, i, res);
  }
  return 0;
}
