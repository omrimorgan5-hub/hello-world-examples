#include <stdio.h>
#include <time.h>

int main(){
    char name[50];
    printf("Enter a name: ");
    fgets(name, sizeof(name), stdin);
    time_t now = time(NULL);
    printf("Hello, %s Welcome to the C programming language.\n", name);
    printf("Current time: %s\n", ctime(&now));
    return 0;
}
