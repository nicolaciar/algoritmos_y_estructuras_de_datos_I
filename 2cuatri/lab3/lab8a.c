#include <stdio.h>

int main () {
  // declaración de variables
  int i,x,y;
  // estado inicial
  printf("Estado inicial:\nx -> ");
  scanf("%d", &x);
  printf("y -> ");
  scanf("%d", &y);
  i = 0;
  printf("σ0: x -> %d, y -> %d, i -> %d\n", x,y,i);
  // sentencia de repetición
  while (x>=y) {
    x = x-y;
    i = i+1;
    printf("σ1: x -> %d, y -> %d, i -> %d\n", x,y,i);
  }
}
