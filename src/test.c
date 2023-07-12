#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
    printf("%s", getenv("CWD"));
    chdir("/home/jashton/dev");
    printf("%s", getenv("CWD"));
}
