#include <stdio.h>

int main(void) {
  int x, y, aux;
  printf("x -> ");
  scanf("%d", &x);
  printf("y -> ");
  scanf("%d", &y);
  // estado inicial
  printf("x -> %d, y -> %d\n", x, y);
  // asignación "multiple" (secuencial con variable auxiliar)
  aux = x;
  x = x + 1;
  y = aux + y;
  // estado final
  printf("x -> %d, y -> %d\n", x, y);
  return 0;
}
