#include <stdio.h>
// programa 5c
int main () {
    // declaración de variable
    int i;
    printf("i -> ");
    scanf("%d",&i);
    // estado inicial
    printf("σ0: i -> %d\n", i);
    // sentencia de repetición
    while (i < 0) {
        i = i - 1;
        // estado intermedio
        printf("σ1: i -> %d\n", i);
    }
    // estado final
    printf("σ2: i -> %d\n", i);
}
