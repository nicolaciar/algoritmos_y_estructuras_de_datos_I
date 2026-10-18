#include <stdio.h>

bool pedir_booleano(char c) {
    bool booleano;
    int aux;
    printf("Ingrese un booleano %c: ", c);
    scanf("%d", &aux);
    booleano = aux;
    
    return booleano;
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
    bool b;    
    b = pedir_booleano('b');
    imprimir_booleano('b',b);
    
    return 0;
}
