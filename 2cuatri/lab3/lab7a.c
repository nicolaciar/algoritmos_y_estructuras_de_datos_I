#include <stdio.h>
// Programa 5a
int main() {
    // Declaración de variables
    int i;
    // Estado inicial
    printf("Estado inicial: i -> ");
    scanf("%d",&i);
    // Sentencia de repetición
    while (i != 0) {
        i= i-1;
        // Estados intermedios
        printf("i -> %d\n", i);
    }
    // Estado final
    printf("Estado final: i -> %d\n", i);
}
