#include <processthreadsapi.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <windows.h>

void *mythread(void *arg) {
    while(1) {
        printf("mythread PID: %d\n", (int)GetCurrentProcessId());
        printf("mythread TID: %d\n", (int)GetCurrentThreadId());
        sleep(5);
    }
}

int main() {
    pthread_t thread;

    pthread_create(&thread, NULL, &mythread, NULL);

    while(1) {
        printf("main\tPID: %d\n", (int)GetCurrentProcessId());
        printf("main\tTID: %d\n", (int)GetCurrentThreadId());
        sleep(10);
    }
    return 0;
}