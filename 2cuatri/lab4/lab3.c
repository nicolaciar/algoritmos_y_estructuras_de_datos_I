#include <stdio.h>
// lab 3
bool es_vocal(char l) {
    bool b;
    /*
    int i = 0;
  char vocales[] = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
    while (i<10) {
    if (vocales[i] == l) {
        b = true;
      }
    i = i+1;
    }           NO SE PUEDE HACER DE ESTA FORMA*/
    if (l == 'a' || l == 'A' || l == 'e' || l == 'E' || l == 'i' || l == 'I' || l == 'o' || l == 'O' || l == 'u' || l == 'U')
        b = true;
    else
        b = false;
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
        printf("%c es vocal\n", c);
    }
    else {
        printf("%c no es vocal\n", c);    
    } 
}

int main(void) {
    char letra;
    bool res;
    letra = pedir_letra();
    res = es_vocal(letra);
    imprimir_booleano(letra, res);
    return 0;
}
