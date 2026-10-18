#include <stdio.h>
// Programa 5b
int main () {
    // decalaración de variables
    int i;
    printf("i -> ");
    scanf("%d", &i);
    // estado inicial
    printf("σ0: i -> %d\n", i);
    // sentencia de repetición
    while (i!=0) {
        i = 0;
        // estados intermedios
        printf("σ1: i -> %d\n", i);
    }
    // estado final
    printf("σ2: i -> %d\n", i);
}
