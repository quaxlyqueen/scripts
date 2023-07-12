#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>
#include <stdlib.h>

// Displays error message upon improper usage.
void error() {
    printf("\nImproper usage: mark { -ls | -rm [ keyword(s) ] }\n"
           "    Usage:\n"
           "        mark\n"
           "        mark -ls\n"
           "        mark -rm [ keyword ]\n"
           "        mark -h\n"
           "        mark --help"
           );
}

// Displays help message.
void help() {
    printf("\nCreate and manage persistent bookmarks in the terminal.\n"
           "Usage:\n"
           "    mark\n"
           "    mark -ls\n"
           "    mark -rm [ keyword ]\n"
           "    mark -h\n"
           "    mark --help"
           );
}

// Lists all bookmarks in file.
void list(FILE * f) {
    int c;
    printf("Bookmarks:\n");
    while(1) {
        c = fgetc(f);
        if(feof(f)) break;
        printf("%c", c);
    }
}

// Removes a bookmark from the file.
void removeMark(FILE * f, char *argv[]) {
    printf("remove mark function not implemented. received input to remove: %s.", argv[2]); // TODO: Need to implement.
}

int main(int argc, char *argv[]) {
    char * bookmarksFile = strcat(getenv("HOME"), "/.bookmarks");
    FILE * f = fopen(bookmarksFile, "a+");

    // Unable to access file.
    if(f == NULL) {
        printf("Error accessing file located at %s.", bookmarksFile);
        return 1;
    }

    // Invalid number of arguments.
    else if(argc > 2 && strcmp(argv[1], "-rm") != 0) {
        error();
        return 1;
    }

    // Append the current directory to the bookmarks file.
    else if(argc == 1) {
        char cwd[PATH_MAX];
        fprintf(f, "%s", getcwd(cwd, sizeof(cwd)));
        printf("Successfully bookmarked %s.", cwd);
    }

    // Display help.
    else if(strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0) help();

    // List bookmarks.
    else if(strcmp(argv[1], "-ls") == 0) list(f);

    else if(strcmp(argv[1], "-rm") == 0) removeMark(f, argv);

    // Invalid argument.
    else {
        error();
        return 1;
    }

    fclose(f);
    return 0;
}
