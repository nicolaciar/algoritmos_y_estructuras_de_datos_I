#include <stdio.h>
// lab 3
bool es_vocal(char letra) {
  bool b = false;
  int i = 0;
/*  char vocales[] = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
  while (i<10) {
    if (vocales[i] == letra) {
        b = true;
      }
    i = i+1;
  }*/
  return b;
}

char pedir_letra (void) {
    char letra;
    printf("Ingrese una letra: ");
    scanf("%c", &letra);
    return letra;
}

void imprimir_booleano(char c, bool x) {
    if (x) {
        printf("%c = verdadero\n", c);
    }
    else {
        printf("%c = falso\n", c);    
    } 
}

int main(void) {
  char letra;
  bool res;
  letra = pedir_letra();
  res = es_vocal(letra);
  imprimir_booleano(res);
  return 0;
}
