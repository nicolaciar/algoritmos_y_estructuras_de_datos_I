#include <stdio.h>

int pedir_entero(char c) {
    int n;
    printf("Ingrese un entero %c: ", c);
    scanf("%d", &n);    
    return n;
}

void imprimir_entero (char c, int x){
    printf("%c=%d\n", c, x);
}

int main() {
    char name = 'n';
    int x = pedir_entero(name);
    imprimir_entero(name, x);
}
