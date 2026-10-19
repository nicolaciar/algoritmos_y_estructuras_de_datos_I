#include <stdio.h>

int main (void) {
  int x, y, z;
  printf("x -> ");
  scanf("%d", &x);
  printf("y -> ");
  scanf("%d", &y);
  
  // Intercambio
  z = x;
  x = y;
  y = z;
  
  printf("x -> %d, y -> %d\n", x , y);
  
  return 0;
}
