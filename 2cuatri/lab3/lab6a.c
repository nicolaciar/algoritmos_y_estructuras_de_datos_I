#include <stdio.h>

int main () {
    // Declaración de variables
    int x,y,z,m;
    // Pregunto por estado inicial
    printf("x -> ");
    scanf("%d",&x);
    printf("y -> ");
    scanf("%d",&y);
    printf("z -> ");
    scanf("%d",&z);
    printf("m -> ");
    scanf("%d",&m);
    // estado inicial
    printf("σ0: x->%d, y->%d, z->%d, m->%d\n",x,y,z,m);

    if (x<y) {
        m = x;
    }    
    else {
        m = y;
    }
    // estado intermedio
    printf("σ1: x->%d, y->%d, z->%d, m->%d\n",x,y,z,m);
    
    if (m < z) {
        ;
    }
    else {
    m = z;
    }
    // estado final
    printf("σ2: x->%d, y->%d, z->%d, m->%d\n",x,y,z,m); 
}

// este programa asigna a m, el mayor de tres valores x, y, z
