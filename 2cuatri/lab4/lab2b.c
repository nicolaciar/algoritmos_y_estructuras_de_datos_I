#include <stdio.h>

int main(void) {
  int x, y, z, aux1, aux2;
  printf("x -> ");
  scanf("%d", &x);
  printf("y -> ");
  scanf("%d", &y);
  printf("z -> ");
  scanf("%d", &z);
  // estado inicial
  printf("x -> %d, y -> %d, z -> %d\n", x, y,z);
  // asignación "multiple" (secuencial con variable auxiliar)
  aux1 = x;
  aux2 = y;
  x = y;
  y = y + aux1 + z;
  z = aux1 + aux2;
  // estado final
  printf("x -> %d, y -> %d, z -> %d\n", x, y, z);
  return 0;
}
