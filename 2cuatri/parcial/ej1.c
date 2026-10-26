#include <stdio.h>
#include <assert.h>

int fact_intercalado(int n) {
  //constexpr int N = n;
  int f, m;
  assert(n>=0);
  f = 1;
  m = 1;
  while (m <= n) {
    f = f * m;
    m = m + 2;
  }
  return f;
}

int main (void) {
  int res, n;
  printf("Ingresar valor ");
  scanf("%d", &n);
  res = fact_intercalado(n);
  printf("res = %d\n", res);
  return 0;
}
