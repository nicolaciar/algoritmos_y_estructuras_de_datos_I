#include <stdio.h>
#include <stdbool.h>

bool pedir_booleano(void) {
    int temp;
    bool b;
    printf("Ingrese un valor booleano: ");
    scanf("%d", &temp);
    b = temp;
    return b;
}

void imprimir_bool(bool x) {
    if (x == 0) {
        printf("falso\n");
    }
    else {
        printf("verdadero\n");
    }
}

int main() {
    bool b = pedir_booleano();
    imprimir_bool(b);
}
