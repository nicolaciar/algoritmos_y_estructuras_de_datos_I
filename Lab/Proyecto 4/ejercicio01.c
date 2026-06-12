#include <assert.h>
#include <stdio.h>

void hola_hasta(int n) {
    int i = 0;
    while (i < n) {
        printf("Hola\n");
        i = i + 1;
    }
}

int main() {
    int x;
    printf("Ingrese un numero mayor que 0: ");
    scanf("%d", &x);
    assert(x>0);
    hola_hasta(x);
}
