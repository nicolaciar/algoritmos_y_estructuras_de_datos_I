#include <stdio.h>

int main () {
    // Declaración de variables
    int x,y;
    // Pregunto por estado inicial
    printf("Estado inicial:\nx-> ");
    scanf("%d", &x);
    printf("y -> ");
    scanf("%d", &y);
    // alternativa
    if (x>=y) {
        x = 0;
    }
    else if (x<=y) {
        x = 2;        
    }
    printf("Estados final:\nx -> %d, y -> %d\n",x,y);
}
