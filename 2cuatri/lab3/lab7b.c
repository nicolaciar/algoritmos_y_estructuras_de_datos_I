#include <stdio.h>
// Programa 5b
int main () {
    // decalaración de variables
    int i;
    // estado inicial
    printf("Ingrese estado inicial:\ni -> ");
    scanf("%d", &i);
    // sentencia de repetición
    while (i!=0) {
        i = 0;
        // estado intermedio
        printf("i -> %d\n", i);
    }
    // estado final
    printf("Estado final: i -> %d\n",i);
}
