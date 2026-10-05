#include <stdio.h>

int main () {
    // Declaración de variables
    int x,y,z,m;
    // Pregunto por estado inicial
    printf("Estado inicial:\nx -> ");
    scanf("%d",&x);
    printf("y -> ");
    scanf("%d",&y);
    printf("z -> ");
    scanf("%d",&z);
    printf("m -> ");
    scanf("%d",&m);

    if (x<y)
        m = x;
    else if (x>=y)
        m = y;
    // Estado final
    printf("Estado final:\nx->%d, y->%d, z->%d, m->%d\n",x,y,z,m);
     
}
