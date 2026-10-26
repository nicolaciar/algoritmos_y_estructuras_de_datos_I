#include <stdio.h>

int suma_hasta (int n) {
    int s,i;
    s = 0;
    i = 0;
    while (i<=n) {
        s = s + i;
        i = i + 1;
    }
    return s;
}

void imprimir_resultado (int n, int r) {
    printf("La suma de 0 hasta %d es %d\n", n, r);
}

int main (void) {
    int n;
    printf("Ingrese un valor entero no negativo: ");
    scanf("%d", &n);
    
    if (n<0) {
        printf("Error, el numero ingresado es negativo\n");
    }
    else {
        imprimir_resultado(n, suma_hasta(n));
    }

    return 0;
}
