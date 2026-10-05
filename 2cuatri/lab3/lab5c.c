#include <stdio.h>
//Programa 3c
int main () {
    // Declaración de variables
    int x, y;
    // Pido por estado inicial
    printf("Estado inicial:\nx -> ");
    scanf("%d",&x);
    printf("y -> ");
    scanf("%d",&y);
    // sentencia alternativa
    if (x>=y) {
        x = 0;
    }
    else if (x<=y) {
        y = 0;
    }
    // estado final
    printf("Estado final:\nx -> %d, y -> %d\n",x,y);
}
