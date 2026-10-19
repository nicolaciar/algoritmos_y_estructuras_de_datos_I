#include <stdio.h>
#include <assert.h>

int minimo (int x, int y) {
    int min;
    if (x<=y) {
      min = x;
    }
    else {
      min = y;
    }
    assert(min <= x && min <= y);   // pos
    return min;
}

int abs (int x) {
  int valor_abs;
  if (x>=0) {
    valor_abs = x;  
  }
  else {
    valor_abs = (-1) * x;
  }
  assert(valor_abs>=0);      // pos
  return valor_abs;
}

int main(void) {
  int x, y, min, absoluto;
  printf("x -> ");
  scanf("%d", &x);
  printf("y -> ");
  scanf("%d", &y);
  
  min = minimo(x,y);
  printf("el minimo entre x = %d e y = %d, es %d\n", x, y, min);
  
  absoluto = abs(x);
  printf("el valor absoluto de %d es %d\n", x, absoluto);
  
  return 0;
}
