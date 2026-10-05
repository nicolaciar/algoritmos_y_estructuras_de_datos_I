#include <stdio.h>
// programa 5c
int main () {
    // declaración de variable
    int i;
    // estado inicial
    printf("estado inicial: i -> ");
    scanf("%d",&i);
    // sentencia de repetición
    while (i < 0) {
        i = i - 1;
        // estado intermedio
        printf("i -> %d\n", i);
    }
    // estado final
    printf("estado final: i -> %d\n", i);
}
