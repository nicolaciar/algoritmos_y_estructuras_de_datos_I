#include <stdio.h>

bool todos_pos (int tam, int a[]) {
    bool res;
    int i;
    i = 0;
    res = true;
    while (i < tam) {
        if (a[i] > 0) {
            ;            
        }
        else {
            res = false;        
        }
        i = i + 1;
    }
    return res;
}

bool algunos_pos (int tam, int a[]) {
    bool res;
    int i;
    i = 0;
    res = false;
    while (i < tam) {
        if (a[i] > 0) {
            res = true;            
        }
        else {
            ;        
        }
        i = i + 1;
    }
    return res;
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

int main(void) {
    constexpr int N = 5;
    bool tp, ap;    
    int a[N];
    pedir_arreglo(N, a);
    tp = todos_pos(N, a);
    ap = algunos_pos(N, a);

    if (tp) {
        printf("son todos positivos\n");
    }
    else if (ap) {
        printf("alguno es positivo\n");
    }
    else {
        printf("ninguno es positivo\n");
    }
    return 0;
}
