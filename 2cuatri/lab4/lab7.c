#include <stdio.h>

int sumatoria (int tam, int a[]) {
    int i, s;
    i = 0;
    s = 0;
    while (i < tam) {
        s = s + a[i];
        i = i + 1;    
    }
    return s;
}

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

void imprimir_resultado (int resultado) {
    printf("La suma de los elmentos del arreglo es %d\n", resultado);
}

int main (void) {
    constexpr int N = 5;
    int res;    
    int a[N];
    pedir_arreglo(N, a);
    res = sumatoria (N, a);
    imprimir_resultado(res);    

    return 0;
}
