#include <stdio.h>

void pedir_arreglo (int n_max, int a[]) {
    int i;
    i = 0;
    printf("Ingrese los valores del arreglo de tamaño %d:\n", n_max);
    while (i < n_max) {
        printf("a[%d] = ", i);
        scanf("%d", &a[i]);
        i = i + 1;
    }
}

void imprimir_arreglo (int n_max, int a[]) {
    int i;
    i = 0;
    while(i < n_max) {
        printf("a[%d] = %d\n", i, a[i]);
        i = i + 1;    
    }
}

void imprimir_arreglo2 (int n_max, int a[]) {
    int i;
    i = 0;
    printf("[");
    while(i < n_max-1) {
        printf("%d, ", a[i]);   
        i = i + 1; 
    }
    printf("%d]\n", a[n_max-1]);
}

int main (void) {
    // también podría pedir el tamaño del arreglo
    constexpr int N = 5;    
    int a[N];
    pedir_arreglo(N, a);
    imprimir_arreglo2(N, a);
    return 0;
}
