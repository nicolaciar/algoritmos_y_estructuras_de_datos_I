#include <stdio.h>
// Programa 5a
int main() {
    // Declaración de variables
    int i;
    printf("i -> ");
    scanf("%d",&i);
    // Estado inicial
    printf("σ0: i -> %d\n", i);
    // Sentencia de repetición
    while (i != 0) {
        i= i-1;
        // Estados intermedios
        printf("σ1: i -> %d\n", i);
    }
    // Estado final
    printf("σ3: i -> %d\n", i);
}
