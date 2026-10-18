#include <stdio.h>

int main (void) {
  // declaración de variables
  int i,x,y;
  printf("x -> ");
  scanf("%d", &x);
  printf("y -> ");
  scanf("%d", &y);
  printf("i -> ");
  scanf("%d", &i);
  // estado inicial
  printf("σ0: x -> %d, y -> %d, i -> %d\n", x,y,i);
  i = 0;
  // sentencia de repetición
  while (x>=y) {
    x = x-y;
    i = i+1;
    printf("σ1: x -> %d, y -> %d, i -> %d\n", x,y,i);
  }
  return 0; 
}
