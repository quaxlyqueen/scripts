#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>
#include <stdlib.h>

/*
void error() {
    printf("\nImproper usage: goto[ keyword ]\n"
           "    Usage:\n"
            "       goto downloads\n"
            "       goto school\n"
            "       goto portfolio\n"
            "       goto -h\n"
            "       goto --help"
          );
}

void help() {
    printf("\nQuickly navigate to saved bookmarks in the terminal.\n"
            "   Usage:\n"
            "       goto downloads\n"
            "       goto school\n"
            "       goto portfolio\n"
            "       goto -h\n"
            "       goto --help"
            );
}
*/
void validateDir(char input[]) {
    //char * bookmarksFile = strcat(getenv("HOME"), "/.bookmarks");
    char * bookmarksFile = "/home/jashton/.bookmarks";
    FILE * f = fopen(bookmarksFile, "r");
    
    // Unable to access file.
    if(f == NULL) {
        printf("Error accessing file located at %s.\n", bookmarksFile);
        return;
    }
    else {
        char cwd[PATH_MAX];
        if(getcwd(cwd, sizeof(cwd)) != NULL) {
            printf("cwd: %s\n", cwd);
        }

        char *line = NULL;
        size_t len = 0;
        ssize_t read;

        while((read = getline(&line, &len, f)) != -1) {
            printf("%s", line);
            if(strstr(line, input) != NULL) {
                printf("%s", line);
                chdir(line);
                return;
            }
        }
    }
}

int main(int argc, char *argv[]) {

    // Invalid number of arguments.
    if(argc != 2) {
        //error();
        printf("error");
        return 1;
    }

    // Display help.
    else if(strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0) printf("help");
    else validateDir(argv[1]);
}
