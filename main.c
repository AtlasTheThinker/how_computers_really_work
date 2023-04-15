#include <stdio.h>
#include <signal.h>
#include <stdlib.h>

void break_here() {

}

int main() {
    int points = 27;
    int year = 2023;
    void *ptr = malloc(512);
    printf("points is %d and is stored at 0x%p\n", points, (void *)&points);
    printf("year is %d and is stored at 0x%p\n", year, (void *)&year);
    printf("ptr is %p and is stored at 0x%p\n", ptr, (void *)&ptr);

    break_here();

    return 0;
}